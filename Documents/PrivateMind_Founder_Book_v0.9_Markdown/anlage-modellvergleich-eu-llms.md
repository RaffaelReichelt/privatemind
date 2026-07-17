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

## Risiken / Hinweise

- Speicherwerte sind Richtwerte; tatsächlicher Bedarf hängt von Runtime (llama.cpp, vLLM, TensorRT-LLM), Kontextlänge und Batch-Größe ab.
- Tool-Calling-Qualität bei Apertus und EuroLLM vor Kundeneinsatz mit den konkreten nanobot-Workflows validieren.
- Modelllandschaft entwickelt sich schnell; Tabelle quartalsweise mit dem Business-Plan-Review aktualisieren.
