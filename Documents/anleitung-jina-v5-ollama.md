# Anleitung: Jina Embeddings v5 herunterladen und in Ollama nutzen

**Zielplattform:** ASUS Ascent GX10 · **Stand:** Juli 2026 · **Interne Doku PrivateMind**

## Ausgangslage

- Native Ollama-Unterstützung für Jina v5 existiert noch nicht (offener Feature-Request im Ollama-Repo, Stand März 2026).
- Jina liefert offizielle GGUF-Dateien für die v5-Textmodelle (Basis: Qwen3- bzw. EuroBERT-Architektur).
- Da Ollama die Qwen3-Architektur unterstützt, funktioniert der manuelle Import über ein Modelfile in der Regel.
- **Nur GGUFs aus dem offiziellen `jinaai`-Namespace auf Hugging Face verwenden** — keine Drittquellen (Compliance!).
- Lizenz vor Deployment prüfen: v5-Checkpoints sind Apache 2.0, **v4 ist CC-BY-NC** und für die Appliance tabu.

## Schritt 1: GGUF von Hugging Face herunterladen

```bash
# Hugging Face CLI installieren (falls noch nicht vorhanden)
pip install -U "huggingface_hub[cli]"

# GGUF-Repo des Modells herunterladen – nur die gewünschte Quantisierung
hf download jinaai/jina-embeddings-v5-text-small-GGUF \
  --include "*F16*" \
  --local-dir ./jina-v5-small
```

Hinweise:
- Exakte Dateinamen vorher auf der HF-Modellseite prüfen (z. B. `...F16.gguf`, `...Q8_0.gguf`).
- Bei 677M Parametern ist F16 (~1,4 GB) auf dem GX10 problemlos.
- Quantisierung lohnt bei Embedding-Modellen kaum — der Qualitätsverlust schlägt dort stärker durch als bei LLMs. Empfehlung: F16.

## Schritt 2: Modelfile erstellen

```bash
cat > Modelfile << 'EOF'
FROM ./jina-v5-small/jina-embeddings-v5-text-small-F16.gguf
EOF
```

Embedding-Modelle brauchen kein Template und keinen System-Prompt — nur die `FROM`-Zeile.

## Schritt 3: In Ollama importieren

```bash
ollama create jina-v5-small -f Modelfile
```

## Schritt 4: Testen

```bash
curl http://localhost:11434/api/embed -d '{
  "model": "jina-v5-small",
  "input": "Angebot für Badsanierung, Musterstraße 12, Dresden"
}'
```

Kommt ein Vektor zurück, läuft alles. In der RAG-Pipeline das Modell über den `/api/embed`-Endpoint ansprechen.

## Stolperfallen

### 1. Task-Präfixe (wichtig für Retrieval-Qualität!)

Die Jina-Modelle sind instruction-aware. Bei den GGUF-Varianten müssen Präfixe **manuell** vor die Texte gesetzt werden — die GGUF-Version macht das nicht automatisch:

| Anwendungsfall | Präfix |
|---|---|
| Suchanfrage (Query) | `Query: ` |
| Dokument/Chunk (Passage) | `Passage: ` |

Das gehört fest in die Pipeline-Logik. Ohne Präfixe geht spürbar Retrieval-Qualität verloren.

### 2. Architektur-Check / Fallback llama.cpp

Falls `ollama create` mit "unsupported architecture" abbricht (möglich bei der EuroBERT-basierten Variante):
- Qwen3-basierte v5-Variante verwenden, **oder**
- direkt `llama-server` einsetzen (von Jina selbst dokumentierter Weg):

```bash
llama-server -hf jinaai/jina-embeddings-v5-text-small-GGUF:F16 \
  --embedding --pooling mean -ub 8192
```

Ergebnis: OpenAI-kompatibler Embedding-Endpoint. Für die Appliance ggf. ohnehin die bessere Wahl — llama.cpp gibt mehr Kontrolle über Pooling und Batchgrößen als Ollama.

### 3. Matryoshka-Dimensionen

Die Embeddings lassen sich nachträglich auf weniger Dimensionen kürzen (`embedding[:truncate_dim]`) ohne Neuindexierung — nützlich, um später Speicher im Vektorindex zu sparen.

## Checkliste vor Produktivbetrieb

- [ ] GGUF aus offiziellem `jinaai`-Namespace geladen
- [ ] Lizenz des konkreten Checkpoints geprüft und dokumentiert (Apache 2.0)
- [ ] Query-/Passage-Präfixe in der Pipeline implementiert
- [ ] Embedding-Dimension und Pooling-Verhalten gegen Referenzwerte (AutoModel) validiert
- [ ] Retrieval-Qualität mit eigenen deutschen Testdokumenten gemessen
