# Anlage: Modellvergleich – Europäische Open-Source-LLMs für die PrivateMind-Appliance

**Stand:** Juli 2026 · **Zielplattform:** ASUS Ascent GX10 (NVIDIA GB10 Grace Blackwell, 128 GB Unified Memory) · **Orchestrierung:** nanobot

## Übersichtstabelle

| Kriterium | Mistral Small 3.x (24B) | Apertus 70B | EuroLLM-22B | Teuken-7B |
|---|---|---|---|---|
| **Herkunft** | Mistral AI, Frankreich | Swiss AI Initiative (ETH/EPFL), Schweiz | UTTER / EU-gefördert | OpenGPT-X (Fraunhofer u. a.), Deutschland |
| **Lizenz** | Apache 2.0 | Offen (Weights, Daten & Training dokumentiert) | Offen (Apache 2.0) | Offen, kommerzielle Nutzung mit Lizenzbedingungen |
| **Parameter** | 24 Mrd. | 70 Mrd. | 22 Mrd. | 7 Mrd. |
| **Speicherbedarf BF16** | ~48 GB | ~140 GB (passt nicht) | ~44 GB | ~14 GB |
| **Speicherbedarf Q8** | ~26 GB | ~75 GB | ~24 GB | ~8 GB |
| **Speicherbedarf Q4/Q5** | ~14–17 GB | ~40–48 GB | ~12–15 GB | ~4–5 GB |
| **Empf. Betrieb auf GX10** | Q8 oder BF16 | Q4_K_M / Q5_K_M | Q8 | Q8 (falls überhaupt) |
| **Tool Calling (nanobot)** | ✅ Nativ, produktionsreif | ⚠️ Eingeschränkt, weniger ausgereift | ⚠️ Eingeschränkt | ❌ Nicht praxistauglich |
| **Deutsch-Qualität** | Sehr gut | Sehr gut | Gut (24 EU-Sprachen) | Gut (24 EU-Sprachen) |
| **Reasoning/Komplexität** | Gut (Magistral-Variante: sehr gut) | Gut | Mittel | Schwach |
| **Reifegrad** | Produktionsreif | Produktionsnah, Fokus Transparenz | Fortgeschritten | Forschung/Prototyping |
| **Rolle in der Appliance** | **Default-Modell** für alle agentischen Workflows | **Souveränitäts-Option** für maximale Transparenz-Anforderungen | Optional: Mehrsprachigkeits-Spezialist | Nicht empfohlen (nur Marketing-Wert) |

## Verkaufsargumente je Zielsegment

| Segment | Primärargument | Passendes Modell |
|---|---|---|
| Kanzleien / datensensible Dienstleister | Compliance, Transparenz, Nachvollziehbarkeit | Apertus 70B (voll dokumentiertes Training) + Mistral Small |
| Handwerksbetriebe | Effizienz, Geschwindigkeit, Zuverlässigkeit | Mistral Small (schnell, stabiles Tool Calling) |
| EU-weit tätige Kunden | Mehrsprachigkeit | EuroLLM-22B als Zusatzoption |

## Betriebsempfehlung GX10

- **Standardkonfiguration:** Mistral Small 3.x in Q8 (~26 GB) dauerhaft geladen als nanobot-Backend.
- **Parallelbetrieb möglich:** Mistral Small Q8 + Apertus 70B Q4 (~45 GB) zusammen ~70 GB → passt komfortabel in 128 GB Unified Memory inkl. KV-Cache.
- **Kontextlänge einplanen:** KV-Cache wächst mit Kontext; bei langen Dokumenten (Kanzlei-Use-Case) 20–30 GB Reserve vorhalten.
- **Beobachten:** OpenEuroLLM-Initiative – strategisch relevant, Stand Mitte 2026 noch nicht produktionsreif.

## RAG-Pipeline: Europäischer Modell-Stack

Ersatz der bisherigen Qwen-basierten Komponenten (Embedding, Vision, Keyword) durch deutsche/europäische Open-Source-Modelle.

### Komponentenvergleich

| Komponente | Bisheriger Kandidat (Qwen) | Europäische Empfehlung | Herkunft | Lizenz | Qualitätsabstand |
|---|---|---|---|---|---|
| **Dense Embedding** | Qwen3-Embedding | **Jina v5 text small** (677M, MTEB v2: 71.7, 8192 Token Kontext) | Jina AI, Berlin | Apache 2.0 | Minimal |
| **Embedding (Fallback)** | – | mxbai-embed-large (335M) | Mixedbread AI, Berlin | Apache 2.0 | Limitiert: nur 512 Token Kontext |
| **Vision (Dokumentenverständnis)** | Qwen-VL | **Mistral Small 3.x multimodal** (bereits als LLM geladen → kein Zusatzmodell nötig) | Mistral AI, Frankreich | Apache 2.0 | Gering für Geschäftsdokumente |
| **Vision (visuelle Embeddings)** | Qwen3-VL-Embedding | Jina CLIP v2 / multimodale Jina-v5-Varianten | Jina AI, Berlin | Pro Checkpoint prüfen! | Spürbar (Qwen3-VL aktuell führend) |
| **Keyword/Sparse Retrieval** | Qwen-basiert | **BM25** (modellfrei, souveränitätsneutral) | – | – | Kein Abstrich |
| **Reranking** | Qwen3-Reranker | **Jina Reranker** (0.6B Listwise) oder mxbai-rerank | Jina AI / Mixedbread, Berlin | Apache 2.0 / prüfen | Minimal |

### Empfohlene Pipeline-Architektur

```
Dokument → Chunking → Jina v5 (dense) ─┐
                    → BM25 (sparse)  ─┤→ Hybrid Retrieval (Top 50)
                                       │→ Jina Reranker (Top 5)
PDF/Bild → Mistral Small multimodal → Textextraktion → gleiche Pipeline
```

### Lizenz-Warnung (kritisch für kommerzielle Appliance)

- **Jina Embeddings v4 = CC-BY-NC-4.0** → kommerzielle Nutzung ausgeschlossen. Ausschließlich Apache-2.0-lizenzierte v5-Checkpoints einsetzen.
- Grundsatz: **Lizenz jedes einzelnen Model-Checkpoints vor Deployment prüfen und dokumentieren** (Anforderung für Kundenverträge und ggf. AI-Act-Dokumentation).

### Speicherbedarf RAG-Stack auf GX10 (zusätzlich zum LLM)

| Modell | Speicherbedarf (ca.) |
|---|---|
| Jina v5 text small (677M, FP16) | ~1,5 GB |
| Jina Reranker 0.6B | ~1,5 GB |
| BM25-Index | RAM-abhängig von Korpusgröße, kein GPU-Bedarf |
| **Summe RAG-Stack** | **~3–4 GB** → vernachlässigbar neben LLM-Budget |

### Marketing-Hinweis

"Embedding-Technologie aus Berlin" (Jina AI, Mixedbread AI) als Verkaufsargument gegenüber deutschen KMU nutzbar – ergänzt die Mistral/Apertus-Story zu einem vollständig europäischen Stack.

## Risiken / Hinweise

- Speicherwerte sind Richtwerte; tatsächlicher Bedarf hängt von Runtime (llama.cpp, vLLM, TensorRT-LLM), Kontextlänge und Batch-Größe ab.
- Tool-Calling-Qualität bei Apertus und EuroLLM vor Kundeneinsatz mit den konkreten nanobot-Workflows validieren.
- Bei visuellen Embeddings (ColPali-Stil-Retrieval) besteht ein realer Qualitätsabstand zu Qwen3-VL; für typische Geschäftsdokumente verkraftbar, aber mit eigenen Testdaten validieren.
- Modelllandschaft entwickelt sich schnell; Tabelle quartalsweise mit dem Business-Plan-Review aktualisieren.
