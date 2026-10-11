---
papersize: a4
geometry: margin=2.2cm
lang: de
colorlinks: false
header-includes:
  - \renewcommand{\familydefault}{\sfdefault}
  - \usepackage{newunicodechar}
  - \newunicodechar{≤}{\ensuremath{\leq}}
---

# Anhang: Modellvergleich Open-Source-LLMs (≤ 35B) für Chat-/RAG-Anwendungen

**Dokumenttyp:** Technische Entscheidungsgrundlage (Annex zum PrivateMind Founder Book)
**Stand:** August 2026
**Kontext:** Auswahl/Absicherung des Chat-LLM für die GX10-Appliance (128 GB Unified Memory) sowie potenzielle Enterprise-Tier-Variante auf Dell EMC (4× L40S)
**Aktuelles Produktivmodell:** Mistral Small 3.x 24B (vLLM, Apache 2.0)

---

## 1. Zielsetzung

Bewertung offener LLMs bis 35B Parameter als Kandidaten für den PrivateMind-Chatstack, mit besonderem Fokus auf:

- Kommerzielle Lizenzverträglichkeit (Analogon zur Jina v4/v5-Problematik)
- Herkunft / Data-Sovereignty-Narrativ (relevant für Kanzlei-Segment)
- Ressourcenbedarf auf vorhandener Hardware (GX10, L40S)
- Chat-/Agenten-Tauglichkeit

---

## 2. Entscheidungsmatrix

| Kriterium | Gewicht | Mistral Small 3.x (24B) | Qwen3-32B | GLM-4-32B | Gemma 3 27B | gpt-oss-20B |
|---|---|---|---|---|---|---|
| Lizenz-Sicherheit (kommerziell, unkritisch) | 25% | 5 – Apache 2.0 | 5 – Apache 2.0 | 3 – je nach Checkpoint, teils Zhipu-Eigenlizenz, prüfpflichtig | 2 – Gemma-eigene Lizenz, Einschränkungen | 5 – Apache 2.0 |
| Herkunft / Data-Sovereignty-Narrativ | 20% | 5 – EU (Frankreich) | 3 – China, aber lokal betrieben | 2 – China (Tsinghua/Zhipu-Spin-off), höherer Erklärungsbedarf ggü. Kanzleien | 4 – USA (Google) | 4 – USA (OpenAI) |
| Benchmark-Qualität Chat/Agenten | 20% | 4 | 5 | 5 | 4 | 4 |
| VRAM-/Ressourcenbedarf auf GX10 (128 GB UM) | 15% | 5 – etabliert, geringer Headroom-Bedarf | 4 – passt komfortabel | 4 – passt komfortabel | 4 – passt komfortabel | 5 – für Single-GPU/kleine Appliance ausgelegt |
| Ökosystem-Reife (vLLM/Ollama-Support, Tooling) | 10% | 5 – bereits produktiv integriert | 4 | 3 | 4 | 3 – neuer im Ökosystem |
| Migrationsaufwand (vs. Status quo) | 10% | 5 – kein Aufwand | 3 | 3 | 3 | 3 |
| **Gewichteter Gesamtscore** | 100% | **4,75** | **4,05** | **3,45** | **3,45** | **4,15** |

*Skala: 1 (schlecht) – 5 (sehr gut). Gewichtung reflektiert PrivateMind-Prioritäten: Lizenzsicherheit und Data-Sovereignty-Narrativ vor reiner Benchmark-Leistung.*

---

## 3. Kurzprofile

### Mistral Small 3.x 24B — *Status quo, Referenzmodell*
- Apache 2.0, EU-Anbieter (Mistral AI, Frankreich) — stärkstes Sovereignty-Narrativ für Kanzlei-Kunden
- Bereits produktiv via vLLM integriert, kein Migrationsrisiko

### Qwen3-32B
- Apache 2.0, starke Agenten-/Tool-Use-Fähigkeiten, gute Mehrsprachigkeit
- Herkunft China (Alibaba) — technisch bei On-Premise-Betrieb unkritisch, kommunikativ ggü. Kanzlei-Kunden ggf. erklärungsbedürftig
- Guter Zweitkandidat für internen Benchmark-Vergleich

### THUDM GLM-4-32B
- Ursprung: Tsinghua-Universität (KEG-Gruppe), kommerziell getragen von Zhipu AI / Z.ai
- Lizenz uneinheitlich zwischen Checkpoints — **vor Einsatz zwingend Einzelfallprüfung**, analog zur Jina-v4/v5-Regel
- Stärkstes Agenten-Benchmark-Profil in der Vergleichsgruppe, aber höchster Prüf-/Erklärungsaufwand

### Gemma 3 27B
- Google, eigene Gemma-Lizenz (nicht Apache/MIT) — Nutzungsbedingungen vor kommerziellem Einsatz prüfen
- Solide Allround-Qualität, aber kein klarer Vorteil ggü. bestehendem Setup

### gpt-oss-20B
- OpenAI, Apache 2.0, explizit für kompakte Single-GPU-Appliances ausgelegt — architektonisch gut zur GX10-Philosophie passend
- Jüngstes Modell im Vergleich, Ökosystem-Reife (vLLM/Ollama-Tooling) noch im Aufbau

---

## 4. Abbruchkriterien für einen Modellwechsel

Ein Wechsel/Ergänzung des Primärmodells wird **nicht** empfohlen, solange:

1. Qualitätsprobleme im Odoo-Chatbot nachweislich auf der Retrieval-Ebene liegen (Jina-Prefixe, Chunking, Reranker-Aktivierung) und nicht auf das LLM zurückzuführen sind
2. Kein dokumentierter Benchmark-Nachweis vorliegt, dass ein Alternativmodell im konkreten PrivateMind-Anwendungsfall (Kanzlei-/Handwerks-Use-Cases) signifikant besser performt
3. Der Migrationsaufwand (Testkatalog-Wiederholung, Prompt-Anpassung, Re-Evaluation) den erwarteten Qualitätsgewinn übersteigt

## 5. Risikotabelle

| Risiko | Eintrittswahrscheinlichkeit | Auswirkung | Gegenmaßnahme |
|---|---|---|---|
| Lizenzänderung bei GLM-4-Checkpoint nach Einsatz | mittel | hoch (rechtliche Neubewertung nötig) | Lizenz pro Checkpoint dokumentieren, Pinning auf feste Version |
| Kunde (Kanzlei) hinterfragt Modellherkunft China | mittel | mittel (Vertrauensverlust) | Bevorzugt EU/US-Modelle für Kanzlei-Segment kommunizieren, Herkunft transparent im Datenblatt |
| Vorschneller Modellwechsel verdeckt eigentliches Retrieval-Problem | hoch (ohne Abbruchkriterien) | hoch (Ressourcenverschwendung) | Abbruchkriterien aus Abschnitt 4 strikt einhalten |
| Ökosystem-Lücken bei neueren Modellen (gpt-oss-20B) in vLLM/Ollama | niedrig-mittel | mittel (Integrationsaufwand) | Vor Produktivsetzung Kompatibilitätstest im Sandkasten (analog GX10-Pilot) |

---

## 6. Empfehlung

**Kurzfristig:** Mistral Small 3.x 24B als Primärmodell beibehalten — höchster Gesamtscore, kein Migrationsrisiko, stärkstes Data-Sovereignty-Narrativ für das Kanzlei-Segment.

**Mittelfristig (nach Abschluss Retrieval-Debugging):** Qwen3-32B als internen Vergleichskandidaten evaluieren (zweithöchster Score, unkritische Lizenz), primär für das Handwerks-Segment, wo Data-Sovereignty-Narrativ weniger geschäftskritisch ist als reine Leistungsfähigkeit.

**Nicht empfohlen für Kanzlei-Kunden ohne weitere Prüfung:** GLM-4-32B (Lizenzunsicherheit) und Gemma 3 27B (restriktivere Lizenzbedingungen).
