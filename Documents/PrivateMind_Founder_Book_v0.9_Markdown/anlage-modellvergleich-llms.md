---
papersize: a4
geometry: margin=2.2cm
lang: de
colorlinks: false
header-includes:
  - \renewcommand{\familydefault}{\sfdefault}
---

# Anlage: Modellvergleich – Kuratierte LLMs für die PrivateMind-Appliance

**Stand:** Juli 2026 · **Zielplattform:** ASUS Ascent GX10 (NVIDIA GB10 Grace Blackwell, 128 GB Unified Memory je Gerät, 256 GB im Cluster) · **Orchestrierung:** nanobot

**Auswahllogik:** Mistral (Frankreich) bleibt die gesetzte europäische Souveränitätsoption und Standard-Empfehlung. Qwen und Llama 4 werden ergänzend kuratiert, weil sie aktuell die stärkste Tool-Calling- *und* Vision-Fähigkeit im Open-Weight-Bereich bieten — beides Grundvoraussetzung für agentische nanobot-Workflows mit Dokumenten- und Bildverständnis. Apertus, EuroLLM und Teuken sind aus der Kernauswahl entfernt (Details siehe Risiken/Hinweise).

## Übersichtstabelle

| Kriterium | Mistral Small 3.x (24B) | Mistral Large 2 / Pixtral Large (123B) | Qwen3.6-27B | Llama 4 Scout (109B, MoE) |
|---|---|---|---|---|
| **Herkunft** | Mistral AI, Frankreich | Mistral AI, Frankreich | Alibaba Cloud, China | Meta, USA |
| **Lizenz** | Apache 2.0 | Mistral Research License; kommerzieller Einsatz erfordert kostenpflichtige Mistral-Kommerziallizenz | Apache 2.0, keine Nutzungsschwellen | Llama 4 Community License (Sonderbedingungen ab 700 Mio. MAU; für PrivateMind nicht relevant) |
| **Parameter** | 24 Mrd. | 123 Mrd. (+1 Mrd. Vision-Adapter) | 27 Mrd. (dense, vollständig aktiv) | 109 Mrd. gesamt / 17 Mrd. aktiv (MoE) |
| **Speicherbedarf BF16** | ~48 GB | ~246 GB (passt nicht) | ~54 GB | ~218 GB (nur Cluster) |
| **Speicherbedarf Q8** | ~26 GB | ~124 GB | ~27–29 GB | ~115 GB |
| **Speicherbedarf Q4/Q5** | ~14–17 GB | ~62–70 GB | ~14–17 GB | ~55–60 GB |
| **Empf. Betrieb auf GX10** | Q8 oder BF16 (Einzelgerät) | Q4/Q5 auf Einzelgerät, Q8 auf Cluster | Q8 oder BF16 (Einzelgerät) | Q4/Q5 auf Einzelgerät, Q8 auf Cluster |
| **Tool Calling (nanobot)** | Nativ, produktionsreif | Nativ, sehr ausgereift | Nativ, sehr ausgereift (SWE-bench/Terminal-Bench auf Claude-Opus-Niveau; volle Unterstützung in vLLM/SGLang) | Nativ, ausgereift |
| **Vision (multimodal)** | Ja (seit 3.1) | Ja (als Pixtral Large; Mistral Large 2 selbst text-only) | Ja, nativ integrierter Vision-/Video-Encoder | Ja, nativ von Grund auf multimodal trainiert |
| **Deutsch-Qualität** | Sehr gut | Sehr gut | Gut bis sehr gut | Gut |
| **Reasoning / Komplexität** | Gut (Magistral-Variante: sehr gut) | Sehr gut | Sehr gut; Kontextfenster 262K nativ, bis 1,01 Mio. Token erweiterbar (Hybrid-Architektur mit linearer Attention) | Sehr gut, zusätzlich sehr großes Kontextfenster |
| **Reifegrad** | Produktionsreif | Produktionsreif | Sehr neu (seit April 2026), aber bereits produktionsseitig unterstützt (vLLM, SGLang) | Neu (seit April 2025), produktionsnah; MoE-fähige Runtime nötig |
| **Rolle in der Appliance** | **Default-Modell** für Einzel-GX10-Setups | **Premium-Modell** für Cluster-Setups (Premium/Enterprise-Tier) | **Alternatives Default-Modell** für Einzel-GX10-Setups mit Vision-/Langkontext-Schwerpunkt | Ergänzung für sehr lange Dokumente/Kontexte |

## Verkaufsargumente je Zielsegment

| Segment | Primärargument | Passendes Modell |
|---|---|---|
| Kanzleien / datensensible Dienstleister | Europäischer Anbieter, Compliance, planbare Lizenzkosten | Mistral Small (Einzelgerät) bzw. Mistral Large/Pixtral Large (Cluster) |
| Handwerksbetriebe | Effizienz, Geschwindigkeit, Zuverlässigkeit | Mistral Small (schnell, stabiles Tool Calling) |
| Kunden mit sehr langen Dokumenten/Verträgen | Kontextfenster bis 1 Mio. Token, Bildverständnis, läuft bereits auf Einzelgerät | Qwen3.6-27B |
| Kunden mit sehr großen Dokumentenbeständen bei geringer Latenzanforderung | Schnelle Inferenz trotz Modellgröße (MoE, nur 17 Mrd. aktiv) | Llama 4 Scout |

## Betriebsempfehlung GX10

- **Standardkonfiguration Einzelgerät:** Mistral Small 3.x in Q8 (~26 GB) dauerhaft geladen als nanobot-Default (Text und Vision); Qwen3.6-27B in Q8 (~28 GB) als gleichwertige Alternative bei Bedarf an sehr langem Kontext.
- **Standardkonfiguration Cluster:** zusätzlich Mistral Large/Pixtral Large in Q8 (~124 GB) für höhere Qualität bei anspruchsvollen Kanzlei-/Enterprise-Workloads.
- **Parallelbetrieb auf Einzelgerät möglich:** Mistral Small Q8 (~26 GB) + Qwen3.6-27B Q8 (~28 GB) zusammen ~54 GB → passt komfortabel in 128 GB Unified Memory inkl. KV-Cache, auch bei langen Kontexten.
- **Kontextlänge einplanen:** KV-Cache wächst mit Kontext; bei langen Dokumenten (Kanzlei-Use-Case) 20–30 GB Reserve vorhalten.
- **Lizenzkosten einplanen:** Mistral Large/Pixtral Large im kommerziellen Kundenbetrieb erfordert eine kostenpflichtige Mistral-Kommerziallizenz — vor Rollout in Preiskalkulation und Lieferantenverträge einbeziehen.
- **Beobachten:** OpenEuroLLM-Initiative weiterhin beobachten als mögliche künftige souveräne EU-Alternative auf Produktionsniveau, Stand Mitte 2026 noch nicht produktionsreif.

## Risiken / Hinweise

- Speicherwerte sind Richtwerte; tatsächlicher Bedarf hängt von Runtime (llama.cpp, vLLM, TensorRT-LLM), Kontextlänge und Batch-Größe ab.
- Llama 4 Scout ist ein MoE-Modell: Es muss trotz nur 17 Mrd. aktiver Parameter der volle Speicherbedarf für alle 109 Mrd. Parameter vorgehalten werden; zudem ist eine MoE-fähige Inference-Runtime erforderlich — Kompatibilität vor Rollout prüfen.
- Lizenzbedingungen vor kommerziellem Einsatz juristisch prüfen: kostenpflichtige Kommerziallizenz bei Mistral Large/Pixtral Large, Community-Lizenzbedingungen bei Llama 4 (Namensnennung, Weitergabepflichten). Qwen3.6-27B läuft unter unbeschränktem Apache 2.0.
- Qwen3.6-27B ist ein sehr junges Release (April 2026); Architektur, Quantisierungen und Tooling entwickeln sich noch schnell — vor Produktivsetzung aktuelle GGUF-/AWQ-Builds und Runtime-Kompatibilität (vLLM/SGLang) prüfen.
- Apertus, EuroLLM und Teuken sind bewusst aus der Kernauswahl ausgeschlossen: Tool-Calling ist bei allen dreien eingeschränkt bis nicht praxistauglich, Vision-Fähigkeit fehlt praktisch vollständig — beides schließt einen sinnvollen Einsatz mit einem Agenten wie nanobot aus. Für reine Text-Souveränitätsanfragen (volle Trainings-Transparenz gefordert, kein Tool-Calling/Vision nötig) bleiben sie als Sonderoption re-evaluierbar.
- Modelllandschaft entwickelt sich schnell; Tabelle quartalsweise mit dem Business-Plan-Review aktualisieren.
