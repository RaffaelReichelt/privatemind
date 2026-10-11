---
papersize: a4
geometry: margin=2.2cm
lang: de
colorlinks: false
title: "PrivateMind — Pitch Deck"
subtitle: "Lokale KI-Appliances für KMU – DSGVO-konform · Ohne Cloud · Ohne Kompromisse"
author: "Raffael Reichelt · Gründer & Geschäftsführer"
date: "Dresden, Deutschland · geplante Gründung September/Oktober 2026"
header-includes:
  - \renewcommand{\familydefault}{\sfdefault}
  - \let\maketitle\relax
---

> **Hinweis:** Dies ist die Text-Referenzversion des Pitch Decks. Die
> gestaltete Fassung liegt unter `PrivateMind_Pitch_Deck.pptx` /
> `.pdf` / `.key` (Anhang) — diese Datei hält den Inhalt textlich
> konsistent zu den übrigen Dokumenten nach.

## Das Problem

### KMU stecken im KI-Dilemma

- **Wettbewerbsdruck** – KI wird geschäftskritisch, Wettbewerber automatisieren längst ihre Prozesse.
- **Cloud-Risiko** – Sensible Mandanten- und Kundendaten verlassen bei Cloud-KI das Unternehmen.
- **Fehlende Infrastruktur** – Keine eigene IT-Abteilung, keine Expertise für eine eigene Lösung.

**45–55 %** der europäischen KMU haben laut Bitkom/DSGVO-Befragungen Datenschutzbedenken bei Cloud-KI — und benötigen eine DSGVO-konforme Alternative.

---

<!-- pagebreak -->

## Unsere Lösung

### KI dort, wo sie hingehört: im Unternehmen

PrivateMind bringt leistungsfähige KI-Modelle direkt vor Ort zum Einsatz — ohne dass Daten das Haus verlassen.

- **Lokale Appliance** – NVIDIA GB10 Grace Blackwell auf ASUS Ascent GX10, volle Rechenleistung vor Ort
- **DSGVO-konform** – alle Daten bleiben vollständig im Unternehmen, ohne Cloud-Anbindung
- **Komplettservice** – Hardware, Software und Support aus einer Hand
- **Einfachheit** – funktioniert out of the box, keine IT-Expertise nötig

---

<!-- pagebreak -->

## Das Produkt

### Vier Editionen, ein Fundament

NVIDIA GB10 Grace Blackwell Superchip · 128 GB Unified Memory je Gerät · nur 150×150×51 mm pro Einheit

| Produkt | Hardware | Nutzer | Hardware-VK (netto) | Service-Abo (netto/Mon.) |
|---|---|---|---|---|
| **Standard** | 1× ASUS Ascent GX10 | 3–8 | €3.800 | €149 |
| **Professional** | 1× ASUS Ascent GX10 | 3–8 | €4.500 | €699 |
| **Premium** | 2× ASUS Ascent GX10 (Cluster) | 8–20 | €9.500 | €699 |
| **Enterprise** | ASUS ESC4000A-E12 / Dell R760xa (4× L40S) | 20–100 | €62.500 | €1.999 |

Premium: 2er-Cluster mit 256 GB Unified Memory — unterstützt Modelle bis 405 Mrd. Parameter (4-Bit).

---

<!-- pagebreak -->

## Technologie-Stack

### Bewährte Bausteine, kuratiert kombiniert

**Hardware**

- ASUS Ascent GX10 — günstigste verfügbare GB10-Implementierung
- Enterprise-Linie alternativ auf 2U-Rack: ASUS ESC4000A-E12 oder Dell R760xa, 4× NVIDIA L40S

**Software**

- Kuratierte Modellauswahl: Mistral Small/Large (EU), Qwen3.6-27B, Llama 4 Scout — optional DeepSeek-R1/Gemma 3/Qwen3.6-35B-A3B als Nischenmodelle
- PrivateMind-Dashboard: Chat, Dokumenten-Upload, Modellverwaltung
- Ab V2: RAG-Pipeline & Audit-Log, laufende Updates

---

<!-- pagebreak -->

## Geschäftsmodell

### Zwei Wege zum gleichen Ziel

**Option A – Hardware-Kauf + Service-Abo**

- Hardware: einmaliger Kauf, €3.800–€62.500 je nach Tier
- Service-Abo: monatlich €149–€1.999 (Starter/Professional/Enterprise)
- Getrennte Abrechnung, volle Kostenkontrolle

**Option B – All-Inclusive-Bundle (Leasing)**

- Laufzeit: 36–60 Monate, Hardware + Service inklusive
- Vorteil: reine Betriebsausgabe, ohne Kapitalbindung
- Steuerlich attraktiv für KMU-Kunden

---

<!-- pagebreak -->

## Markt & Zielgruppe

### Europas KMU mit Vertraulichkeitspflicht

Primäre Zielgruppe: KMU in Europa, 10–50 Mitarbeiter

- **Kanzleien & Steuerberater** – Mandanten-/Steuergeheimnis (§ 203 StGB, § 30 AO)
- **Arzt- & Zahnarztpraxen, MVZ** – ärztliche Schweigepflicht, DSGVO
- **Ingenieurbüros & Architekten** – vertragliche NDA-Verpflichtungen
- **Unternehmensberatungen** – NDA, Mandantenvertrauen

**> €5 Mrd.** geschätzter TAM lokale KI-Infrastruktur EU (eigene, konservative Berechnung) · **25–30 % CAGR** Wachstum des europäischen KI-Markts (IDC, Gartner) · **Phase 1 → 2:** DACH zuerst, dann Niederlande/Nordics/UK

---

<!-- pagebreak -->

## Wettbewerbsvorteile

### Warum PrivateMind?

| Wettbewerber | Schwäche aus KMU-Sicht | PrivateMind-Vorteil |
|---|---|---|
| ChatGPT Enterprise / Copilot 365 / Gemini | Cloud-basiert, DSGVO-kritisch | Lokale Datenhaltung |
| Ollama / LocalAI / LM Studio | Kein Support-SLA, IT-Expertise nötig | Schlüsselfertig, mit Support |
| NVIDIA DGX Spark (direkt) | Kein Service, teurer als ASUS GX10 | Service + günstigere Hardware |

Differenzierung: **Datensouveränität** · **Zero-Expertise-Betrieb** · **Laufende Betreuung** · **NVIDIA-Ökosystem** · **Europäische Werte**

---

<!-- pagebreak -->

## Traktion & Meilensteine

### Von der Idee zur Umsetzung

- **Demo-Gerät** – ASUS Ascent GX10 (4 TB) bereits vorhanden und im Einsatz
- **Website** – auf Odoo 18.0 erstellt, Launch steht kurz bevor
- **Förderanträge** – Gründungszuschuss (§ 93 SGB III), InnoStartBonus Sachsen

| Zeitraum | Ziel |
|---|---|
| 2026 | GZ-Bewilligung, GmbH-Gründung, 3–5 Pilotkunden, mind. 2 zahlend |
| 2027 | Englischsprachige Website live, europäische Expansion, 10 aktive Kunden |
| 2028 | Break-even operativ (~17–25 aktive Kunden), erste Mitarbeiter |

---

<!-- pagebreak -->

## Team

### Raffael Reichelt — Gründer & Geschäftsführer

- **Erfahrung:** über 30 Jahre Softwareentwicklung, Architektur, Projekt- und Teamleitung
- **Stationen:** 13 Jahre HSE24/hot networks AG (Head of IT Development Services), zuletzt ConfigPoint (bis 2026)
- **Rollen:** Entwickler, Architekt, Consultant, Projekt- & Teamleiter, Technologieberater
- **Motivation:** „KMU brauchen lokale KI — ohne Kompromisse.“

---

<!-- pagebreak -->

## Finanzplan

### Solide kalkuliert, schnell tragfähig

- **€6.700** Gründungskosten einmalig — Notar, Handelsregister, Rechts-/Steuerberatung, Marketing
- **€11.500** monatliche Fixkosten, davon €9.600 GF-Vollkosten (€5.000 netto Gründergehalt)
- **Q3/Jahr 2** operativer Break-even bei ~17 Professional- bzw. 20–25 Mischkunden
- **€63k–180k** Umsatzprognose Jahr 1 — konservativ bis optimistisch

Website und Demo-Gerät sind bereits vorhanden — kein zusätzlicher Investitionsbedarf zum Start.

---

<!-- pagebreak -->

## Finanzierungsstrategie

### Eigenkapital & Förderdarlehen — kein Investor

| Quelle | Betrag | Empfänger |
|---|---|---|
| Stammkapital (Eigenkapital) | €25.000 | GmbH |
| KfW ERP-Gründerkredit StartGeld | €100.000 | GmbH |
| SAB Mikrodarlehen Sachsen | €20.000 | GmbH |
| Gründungszuschuss (15 Mon., ca.) | €16.500 | Gründer persönlich |
| InnoStartBonus Sachsen (in Prüfung) | €12.600 | Gründer persönlich |

Kapitalbedarf Jahr 1: €137.550 — vollständig gedeckt (Puffer €7.450), ohne externen Investor.

---

<!-- pagebreak -->

## Vision & Ziele

### Der Weg zum führenden Anbieter

**1 · 2026–2027 · Kurzfristig** — 3–5 Pilotkunden (mind. 2 zahlend) bis Ende 2026. Europäische Expansion, Ziel: 10 aktive Kunden Ende 2027.

**2 · 2028–2029 · Mittelfristig** — Operativer Break-even, erste Mitarbeiter. Aufbau eines Reseller-/MSP-Partnernetzwerks, Team wächst auf 4–6 Personen.

**3 · 2030+ · Langfristig** — Führender Anbieter lokaler KI-Lösungen im DACH-Raum. Nachhaltiges, profitables Wachstum — Kapital nur bei Bedarf.

---

<!-- pagebreak -->

## Starke Argumente

### Was PrivateMind stark macht

- **Wiederkehrende Einnahmen** – Abo-Modell kombiniert mit Hardware-Marge
- **Wachstumsmarkt** – KI im KMU-Segment wächst um ~25–30 % CAGR
- **DSGVO-konform** – klarer USP im europäischen Markt
- **Geringes Risiko** – kein Investorendruck, Runway über 12 Monate
- **Seltene Kompetenz** – 30 Jahre Software- und Kundenerfahrung in einer Person

„Die KI-Abteilung, die sich jedes KMU leisten kann.“

---

<!-- pagebreak -->

## Wir suchen

### Gemeinsam KI zugänglich machen

- **Pilotkunden** für die ersten Projekte im DACH-Raum
- **Vertriebspartner** mit Erfahrung im KMU-Umfeld
- **Mentoren** für strategische Unterstützung (dresden|exists, Silicon Saxony)

„Die KI-Abteilung, die sich jedes KMU leisten kann.“

**Kontakt:** raffael@privatemind.eu · [privatemind.eu](https://privatemind.eu) · Dresden, Deutschland
