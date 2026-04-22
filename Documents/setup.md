### 1. Docker‑Compose: Ollama + vLLM parallel auf dem GX10

Minimal‑Skeleton, das du anpassen kannst (Pfad, Domain, Modelle):

```yaml
version: "3.9"

services:
  ollama:
    image: ollama/ollama:latest
    container_name: ollama
    restart: unless-stopped
    ports:
      - "11434:11434"          # nur intern freigeben, wenn möglich
    volumes:
      - ollama_data:/root/.ollama
    deploy:
      resources:
        reservations:
          devices:
            - capabilities: ["gpu"]

  vllm:
    image: vllm/vllm-openai:latest
    container_name: vllm
    restart: unless-stopped
    command:
      - "--model=/models/qwen2.5-7b-instruct"
      - "--dtype=bf16"
      - "--max-model-len=32768"
      - "--gpu-memory-utilization=0.9"
    environment:
      - VLLM_WORKER_USE_FLASH_ATTENTION=1
    ports:
      - "8000:8000"            # OpenAI-kompatible API, nur intern nutzen
    volumes:
      - /srv/models/qwen2.5-7b-instruct:/models/qwen2.5-7b-instruct:ro
    deploy:
      resources:
        reservations:
          devices:
            - capabilities: ["gpu"]

  proxy:
    image: traefik:v3.0
    container_name: proxy
    restart: unless-stopped
    ports:
      - "80:80"
      - "443:443"
    volumes:
      - /var/run/docker.sock:/var/run/docker.sock:ro
      - ./traefik/traefik.yml:/traefik.yml:ro
      - ./traefik/acme.json:/acme.json
    depends_on:
      - privatemind-api

  privatemind-api:
    image: privatemind/api:latest   # dein Build
    container_name: privatemind-api
    restart: unless-stopped
    environment:
      - LLM_FAST_BASE_URL=http://ollama:11434
      - LLM_FAST_MODEL=qwen2.5
      - LLM_DEEP_BASE_URL=http://vllm:8000
      - LLM_DEEP_MODEL=qwen2.5-7b-instruct
    depends_on:
      - ollama
      - vllm
    networks:
      - internal

volumes:
  ollama_data:

networks:
  internal:
    driver: bridge
```

Idee:

- **Ollama**: bleibt wie gehabt, Port 11434, GGUF‑Modelle  
- **vLLM**: OpenAI‑API auf Port 8000, Qwen‑HF‑Modell  
- **PrivateMind‑API**: spricht beide an, aber selbst nur über Proxy erreichbar  
- **Proxy**: einziger Entry‑Point nach außen (HTTPS, Auth etc.)

---

### 2. PrivateMind: zwei Backends gleichzeitig nutzen

#### 2.1. Konfiguration über ENV

Beispiel‑ENV‑Variablen (wie oben im Compose):

- **Schnelles Backend (Ollama):**

  - `LLM_FAST_BASE_URL=http://ollama:11434`
  - `LLM_FAST_MODEL=qwen2.5`

- **Deep Backend (vLLM):**

  - `LLM_DEEP_BASE_URL=http://vllm:8000`
  - `LLM_DEEP_MODEL=qwen2.5-7b-instruct`

#### 2.2. Routing‑Logik im Code (Pseudocode)

Angenommen, du hast eine interne LLM‑Abstraktion:

```python
class LLMClient:
    def __init__(self, fast_cfg, deep_cfg):
        self.fast = FastBackend(**fast_cfg)
        self.deep = DeepBackend(**deep_cfg)

    def chat(self, request):
        if request.mode == "fast":
            return self.fast.chat(request)
        if request.mode == "deep":
            return self.deep.chat(request)

        # Auto-Heuristik:
        if len(request.prompt) < 800 and not request.requires_high_accuracy:
            return self.fast.chat(request)
        else:
            return self.deep.chat(request)
```

- **`fast`** → spricht Ollama an (Ollama‑API)  
- **`deep`** → spricht vLLM an (OpenAI‑API)  

Du kannst:

- im UI einen **Modus‑Schalter** anbieten („Schnell“ vs. „Präzise“)  
- oder intern nach Kontextlänge/Use‑Case entscheiden (z. B. RAG → immer vLLM)

#### 2.3. API‑Adapter

- **Ollama‑Adapter**:  
  - POST `/api/chat` oder `/api/generate`  
  - eigenes JSON‑Format

- **vLLM‑Adapter**:  
  - POST `/v1/chat/completions`  
  - OpenAI‑kompatibel

Du kapselst beide in je einer Klasse und reichst nach außen nur eine einheitliche `chat()`‑Signatur durch.

---

Wenn du möchtest, können wir als nächsten Schritt:

- das **vLLM‑Kommando** exakt auf deine Qwen‑Modelle zuschneiden (inkl. Pfade, BF16, Multi‑GPU), oder  
- die **PrivateMind‑LLM‑Abstraktion** konkret ausprogrammieren (z. B. in FastAPI/Python).