# PrivateMind GmbH — Businessplan

*Version 2.0 — Internes Steuerungsdokument, Stand: April 2026*
*Erstellt von: Raffael (Gründer)*

> **Hinweis zur Nutzung:** Dieses Dokument dient als internes Steuerungsinstrument. Es enthält operative Ziele, Entscheidungsgrundlagen und Planungsannahmen, die regelmäßig überprüft und aktualisiert werden. Zahlen sind Planwerte auf Basis verfügbarer Marktdaten (Stand April 2026) und müssen durch Steuerberater und Rechtsanwalt validiert werden.

---

## Inhaltsverzeichnis

1. [Executive Summary](#1-executive-summary)
2. [Problem & Marktchance](#2-problem--marktchance)
3. [Marktanalyse](#3-marktanalyse)
4. [Produkt & Dienstleistung](#4-produkt--dienstleistung)
5. [Geschäftsmodell & Preisgestaltung](#5-geschäftsmodell--preisgestaltung)
6. [Marketing & Vertrieb](#6-marketing--vertrieb)
7. [Organisation & Aufbau](#7-organisation--aufbau)
8. [Finanzplanung](#8-finanzplanung)
9. [Risikoanalyse](#9-risikoanalyse)
10. [Meilensteine & Zeitplan](#10-meilensteine--zeitplan)
11. [Fördermöglichkeiten](#11-fördermöglichkeiten)
12. [Offene Punkte & Nächste Schritte](#12-offene-punkte--nächste-schritte)

* [Anhang](#anhang)

---

## 1. Executive Summary

### Das Unternehmen

**PrivateMind GmbH** bringt leistungsfähige KI-Infrastruktur dorthin, wo sie für europäische Unternehmen hingehört: ins eigene Haus. Als schlüsselfertige Appliance, die lokal läuft, Daten im Unternehmen hält und ohne Cloud-Abhängigkeit funktioniert.

**Rechtsform:** GmbH (in Gründung)
**Sitz:** Dresden, Sachsen, Deutschland
**Gründer:** Raffael — Softwareentwickler mit jahrzehntelanger Praxiserfahrung in der IT-Branche
**Zielmarkt:** KMU in Europa, 10–250 Mitarbeiter, primär DACH, Niederlande, Nordics, UK
**Sprache (extern):** Englisch als primäre Geschäftssprache

### Das Angebot

PrivateMind liefert eine vollständige KI-Lösung aus einer Hand:

- **Hardware:** Vorkonfigurierte KI-Appliance auf Basis des NVIDIA GB10 Grace Blackwell Superchips (ASUS Ascent GX10) — leistungsstärkstes Kompaktsystem für lokale LLM-Inferenz auf dem Markt
- **Software:** Eigenentwickeltes Dashboard, vorinstallierter NVIDIA-Stack, kuratierte LLM-Auswahl, RAG-Integration
- **Service:** Einrichtung, Konfiguration, laufende Updates, technischer Support — alles inklusive im Abo

### Die Kernthese

Europäische KMU brauchen KI, dürfen aber ihre Daten nicht in die Cloud geben. Bestehende Lösungen sind entweder unsicher (Cloud), zu komplex (Open-Source-Tools) oder zu teuer (Enterprise-Systeme). PrivateMind schließt diese Lücke als **"KI-Abteilung as a Service"** — das erste Komplettangebot für DSGVO-konforme, lokal betriebene KI ohne IT-Expertise auf Kundenseite.

### Geschäftsmodell

Drei Hardware-Stufen (Standard / Professional / Premium) kombiniert mit einem gestaffelten monatlichen Service-Abo (€149–€999/Monat). Alternativ: All-Inclusive-Bundles (€299–€999/Monat, 36 Monate). Der strategische Wert liegt in den wiederkehrenden Abo-Einnahmen.

### Finanzieller Ausblick (Planwerte)

| Kennzahl | Jahr 1 | Jahr 2 | Jahr 3 |
|---|---|---|---|
| Kunden (kumuliert, konservativ) | 10 | 30 | 70 |
| Monthly Recurring Revenue (MRR, Ende Periode) | ~€2.500 | ~€10.000 | ~€25.000 |
| Jahresumsatz (Marge + Abo + Setup) | ~€34.000 | ~€150.000 | ~€400.000 |
| Break-even | — | Laufe Jahr 2 | Erreicht |

*Das erste Jahr ist bewusst eine Investitions- und Validierungsphase.*

### Strategische Prioritäten 2026

1. GmbH gründen & Gründungszuschuss sichern
2. Demo-Gerät beschaffen, Dashboard-MVP entwickeln
3. 3–5 Pilotkunden in DACH gewinnen und Referenzen aufbauen
4. Englischsprachige Website und Vertriebsmaterialien live schalten
5. Erste europäische Expansion vorbereiten

---

## 2. Problem & Marktchance

### Das strukturelle Problem

KMU in ganz Europa stehen vor einem KI-Dilemma, das sich in drei Dimensionen aufspannt:

**Dimension 1: KI ist nicht mehr optional**
Der Einsatz von KI-Tools hat sich in vielen Branchen von einem Wettbewerbsvorteil zu einer Wettbewerbsvoraussetzung entwickelt. Unternehmen, die KI nicht einsetzen, verlieren bei Effizienz, Reaktionsgeschwindigkeit und Servicequalität gegenüber Wettbewerbern. Mitarbeiter erwarten KI-gestützte Werkzeuge, Kunden erwarten intelligente Services.

**Dimension 2: Cloud-KI ist für viele KMU keine Option**
Die meistgenutzten KI-Dienste (ChatGPT/OpenAI, Microsoft Copilot, Google Gemini) sind Cloud-basiert. Sensible Unternehmensdaten — Verträge, Mandantendaten, Patientendaten, Finanzdaten, strategische Unterlagen, interne Kommunikation — verlassen bei jeder Anfrage das Unternehmen und werden auf fremden Servern verarbeitet. Das ist für eine klar definierbare Gruppe von KMU aus regulatorischen, rechtlichen oder ethischen Gründen inakzeptabel:

- **Rechtlich:** DSGVO Art. 28 (Auftragsverarbeitung), branchenspezifische Geheimhaltungspflichten (§ 203 StGB für Anwälte, Ärzte, Berater), Steuergeheimnis (§ 30 AO)
- **Regulatorisch:** DORA (Finanzsektor), NIS2-Richtlinie, ISO 27001-Anforderungen
- **Vertraglich:** Geheimhaltungsvereinbarungen (NDAs) mit Kunden schließen Cloud-Verarbeitung oft aus

**Dimension 3: Eigenentwicklung überfordert KMU**
KMU-typisch: keine dedizierte IT-Abteilung, keine ML-Expertise, keine Ressourcen für Infrastruktur-Projekte. Die technischen Hürden für den Betrieb eines eigenen LLM-Systems sind real: Hardware-Beschaffung, OS-Konfiguration, Modell-Deployment, Netzwerksicherheit, laufende Updates und Modelloptimierung erfordern spezifisches Know-how, das in KMU schlicht nicht vorhanden ist.

### Die Marktlücke

Die aktuelle Angebotslandschaft lässt eine spezifische KMU-Gruppe systematisch im Stich:

```
Datenschutzbedarf  │ HOCH │ Kanzleien, Arztpraxen, Beratungen, Ingenieurbüros
                   │      │
                   │      │  → Cloud nicht möglich
                   │      │  → Enterprise zu teuer
                   │      │  → Self-hosted zu komplex
                   │      │
                   │      │  ← HIER IST PRIVATEMIND
                   │ NIEDRIG ──────────────────────────────────────────────────►
                                               Ressourcen für IT-Infrastruktur
```

Es gibt derzeit kein Angebot, das gleichzeitig erfüllt:
- ✅ Lokal betrieben (kein Cloud-Datentransfer)
- ✅ Schlüsselfertig (keine IT-Expertise nötig)
- ✅ Laufend betreut (Updates, Support, Weiterentwicklung)
- ✅ KMU-Preisrahmen (unter €1.000/Monat all-in)
- ✅ Unternehmensqualität der KI-Modelle (70B+ Parameter)

### Die Chance

**PrivateMind ist die KI-Abteilung, die sich KMU nicht leisten können — als monatlicher Service.**

Der Zeitpunkt ist ideal: Die Hardware-Generation des NVIDIA GB10 Grace Blackwell ermöglicht erstmals Enterprise-Grade LLM-Inferenz auf Desktop-Hardware. Was vor 18 Monaten noch ein Rechenzentrum benötigte, passt heute in eine Schachtel von 15×15×5 cm und verbraucht 240 Watt. Das technologische Fenster öffnet sich gerade — PrivateMind kann als First Mover diesen Markt definieren.

---

## 3. Marktanalyse

### 3.1 Makroumfeld

**KI-Adoption in europäischen KMU — der Stand 2026**

Der europäische KI-Markt befindet sich in einer kritischen Wachstumsphase. Laut Eurostat und Studien von Bitkom/McKinsey gelten folgende Eckdaten als Planungsgrundlage (Stand Q1 2026):

| Kennzahl | Wert | Quelle/Basis |
|---|---|---|
| KMU in der EU (gesamt) | ~23 Mio. | Eurostat 2024 |
| KMU in DACH (DE+AT+CH) | ~3,8 Mio. | Destatis, WKO, Bundesamt CH |
| Anteil KMU, die KI-Tools aktiv nutzen (EU) | ~18–22% | Bitkom 2025, McKinsey Europe |
| Anteil KMU mit Datenschutzbedenken bei Cloud-KI | ~45–55% | Bitkom/DSGVO-Befragungen |
| Jährliches Wachstum europäischer KI-Markt | ~25–30% CAGR | IDC, Gartner |
| Geschätzte TAM lokale KI-Infrastruktur EU | >€5 Mrd. | Eigenberechnung, konservativ |

**Regulatorischer Rückenwind:** Der EU AI Act (in Kraft seit August 2024, Anwendungsphasen bis 2027) und die weiterhin strenge DSGVO-Durchsetzung (Bußgelder 2024 in Rekordhöhe von über €1,6 Mrd. EU-weit) verstärken den Druck auf Datensouveränität. Lokale KI-Infrastruktur ist kein Nice-to-have — sie wird zur Compliance-Anforderung.

### 3.2 Zielmarktsegmente

**Primärsegment: Datenschutzsensible Freiberufler & kleine KMU (10–50 MA)**

Das wirtschaftlich attraktivste Primärsegment sind Unternehmen mit gesetzlicher oder vertraglicher Geheimhaltungspflicht:

| Branche | Charakteristik | Datenschutz-Treiber | Zahlungsbereitschaft |
|---|---|---|---|
| Kanzleien (Rechtsanwälte, Notare) | 2–20 MA, hohe Marge, digitalisierungsbereit | § 203 StGB, Mandantengeheimnis | Hoch (€500–€1.000/Mo.) |
| Steuerberater & Wirtschaftsprüfer | 3–30 MA, Fachkräftemangel treibt Automatisierung | Steuergeheimnis § 30 AO | Hoch |
| Arztpraxen, Zahnarztpraxen, MVZ | 5–50 MA, Patientendaten extrem sensibel | KDG, DSGVO, Schweigepflicht | Mittel–Hoch |
| Ingenieurbüros, Architekten | 5–50 MA, proprietäre Konstruktionsdaten | NDA-Verpflichtungen | Mittel |
| Unternehmensberatungen | 2–30 MA, Strategiedaten | NDA, Mandantenvertrauen | Hoch |
| Finanzdienstleister (unabhängig) | 2–20 MA | DORA, MiFID II | Hoch |

**Charakteristik des Idealkunden:**
- Regelmäßige Arbeit mit vertraulichen Dokumenten (Verträge, Gutachten, Patientenakten)
- 1–5 Mitarbeiter, die täglich mit KI-gestütztem Schreiben, Zusammenfassen oder Recherchieren profitieren würden
- Entscheidungsträger ist der Inhaber/Geschäftsführer (kurze Vertriebszyklen)
- Budget für Software/IT vorhanden, aber kein IT-Personal

**Sekundärsegment: Mittelstand mit Datensicherheitsbedarf (50–250 MA)**

Größere Mittelständler, die einzelne Abteilungen (Legal, Finanzen, Entwicklung, HR) mit lokaler KI ausstatten wollen, ohne die zentrale IT zu belasten. Hier ist das Premium-Bundle relevant. Längere Vertriebszyklen, aber größere ARR pro Kunde.

**Tertiärsegment: IT-Dienstleister als Reseller**

IT-Systemhäuser und MSPs, die ihren KMU-Kunden eine White-Label-KI-Lösung anbieten wollen. Kanalpartner-Modell ab Jahr 2.

### 3.3 Serviceable Addressable Market (SAM)

Konservative SAM-Berechnung für den europäischen Fokusmarkt:

```
Annahmen:
- DACH: ~3,8 Mio. KMU, davon ~15% datenschutzsensible Branchen = ~570.000
- NL + Nordics + UK: Vergleichbare Dichte, geschätzt ~400.000 relevante KMU
- Gesamt adressierbarer Markt (SAM): ~970.000 KMU

Konversionsannahme:
- Realistische Durchdringung 5 Jahre: 0,1% des SAM = ~970 Kunden
- Ø Jahresumsatz pro Kunde (Hardware + Setup + Abo): ~€8.000
- SAM-Wert für PrivateMind (5 Jahre): ~€7,8 Mio. Umsatz kumuliert

Serviceable Obtainable Market (SOM) — Ziel Jahr 3:
- 70–150 Kunden × €8.000 Ø = €560.000 – €1.200.000 ARR
```

### 3.4 Wettbewerbsanalyse

**Direkte & indirekte Wettbewerber**

| Wettbewerber | Kategorie | Stärken | Schwächen aus KMU-Sicht | PrivateMind-Vorteil |
|---|---|---|---|---|
| OpenAI / ChatGPT Enterprise | Cloud-KI | Beste Modellqualität, große Bekanntheit | Daten verlassen das Unternehmen, DSGVO-kritisch, Preise steigen | Lokale Datenhaltung |
| Microsoft Copilot 365 | Cloud-KI, tief integriert | Office-Integration, Markenvertrauen | Cloud-abhängig, Bundling mit M365, keine Kontrolle über Modelle | Unabhängigkeit, Modellfreiheit |
| Google Gemini for Workspace | Cloud-KI | Stärke bei Dokumenten/Gmail | Cloud, Datenschutzbedenken bei Google-Produkten | Datensouveränität |
| Ollama / LocalAI / LM Studio | Open-Source, lokal | Kostenlos, flexibel | Keine Support-SLA, erfordert Linux/Docker-Kenntnisse, kein GUI für Nicht-Techniker | Schlüsselfertig, Support |
| NVIDIA DGX Spark (direkt) | Hardware für Entwickler | Gleiche Hardware, NVIDIA-Marke | Kein Service, kein KMU-Support, teurer als ASUS GX10 | Service + günstigere Hardware |
| Dell/HP/Lenovo GB10-Systeme | Hardware-Anbieter | Hersteller-Support | Kein KI-spezifischer Service, höherer Hardware-Preis | Spezialisierung, KMU-Fokus |
| Lokale IT-Systemhäuser | IT-Dienstleister | Regionale Präsenz, Kundenvertrauen | Individuallösungen = teuer, kein standardisiertes KI-Angebot, fehlendes LLM-Know-how | Standardisiert, LLM-spezialisiert |
| **PrivateMind** | **KI-Appliance + Service** | **Komplett aus einer Hand, lokal, KMU-Preis** | — | — |

**Positionierungsmatrix:**

```
                    LOKAL / DATENSICHER
                          │
          Open-Source      │      PrivateMind ←
          (Ollama etc.)    │
                          │
KOMPLEX ─────────────────┼───────────────────── EINFACH
(IT-Expertise nötig)     │           (schlüsselfertig)
                          │
          Enterprise       │      Cloud-KI
          (Hochpreisig)    │      (OpenAI, Copilot)
                          │
                    CLOUD / DATEN EXTERN
```

PrivateMind besetzt den einzigen Quadranten, in dem kein starker Wettbewerber aktiv ist: **lokal + einfach**.

### 3.5 Differenzierungsmerkmale (Verteidigungsposition)

1. **Datensouveränität by Design** — Kein Datentransfer, keine Cloud-Abhängigkeit, DSGVO-konform out of the box. Dieses Argument ist in regulierten Branchen nicht überwindbar.
2. **Zero-Expertise-Betrieb** — Der Kunde muss keine KI-Kenntnisse haben. Plug-in, einschalten, nutzen.
3. **Laufende Betreuung** — Nicht kaufen und allein gelassen werden. Updates, Modelloptimierungen und Support sind Teil des Produkts.
4. **NVIDIA-Ökosystem** — Gleicher CUDA/TensorRT-LLM-Stack wie in Rechenzentren. Keine Kompromisse bei Modellqualität.
5. **Europäische Werte** — Ein deutsches Unternehmen, das europäisches Datenschutzrecht nicht als Marketingargument, sondern als Grundprinzip behandelt.
6. **Kosteneffizienz** — Durch ASUS GX10 als günstigstes GB10-System am Markt: bestmögliche Hardware zu niedrigstem Preis, weitergegeben an den Kunden.

---

## 4. Produkt & Dienstleistung

### 4.1 Hardware-Plattform: ASUS Ascent GX10

Alle PrivateMind-Appliances basieren auf dem ASUS Ascent GX10, der günstigsten verfügbaren Implementierung des NVIDIA GB10 Grace Blackwell Superchips.

**Technische Eckdaten (pro Gerät):**

| Merkmal | Spezifikation | Relevanz für PrivateMind |
|---|---|---|
| Chip | NVIDIA GB10 (Grace Blackwell) | Aktuelle Generation, Nachfolger der A100-Ära |
| GPU | Blackwell B1, 1 PFLOP FP4 KI-Leistung | Ausreichend für 70B-Modelle in Echtzeit |
| RAM | 128 GB LPDDR5X Unified Memory | CPU & GPU teilen sich Speicher — entscheidend für große Modelle |
| Speicher | 1 TB / 2 TB / 4 TB NVMe SSD | Modelle benötigen 40–80 GB; 1 TB = 2–3 Modelle gleichzeitig vorgehalten |
| Netzwerk | ConnectX-7 200Gbps, 10GbE, Wi-Fi 7 | Hochgeschwindigkeits-Clustering und Netzwerkintegration |
| Clustering | 2 Geräte via QSFP-Kabel verbindbar → 256 GB Speicherpool | Ermöglicht 200B+ Parameter Modelle |
| Formfaktor | 150 × 150 × 51 mm, 1,48 kg | Passt auf jeden Schreibtisch, kein Serverraum nötig |
| Stromverbrauch | 240W (USB-C Netzteil) | Wie ein Gaming-PC — normale Büroinfrastruktur ausreichend |
| Betriebssystem | NVIDIA DGX OS (Ubuntu 22.04-basiert) | Vollständiger NVIDIA-Software-Stack vorinstalliert |
| Kühlsystem | Aktiv, lüftergesteuert | Leise genug für Büroumgebung |

**Inferenzleistung (Richtwerte für Planungszwecke):**

| Modell | Parameter | Format | Tokens/Sekunde (ca.) | Praxisbedeutung |
|---|---|---|---|---|
| Llama 3.3 Instruct | 70B | FP16 | ~25–35 tok/s | Flüssige Konversation, Enterprise-Qualität |
| Llama 3.1 | 405B | INT4 | ~8–15 tok/s | Leistungsfähigstes Open-Weight-Modell |
| DeepSeek-R1 | 70B | FP16 | ~25–35 tok/s | Stark bei Reasoning, Analyse |
| Qwen2.5 | 72B | FP16 | ~25–35 tok/s | Mehrsprachigkeit, Dokumente |
| Gemma 3 | 27B | FP16 | ~60–80 tok/s | Schnell, gut für Zusammenfassungen |

*Cluster (2× GX10): verdoppelt Durchsatz, ermöglicht 200B FP16 / 405B INT4.*

**Warum ASUS — und nicht NVIDIA direkt oder andere OEMs:**

ASUS ist der einzige OEM, der den GX10 in drei SSD-Konfigurationen anbietet und dabei preislich deutlich unter dem NVIDIA DGX Spark liegt (bis zu €1.750 günstiger bei gleicher Chip-Performance). Entscheidend: ASUS bietet keinen dedizierten Support für dieses Gerät — genau hier liegt einer der wichtigsten USPs von PrivateMind.

**Backup-Lieferanten:** Dell Pro Max GB10, Lenovo PGX, HP ZGX — gleiche Hardware, höherer Preis, aber mit Hersteller-Support (relevant als Backup bei Lieferengpässen).

### 4.2 Produktlinien

|  | **PrivateMind Standard** | **PrivateMind Professional** | **PrivateMind Premium** |
|---|---|---|---|
| Hardware | 1× ASUS Ascent GX10 | 1× ASUS Ascent GX10 | 2× ASUS Ascent GX10 (Cluster) |
| SSD | 1 TB | 2 TB | 2× 2 TB |
| Unified Memory | 128 GB | 128 GB | 256 GB |
| Max. Modellgröße | 70B (FP16), 200B (4-bit) | 70B (FP16), 200B (4-bit) | 200B (FP16), 405B (4-bit) |
| Zielgruppe | Kleine Kanzleien, Praxen, Einzelkämpfer | Mittelstand, Teams, mehrere Nutzer | Große Teams, höchste Modellqualität |
| Gleichzeitige Nutzer (ca.) | 3–8 | 3–8 | 8–20 |
| **Hardware-EK (ca.)** | **~€3.050** | **~€3.550** | **~€7.100** |
| **Hardware-VK (ca.)** | **€3.800** | **€4.500** | **€9.500** |
| **Hardware-Marge** | **~€750** | **~€950** | **~€2.400** |

### 4.3 Software-Stack (eigenentwickelt & kuratiert)

**Basis-Stack (mitgeliefert):**
- NVIDIA DGX OS mit CUDA 13, cuDNN, TensorRT-LLM — vollständiger ML-Stack
- Docker + container-basierte Modell-Isolation
- Ollama-kompatibles Serving-Layer für standardisierte Model-API

**PrivateMind Dashboard (Eigenentwicklung — MVP Priorität):**
Das Dashboard ist das primäre Differenzierungsmerkmal auf Software-Seite. Zielgruppe: nicht-technische Nutzer.

| Modul | Funktionsumfang | MVP (Monat 4) | V2 (Monat 9) |
|---|---|---|---|
| Chat-Interface | Multi-Modell-Chat, Verlauf, Kontextfenster-Anzeige | ✅ | — |
| Dokument-Upload | PDF/Word/Text hochladen, ins Kontext einbinden | ✅ | — |
| Modellverwaltung | Aktive Modelle anzeigen, wechseln, deaktivieren | ✅ | — |
| System-Monitor | CPU/GPU-Auslastung, Speicher, Temperatur | ✅ | — |
| RAG-Pipeline | Dokumentenindex aufbauen, vektorbasierte Suche | — | ✅ |
| Nutzerverwaltung | Multi-User, Rollen (Admin/Nutzer) | — | ✅ |
| Update-Center | Modell-Updates, System-Updates (genehmigen/installieren) | — | ✅ |
| Audit-Log | Wer hat was gefragt (für Compliance-Nachweis) | — | ✅ |

**LLM-Auswahl — Kurationslogik:**
Nicht jedes verfügbare Modell wird angeboten. PrivateMind kuratiert eine schlanke, getestete Auswahl:

| Modell | Stärke | Empfohlen für |
|---|---|---|
| Llama 3.3 70B Instruct | Allzweck, beste Balance | Standard-Empfehlung für alle |
| DeepSeek-R1 70B | Reasoning, Analyse, Argumentation | Kanzleien, Beratungen |
| Qwen2.5 72B | Mehrsprachigkeit, strukturierte Ausgabe | Internationales Geschäft |
| Gemma 3 27B | Schnell, sparsam | Einfache Tasks, hoher Durchsatz |
| Mistral Large (lokal) | Europäisches Modell, Französisch/Deutsch | DACH-spezifische Use Cases |
| [Branchen-spezifisch] | Finetuned auf Kundendaten | Enterprise-Option (gegen Aufpreis) |

### 4.4 Service-Portfolio

**Einmalige Leistungen:**
- Hardware-Lieferung, Erstkonfiguration (remote oder vor Ort)
- Modellauswahl und -installation nach Kundenbedarf
- Netzwerkintegration (LAN, VLAN, Firewall-Regeln)
- Mitarbeiterschulung (Quickstart bis Workshop)
- DSGVO-Dokumentation für Kundenzwecke (Verarbeitungsverzeichnis-Vorlage)

**Laufende Leistungen (im Abo):**
- Firmware- und OS-Updates
- Modell-Updates (neue Versionen, verbesserte Quantisierungen)
- Technischer Support (SLA je nach Tier)
- Proaktives Monitoring (ab Professional)
- Modelloptimierung und Performance-Tuning
- Neues Modell-Onboarding auf Anfrage

**Optionale Zusatzleistungen (projektbezogen):**
- Finetuning auf Kundendaten (z.B. unternehmensspezifisches Vokabular, Prozesse)
- Entwicklung kundenspezifischer RAG-Pipelines
- API-Integration in bestehende Software (CRM, DMS, ERP)
- Erweiterter Vor-Ort-Support

---

## 5. Geschäftsmodell & Preisgestaltung

### 5.1 Modell-Logik

PrivateMind kombiniert zwei Einnahmetypen strategisch:

- **Einmalige Einnahmen** (Hardware-Marge + Setup): Finanzieren Anlaufkosten und Demo-Investitionen
- **Wiederkehrende Einnahmen** (Abo): Bauen planbare, wachsende Basis auf — strategischer Kern

Die Unternehmenslogik ist einfach: **Je mehr Kunden im Abo, desto stabiler das Unternehmen — unabhängig vom nächsten Hardware-Verkauf.**

### 5.2 Option A: Hardware-Kauf + Service-Abo (getrennt)

**Hardware-Preise (einmalig, inkl. Konfiguration):**

| Produktlinie | Konfiguration | VK (inkl. MwSt.) | EK (ca.) | Marge |
|---|---|---|---|---|
| PrivateMind Standard | 1× GX10, 1 TB | €4.522 brutto / €3.800 netto | ~€3.050 | ~€750 |
| PrivateMind Professional | 1× GX10, 2 TB | €5.355 brutto / €4.500 netto | ~€3.550 | ~€950 |
| PrivateMind Premium | 2× GX10 Cluster, je 2 TB | €11.305 brutto / €9.500 netto | ~€7.100 | ~€2.400 |

*Preise netto = B2B-Preise für Geschäftskunden. MwSt. 19% (DE).*

**Service-Abos (monatlich, netto, Mindestlaufzeit 12 Monate):**

|  | **Starter** | **Professional** | **Enterprise** |
|---|---|---|---|
| **Monatspreis (netto)** | **€149** | **€349** | **€699** |
| Vorkonfigurierte Modelle | 3–5 Modelle (Basis-Set) | 6–10 Modelle (erweitertes Set) | Maßgeschneidert |
| Modell-Updates | Quartalsweise | Monatlich | Kontinuierlich |
| Support-Kanal | E-Mail | E-Mail + Telefon | Priorität + Remote-Zugriff |
| Reaktionszeit SLA | 48 Stunden | 24 Stunden | 4 Stunden |
| System-Monitoring | Basis-Dashboard | Dashboard + Alerts | Proaktiv (PrivateMind monitort) |
| Modell-Tuning | — | Self-Service + Anleitung | Durch PrivateMind inklusive |
| RAG-Einrichtung | Dokumentation | Einrichtungshilfe | Vollständige Einrichtung inklusive |
| Clustering-Support | — | Gegen Aufpreis (€99/Mo.) | Inklusive |
| Schulung | Quickstart-Guide (PDF/Video) | 2h Onboarding-Call | Workshop + laufende Beratung |
| Neue Nutzer-Onboarding | — | 1× pro Quartal | Unbegrenzt |
| **Jahreswert pro Kunde** | **€1.788** | **€4.188** | **€8.388** |

**Setup-Gebühren (einmalig, je nach Komplexität):**

| Szenario | Gebühr (netto) |
|---|---|
| Remote-Setup, Standard-Konfiguration | €500 |
| Remote-Setup, individuelle Modellauswahl + RAG | €750 |
| Vor-Ort-Setup (DACH), inklusive Schulung | €1.500 |
| Vor-Ort-Setup + Netzwerkintegration + Workshop | €2.000 |

### 5.3 Option B: All-Inclusive-Bundle (Leasing + Service)

Für KMU, die keine Investitionsausgabe (CAPEX) tätigen wollen und eine reine Betriebsausgabe (OPEX) bevorzugen. Steuerlich attraktiv: vollständig als Betriebsausgabe absetzbar, kein aktivierungspflichtiges Anlagevermögen.

|  | **Bundle Standard** | **Bundle Professional** | **Bundle Premium** |
|---|---|---|---|
| Hardware | 1× GX10, 1 TB | 1× GX10, 2 TB | 2× GX10 Cluster, je 2 TB |
| Service-Level | Starter | Professional | Enterprise |
| **Monatspreis (netto)** | **€299** | **€499** | **€999** |
| **Laufzeit** | 36 Monate | 36 Monate | 36 Monate |
| Gesamtkosten über 36 Mo. | €10.764 | €17.964 | €35.964 |
| Nach Laufzeitende | Hardware-Eigentum geht auf Kunden über; Service-Abo läuft weiter (opt-out möglich) | ← | ← |
| **Implikation für PrivateMind** | Hardware-Refinanzierung über ~14 Monate; ab Mo. 15 volle Marge | ← | ← |

**Bundle-Kalkulation (Beispiel Bundle Standard):**
```
Hardware EK:        -€3.050
Setup-Kosten:       -€200 (intern)
36× €299 Einnahmen:  +€10.764
Gesamtmarge:        ~€7.514 über 36 Monate
Ø Monatsmarge:      ~€209/Monat
ROI-Break-even:     Monat 14
```

### 5.4 Einnahmestruktur und Priorität

| Einnahmestrom | Typ | Zeitpunkt | Strategische Bedeutung |
|---|---|---|---|
| Hardware-Marge | Einmalig | Bei Lieferung | Kurzfristige Liquidität |
| Setup-Gebühr | Einmalig | Bei Inbetriebnahme | Deckung Einrichtungsaufwand |
| Monatliches Abo (Kauf-Modell) | Wiederkehrend | Ab Monat 1 | **Kernumsatz, Unternehmenswert** |
| Bundle-Rate | Wiederkehrend | 36 Monate | Langfristige Bindung |
| Zusatzleistungen | Projektbezogen | Ad hoc | Ergänzend |

**Umsatzmix-Ziel:** Ab Jahr 2 soll der MRR (Monthly Recurring Revenue) mindestens 60% des Gesamtumsatzes ausmachen. Dieser Anteil erhöht die Prognosesicherheit und den Unternehmenswert erheblich.

### 5.5 Pricing-Strategie

**Aktuelle Positionierung:** Preis-Leistungs-Führerschaft im lokalen KI-Segment. PrivateMind ist bewusst günstiger als Enterprise-Lösungen, aber teurer als reines Open-Source-Selbst-Hosten — der Preisaufschlag ist der Service und die Zeitersparnis.

**Preiserhöhungspotenzial:** Sobald Referenzkunden und Fallstudien vorhanden sind, können Preise um 10–20% angehoben werden. Preis sollte immer kommuniziert werden als "Kosten einer Teilzeitkraft geteilt durch 10".

**Vergleichsrahmen für Kundengespräche:**
- Ein freiberuflicher Entwickler für KI-Setup kostet €80–€150/Stunde
- Eine SaaS-KI-Lösung mit ähnlichem Funktionsumfang: €300–€800/Monat (plus Datenschutzrisiko)
- Eine eigene IT-Stelle: €3.000–€5.000/Monat
- PrivateMind Professional: €349/Monat all-in → keine Vergleichspreise, klarer Vorteil

---

## 6. Marketing & Vertrieb

### 6.1 Vertriebsstrategie — Drei-Phasen-Plan

**Phase 1 (Monat 1–6): Direktvertrieb & Piloten in DACH**

Ziel: 3–5 Pilotkunden, 2–3 zahlende Kunden bis Monat 6.

Kanäle und konkrete Maßnahmen:
- **LinkedIn-Direktakquise**: Systematische Ansprache von Kanzleiinhabern, Steuerberatern, Praxis-Inhabern in DACH. Ziel: 10 qualifizierte Gespräche pro Monat.
- **Netzwerk Dresden/Silicon Saxony**: Persönliche Kontakte aktivieren, Vorträge/Demos bei lokalen Unternehmerveranstaltungen.
- **Kaltakquise per E-Mail (personalisiert)**: Fokus auf Datenschutz-Pain-Point, kurze Demo-Einladung.
- **Demo-Gerät nutzen**: Jeden potenziellen Kunden mit einer Live-Demo überzeugen. "Sehen Sie, wie Ihr Vertrag in 10 Sekunden zusammengefasst wird — lokal, ohne Cloud."
- **Pilotkunden-Angebot**: Erste 3–5 Kunden erhalten 20% Rabatt auf Abo für 6 Monate im Gegenzug für Testimonial und Fallstudie.

**Phase 2 (Monat 6–12): Europäische Expansion über Content & Partnerships**

Ziel: 10–15 Kunden europaweit, erste Inbound-Leads.

Kanäle:
- **Englischsprachige Website live**: Konfigurator, Demo-Anfrage, klare Produktseiten, FAQs zu DSGVO/Datenschutz.
- **Content Marketing (Blog, LinkedIn)**: Themen: "AI for law firms without cloud", "GDPR-compliant AI in 2026", "How SMEs use local LLMs". SEO-Fokus auf Long-Tail-Keywords.
- **IT-Partnergewinnung**: Aktive Ansprache von IT-Dienstleistern in NL, Nordics, UK. Ziel: 2–3 Reseller-Vereinbarungen.
- **Webinare**: Monatliches Online-Webinar auf Englisch: "Local AI for European businesses — live demo". Kostenlos, Lead-Generierung.
- **Präsenz auf Fachveranstaltungen**: DMEXCO (Köln), CeBIT-Nachfolger, IT-Security-Messen, Branchenveranstaltungen für Kanzleien.

**Phase 3 (ab Monat 12): Skalierung & Partner-Netzwerk**

Ziel: 30+ Kunden, stabiler Inbound-Kanal.

Kanäle:
- **Reseller/MSP-Programm**: Strukturierte Partnerschaft mit IT-Dienstleistern. Marge-Sharing (15–25% auf Abo-Einnahmen).
- **Case Studies & Referenzen**: Detaillierte Fallstudien aus Phase 1 und 2 als Vertriebs-Beschleuniger.
- **Empfehlungsprogramm**: Bestehende Kunden erhalten 1 Monat kostenlosen Service pro empfohlenem Neukunden.
- **Lokalisierte Landingpages**: DE, EN, NL, ggf. FR und skandinavische Sprachen.
- **Produktvergleichsseiten/G2/Capterra**: Präsenz auf SaaS-Review-Plattformen aufbauen.

### 6.2 Positionierung & Botschaften

**Kernbotschaften (Englisch — für externe Kommunikation):**

| Botschaft | Zielgruppe | Kontext |
|---|---|---|
| *"Your data. Your AI. On your desk."* | Alle | Hauptslogan, überall |
| *"AI for European business — no cloud, no risk."* | EU-Kunden, Datenschutz-Fokus | Website-Hero, LinkedIn |
| *"The AI department that fits any budget."* | KMU-Entscheider | Preisseite, Pitch |
| *"Built in Europe. Stays in your office."* | GDPR-sensible Branchen | Regulated industries |
| *"Enterprise AI. Desk-sized. Yours."* | Tech-affine Entscheider | LinkedIn, Fachartikel |

### 6.3 Zielkunden-Ansprache: Konkrete Ansprache-Templates

**E-Mail-Template (Kanzlei):**
```
Betreff: KI für Ihre Kanzlei — ohne Cloud, ohne Datenschutzrisiko

Sehr geehrte/r [Name],

immer mehr Kanzleien nutzen KI für Dokumentenanalyse, Schriftsatzentwürfe 
und Recherche. Das Problem: Die bekannten Tools (ChatGPT, Copilot) 
verarbeiten Ihre Mandantendaten auf externen Servern — ein § 203 StGB-Problem.

PrivateMind löst das: Eine KI-Appliance, die bei Ihnen im Büro steht. 
Keine Daten verlassen Ihre Kanzlei. DSGVO-konform by design.

Ich würde Ihnen das gerne in einer 20-minütigen Live-Demo zeigen.
Hätten Sie diese Woche einen kurzen Termin?

Mit freundlichen Grüßen
Raffael [Nachname]
PrivateMind GmbH
```

### 6.4 Sprachstrategie

| Kanal | Sprache | Begründung |
|---|---|---|
| Website (primär) | Englisch | Europäischer Markt, internationale SEO |
| Website (sekundär) | Deutsch | DACH-Markt, Erstphase |
| Vertriebsmaterialien | Englisch | Einheitlich für alle Märkte |
| Technischer Support | Englisch (primär), Deutsch | Skalierbarkeit |
| Content Marketing | Englisch | Reichweite Europa |
| Lokale Veranstaltungen DACH | Deutsch | Zielgruppengerecht |
| Verträge & AGBs | Englisch + Deutsch | Rechtssicherheit beide Märkte |

### 6.5 Vertriebsmetriken (KPIs)

| Kennzahl | Ziel Monat 6 | Ziel Monat 12 | Ziel Jahr 2 |
|---|---|---|---|
| Qualifizierte Gespräche/Monat | 5 | 15 | 30 |
| Angebote versandt | 3 | 8 | 20 |
| Conversion Rate (Angebot → Abschluss) | 30% | 35% | 40% |
| Neue Kunden/Monat | 1 | 2–3 | 4–6 |
| Monatliche Inbound-Leads (Website) | 0 | 5 | 20 |
| NPS Bestandskunden | — | >50 | >60 |

---

## 7. Organisation & Aufbau

### 7.1 Gründerprofil

**Raffael — Gründer und Geschäftsführer**

*Hintergrund:* Jahrzehntelange Erfahrung als Softwareentwickler in der IT-Branche. Tiefes technisches Verständnis von Systemarchitektur, Software-Entwicklung und IT-Infrastruktur. Kombination aus Hands-on-Entwickler-Mentalität und strategischem Denken.

*Relevante Kompetenzen für PrivateMind:*
- **Software-Entwicklung**: Eigenentwicklung des PrivateMind Dashboards und der Update-Pipeline — kein externer Entwickler für das MVP nötig, senkt Gründungskosten signifikant
- **Systemadministration & Linux**: NVIDIA DGX OS ist Ubuntu-basiert — vollständige Handlungsfähigkeit für Hardware-Setup, Netzwerk-Integration, Troubleshooting
- **Technischer Kundensupport**: Direkte Problemlösung ohne Delegation in der Frühphase
- **Vertrieb und Kommunikation**: Fähigkeit, technisch komplexe Lösungen verständlich zu erklären

*Kompetenzlücken & Kompensation:*
- **Vertrieb/Sales**: Erfahrung aufbauen durch systematische Akquise, ggf. Vertriebspartner in Phase 2
- **Buchhaltung/Steuer**: Steuerberater wird frühzeitig eingebunden
- **Recht**: Rechtsanwalt für AGB, Verträge, DSGVO-Dokumentation

*Warum dieser Gründer, warum jetzt:*
Die Gründungsidee entstand aus konkreter Marktbeobachtung: Die neue NVIDIA-Hardware-Generation ermöglicht erstmals eine wirklich schlüsselfertige lokale KI-Lösung in KMU-Preisrahmen. Das technologische Fenster ist jetzt — und ein Softwareentwickler mit Systemkenntnissen ist ideal positioniert, um genau dieses Produkt zu bauen und zu supporten.

### 7.2 Startaufstellung (Ein-Personen-GmbH)

In der Gründungsphase übernimmt der Gründer alle Rollen — bewusst und mit Plan:

| Rolle | Aufgaben | Zeitanteil (ca.) |
|---|---|---|
| Geschäftsführung | Strategie, Finanzen, Rechtliches, Partnergespräche | 15% |
| Produktentwicklung | Dashboard-Entwicklung, Software-Stack, Update-Pipeline | 35% |
| Technischer Support | Kunden-Setup, Troubleshooting, Monitoring | 20% |
| Vertrieb | Akquise, Demos, Angebote, Kundenpflege | 20% |
| Marketing | Content, LinkedIn, Website | 10% |

### 7.3 Skalierungsplan

| Kunden (kumuliert) | Mitarbeiterzahl | Erste neue Rollen | Personalkosten/Monat (ca.) |
|---|---|---|---|
| 1–10 | 1 (Gründer) | — | €3.000–€4.000 GF-Gehalt |
| 10–20 | 2 | Werkstudent/Freelancer Support | +€1.500–€2.500 |
| 20–35 | 3 | Vollzeit Technical Support | +€2.500–€3.500 |
| 35–50 | 4–5 | Vertrieb/Account Manager | +€2.500–€3.500 |
| 50–80 | 6–7 | Entwickler (Dashboard V2+) | +€4.000–€5.000 |
| 80+ | 8+ | Teamleiter Support, Marketing | individuell |

### 7.4 Standortvorteil Dresden

Dresden bietet strukturelle Vorteile, die für ein KI-Hardware-Startup in der Frühphase erheblich ins Gewicht fallen:

- **Personalkosten 20–30% unter München/Hamburg/Berlin** — bei gleichem Qualifikationsniveau (TU Dresden, HTW)
- **Silicon Saxony e.V.** — das größte Hightech-Cluster Ostdeutschlands, mit direktem Zugang zu Netzwerk, Events und Lieferantenbeziehungen
- **dresden|exists** — Startup-Ökosystem der TU Dresden mit Mentoring, SAB-Antragsbegleitung, Büroinfrastruktur
- **GRW-Lohnkostenzuschüsse** (Gemeinschaftsaufgabe Wirtschaftsstruktur) für neue Arbeitsplätze in Sachsen
- **Halbleiter-Ökosystem**: TSMC, Infineon, Globalfoundries in der Region — Affinität zu Hardware-Themen bei lokalen Talenten

---

## 8. Finanzplanung

### 8.1 Gründungskosten (einmalig)

| Position | Betrag (netto, ca.) | Anmerkung |
|---|---|---|
| GmbH-Gründung (Notar, Handelsregister, Stammkapital) | €26.500 | Stammkapital €25.000 + ~€1.500 Gebühren |
| Demo-/Testgerät (1× GX10, 2 TB) | €3.550 | Beschaffung so früh wie möglich |
| Website & Branding | €3.000–€6.000 | Inkl. Domain, Hosting, Design-Grundlage |
| Software-Entwicklung Dashboard MVP | €0 | Eigenleistung des Gründers |
| Rechtsberatung (AGB, Verträge, DSGVO-Dokumentation) | €3.000–€5.000 | Einmalig, unbedingt nötig |
| Steuerberatung (Erstberatung + Einrichtung) | €500–€1.000 | |
| Erstausstattung Büro/IT | €1.000–€2.000 | Minimal |
| Versicherungen (Erstprämien) | €500–€800 | Betriebshaftpflicht, D&O |
| Marketing-Startmaterialien | €500–€1.000 | Pitch Deck, Broschüren |
| **Gesamt Gründungskosten** | **€38.550–€47.350** | |

*Das Stammkapital (€25.000) ist Eigenkapital des Unternehmens, keine Ausgabe — bleibt als Liquiditätspuffer.*

### 8.2 Monatliche Fixkosten (Betriebsphase)

**Startphase (Monat 1–12, Ein-Personen-Betrieb):**

| Position | Betrag/Monat (ca.) | Low | High |
|---|---|---|---|
| GF-Gehalt (netto) | €2.000–€3.000 | €2.000 | €3.000 |
| GF-Gehalt inkl. Lohnnebenkosten (GmbH-intern) | €3.000–€4.500 | €3.000 | €4.500 |
| Büro/Coworking | €300–€500 | €300 | €500 |
| Betriebshaftpflicht & Versicherungen | €150–€300 | €150 | €300 |
| Software-Lizenzen & Tools | €100–€200 | €100 | €200 |
| Marketing & Werbung (digital) | €300–€700 | €300 | €700 |
| Steuerberater (laufend) | €150–€300 | €150 | €300 |
| Telefon, Internet, Sonstiges | €100–€150 | €100 | €150 |
| **Summe Fixkosten/Monat** | | **€4.100** | **€6.650** |
| **Jahres-Fixkosten** | | **€49.200** | **€79.800** |

*Planungsbasis: Mittelwert ~€5.400/Monat, ~€64.800/Jahr*

### 8.3 Monatliche Umsatz- und Liquiditätsplanung — Jahr 1 (Konservatives Szenario)

Annahmen: Gründung Monat 1, erste Umsätze Monat 3, je 1 Neukunde/Monat ab Monat 4, Mix 60% Standard / 30% Professional / 10% Premium.

| Monat | Neue Kunden | Abo-Kunden kumuliert | Abo-MRR | Hardware-Marge | Setup | Gesamt-Einnahmen | Fixkosten | Monatssaldo | Kumuliert |
|---|---|---|---|---|---|---|---|---|---|
| 1 | 0 | 0 | €0 | €0 | €0 | €0 | -€5.400 | -€5.400 | -€5.400 |
| 2 | 0 | 0 | €0 | €0 | €0 | €0 | -€5.400 | -€5.400 | -€10.800 |
| 3 | 1 | 1 | €149 | €750 | €500 | €1.399 | -€5.400 | -€4.001 | -€14.801 |
| 4 | 1 | 2 | €298 | €750 | €500 | €1.548 | -€5.400 | -€3.852 | -€18.653 |
| 5 | 1 | 3 | €447 | €950 | €750 | €2.147 | -€5.400 | -€3.253 | -€21.906 |
| 6 | 1 | 4 | €596 | €750 | €500 | €1.846 | -€5.400 | -€3.554 | -€25.460 |
| 7 | 1 | 5 | €845 | €2.400 | €1.500 | €4.745 | -€5.400 | -€655 | -€26.115 |
| 8 | 1 | 6 | €994 | €750 | €500 | €2.244 | -€5.400 | -€3.156 | -€29.271 |
| 9 | 1 | 7 | €1.143 | €950 | €750 | €2.843 | -€5.400 | -€2.557 | -€31.828 |
| 10 | 1 | 8 | €1.292 | €750 | €500 | €2.542 | -€5.400 | -€2.858 | -€34.686 |
| 11 | 1 | 9 | €1.491 | €750 | €500 | €2.741 | -€5.400 | -€2.659 | -€37.345 |
| 12 | 1 | 10 | €1.740 | €2.400 | €2.000 | €6.140 | -€5.400 | +€740 | -€36.605 |
| **Gesamt Jahr 1** | **10** | **10** | **€8.995** | **€11.200** | **€8.000** | **€28.195** | **-€64.800** | | **-€36.605** |

*Hinweis: Monat 7 und 12: Premium-Verkauf angenommen. Kumulierter Fehlbetrag ~€37k wird durch Gründungsmittel (Stammkapital + Gründungszuschuss) gedeckt.*

### 8.4 Monatliche Planung — Jahr 1 (Optimistisches Szenario)

Annahmen: 2–3 Neukunden/Monat ab Monat 4, größerer Anteil Professional/Premium.

| Monat | Neue Kunden | Abo-Kunden | MRR | HW-Marge | Setup | Einnahmen | Saldo |
|---|---|---|---|---|---|---|---|
| 1–2 | 0 | 0 | €0 | €0 | €0 | €0 | -€10.800 |
| 3 | 2 | 2 | €498 | €1.700 | €1.500 | €3.698 | -€1.702 |
| 4 | 2 | 4 | €996 | €1.700 | €1.500 | €4.196 | -€1.204 |
| 5 | 3 | 7 | €1.743 | €4.550 | €3.000 | €9.293 | +€3.893 |
| 6–12 | ~2,5/Mo | 25 Ende | ~€6.225 | ~€2.500 | ~€2.000 | ~€10.725 | ~+€5.325 |
| **Gesamt Jahr 1** | **~25** | **25** | ~**€31.000** | **~€23.200** | **~€25.000** | **~€79.200** | **~+€14.400** |

### 8.5 Langfristige Umsatzentwicklung (3-Jahres-Planung)

|  | Jahr 1 (konservativ) | Jahr 1 (optimistisch) | Jahr 2 | Jahr 3 |
|---|---|---|---|---|
| Kunden (kumuliert, Ende Periode) | 10 | 25 | 35–60 | 70–120 |
| MRR (Ende Periode) | €2.490 | €6.225 | €10.000–€20.000 | €25.000–€50.000 |
| ARR (Ende Periode) | €29.880 | €74.700 | €120k–€240k | €300k–€600k |
| Hardware-Umsatz/Jahr | €46.300 | €124.100 | €100k–€200k | €200k–€400k |
| Setup-Einnahmen/Jahr | €8.000 | €25.000 | €20k–€50k | €50k–€100k |
| **Gesamt-Jahresumsatz (Marge+Abo+Setup)** | **~€34.000** | **~€110.000** | **€150k–€350k** | **€400k–€750k** |
| **Ergebnis (vor Steuern)** | **-€30k** | **+€45k** | **+€50k–€150k** | **+€200k–€400k** |

**Break-even-Analyse:**
- Break-even operativ (MRR deckt Fixkosten): ~15 Kunden im Professional-Tier, oder ~35 Kunden im Starter-Tier
- Break-even kumuliert (Verluste aus Jahr 1 ausgeglichen): realistisch im Laufe von Jahr 2

### 8.6 Kapitalbedarfsübersicht

| Finanzierungsquelle | Betrag (ca.) | Verfügbarkeit |
|---|---|---|
| Eigenkapital (Stammkapital GmbH) | €25.000 | Bei Gründung |
| Gründungszuschuss Agentur für Arbeit (15 Mo.) | ~€15.000–€20.000 | Bewilligung vor Gründung |
| InnoStartBonus Sachsen | ~€12.600 | Bei Bewilligung |
| SAB Mikrodarlehen | bis €20.000 | 3 Monate nach Gründung |
| **Gesamt verfügbare Mittel (konservativ)** | **~€52.600–€77.600** | |
| **Kapitalbedarf Jahr 1 (konservatives Szenario)** | **~€75.000–€85.000** | Gründungskosten + Verlust |
| **Lücke / Puffer** | **negativ bis ~€7.000** | Zeigt Relevanz der Fördermittelkette |

*Maßnahme bei Lücke: KfW ERP-Gründerkredit StartGeld (bis €125.000, vergünstigter Zinssatz) oder SAB Sachsenkredit als ergänzende Finanzierungsquelle.*

---

## 9. Risikoanalyse

### 9.1 Risikomatrix

| Risiko | W'keit | Auswirkung | Risiko-Score | Gegenmaßnahme |
|---|---|---|---|---|
| **Langsame Kundenakquise** | Hoch | Hoch | 🔴 Kritisch | Niedrige Fixkosten halten, Pilotkunden früh; Fördermittel sichern als Puffer |
| **LPDDR5X-Preise steigen weiter** | Hoch | Mittel | 🟠 Erheblich | Bundle-Modell puffert; mehrere OEM-Quellen; Preisgleitklausel in AGB |
| **Abhängigkeit NVIDIA/ASUS** | Hoch | Mittel | 🟠 Erheblich | Dell/Lenovo/HP als Backup-Lieferanten qualifiziert; Service-Wert ist hardware-agnostisch |
| **Cloud-KI wird "sicher genug"** | Mittel | Mittel | 🟡 Moderat | Regulierte Branchen bleiben; DSGVO bleibt; Positionierung auf Compliance stärken |
| **Große Systemhäuser kopieren** | Mittel | Hoch | 🟠 Erheblich | First-Mover-Vorteil nutzen; Nische durch Spezialisierung verteidigen; Referenzen aufbauen |
| **Support-Überlastung (Solo-Betrieb)** | Mittel | Mittel | 🟡 Moderat | Abo-Tiering begrenzt Support-Anfragen; Monitoring automatisieren; klare SLA-Grenzen |
| **Technischer Fehler/Hardware-Ausfall beim Kunden** | Mittel | Hoch | 🟠 Erheblich | Betriebshaftpflicht; klare Haftungsbegrenzung in AGB; schneller Austauschprozess |
| **Regulatory Surprise (EU AI Act neue Pflichten)** | Niedrig | Mittel | 🟡 Moderat | Rechtsberatung verfolgt EU AI Act; lokale Kontrolle ist compliance-vorteilhaft |
| **Gründer fällt aus (Krankheit etc.)** | Niedrig | Hoch | 🟠 Erheblich | Versicherung (Berufsunfähigkeit), Notfall-Dokumentation, frühzeitig Netzwerk aufbauen |
| **Demo-Gerät defekt/verfügbar** | Niedrig | Mittel | 🟡 Moderat | Beschaffung priorisieren; Backup-Lieferant identifizieren |

### 9.2 Strategische Risikominimierung

**Prinzip 1: Der Wert liegt im Service, nicht in der Hardware.**
Selbst wenn ein Kunde die gleiche Hardware woanders billiger kauft, fehlt ihm ohne PrivateMinds Setup, Konfiguration, Updates und Support das funktionierende System. Der Wechselkosten-Effekt ist real: ein eingerichtetes System mit RAG-Index, angepassten Modellen und eingespieltem Support-Prozess wechselt man nicht ohne Aufwand.

**Prinzip 2: Niedrige Fixkosten als strategischer Vorteil.**
Die Ein-Personen-GmbH kann mit ~€4.000–€5.400/Monat operieren. Das gibt 12–18 Monate Runway mit Eigenkapital allein — selbst bei null Umsatz. Kein Investor-Druck, kein Wachstumszwang.

**Prinzip 3: Europäische Diversifikation.**
Keine Abhängigkeit von einem nationalen Markt. Fällt DACH schwächer aus als geplant, kann Fokus auf NL/UK verlagert werden.

**Prinzip 4: Recurring Revenue als Stabilitätsanker.**
Ab ~15 Professional-Kunden deckt der MRR alle Fixkosten. Von diesem Punkt an sind Hardware-Verkäufe "Bonus", nicht Überlebensbedingung.

---

## 10. Meilensteine & Zeitplan

| Zeitraum | Meilenstein | Konkrete Aktivitäten | Erfolgskriterium |
|---|---|---|---|
| **Monat 1** | Rechtliche Gründung | GmbH-Notar, Gesellschaftervertrag, Handelsregistereintrag, Geschäftskonto eröffnen | GmbH eingetragen |
| **Monat 1** | Förderantrag | Gründungszuschuss bei Agentur für Arbeit beantragen, InnoStartBonus prüfen | Antrag eingereicht |
| **Monat 1–2** | Infrastruktur | Demo-Gerät beschaffen, Entwicklungsumgebung aufbauen, Domain registrieren, E-Mail-Setup | Gerät läuft, Domain aktiv |
| **Monat 2–4** | Dashboard MVP | Chat-Interface, Dokument-Upload, Modellverwaltung, System-Monitor bauen | Interne Demo-fähig |
| **Monat 2–4** | Rechtliche Grundlagen | AGB + Serviceverträge (Englisch), Datenschutzkonzept, Haftungsfragen klären | Verträge unterschriftsreif |
| **Monat 3–5** | Pilotkunden | 3–5 Pilotkunden in DACH identifizieren und gewinnen, Installationen durchführen | Mindestens 2 zahlende Kunden |
| **Monat 4–6** | Feedback-Loop | Piloten befragen, Dashboard verbessern, Prozesse validieren | NPS > 40, Testimonials vorhanden |
| **Monat 5–6** | Marktstart | Englischsprachige Website live, Preismodell finalisieren, Fallstudien veröffentlichen | Website live, erste Inbound-Anfragen |
| **Monat 6–9** | Europäische Expansion | Content Marketing EN, LinkedIn-Präsenz, erste IT-Partner in NL/UK ansprechen | 2–3 Partner identifiziert |
| **Monat 9–12** | Skalierungsvorbereitung | Prozesse dokumentieren, Support-Automatisierung, Dashboard V2 starten | 10 aktive Kunden, MRR €2.500+ |
| **Jahr 2, Q1** | Break-even vorbereiten | Partner-Netzwerk aktivieren, ggf. erste Stelle besetzen | 20+ Kunden, MRR €5.000+ |
| **Jahr 2, Q3** | Break-even operational | MRR deckt Fixkosten | MRR > €5.400/Monat |
| **Jahr 3** | Nachhaltiges Wachstum | Team 4–6 Personen, 70+ Kunden, TGFS/MBG für Wachstumskapital prüfen | Profitabel, skalierbar |

---

## 11. Fördermöglichkeiten

### 11.1 Phase 1: Sofort handeln (vor/bei Gründung)

**Gründungszuschuss (Agentur für Arbeit) — HÖCHSTE PRIORITÄT**
- Voraussetzung: Gründer ist arbeitslos gemeldet ✅
- Phase 1: 6 Monate, ALG I-Betrag + €300/Monat
- Phase 2: 9 Monate, €300/Monat (auf separaten Antrag)
- Gesamtdauer: bis 15 Monate
- Geschätzte Gesamtleistung (bei ALG I €1.800/Monat): ~€13.800 (Phase 1) + €2.700 (Phase 2) = ~**€16.500**
- *Achtung: Antrag muss vor Gewerbeanmeldung/GmbH-Eintragung gestellt werden!*

**InnoStartBonus Sachsen**
- €1.050/Monat × 12 Monate = **€12.600** (zzgl. €150/Kind/Monat)
- Für innovative Gründer mit Wohnsitz in Sachsen ✅
- Beantragung über futureSAX-Plattform
- Kombinierbarkeit mit Gründungszuschuss prüfen (rechtlich komplex)

**ESF Plus Gründungsberatung Sachsen**
- €2.000 Zuschuss für Gründungsberatungsleistungen
- Sofort beantragen für Steuer-/Rechtsberatung

### 11.2 Phase 2: Nach Gründung (Monat 1–6)

**SAB Mikrodarlehen**
- Bis zu €20.000, direkt bei der Sächsischen Aufbaubank
- Bis zu 3 Jahre nach Gründung beantragbar
- Rückzahlung innerhalb von 5 Jahren
- Sinnvoll für: Hardware-Nachbeschaffung, Marketing-Investitionen

**Sachsenkredit "Gründen und Wachsen" (SAB)**
- Zinsgünstige Darlehen bis €5 Mio.
- Basistilgungszuschuss 6–10%
- Über Hausbank beantragt (Durchleitung SAB)

**KfW ERP-Gründerkredit StartGeld**
- Bis zu €125.000
- Günstige Zinsen, teilweise KfW-besichert
- Relevant als Ergänzung wenn Eigenkapital knapp wird

**NVIDIA Inception Programm**
- Kostenlose technische Ressourcen, DGX Cloud-Credits, Netzwerkzugang
- Keine Kapital-Beteiligung
- Beantragung: nvidia.com/en-us/startups
- Gibt Credibility gegenüber Kunden ("NVIDIA Inception Member")

**Silicon Saxony e.V. beitreten**
- Jahresbeitrag: ~€500–€1.000
- ROI: Netzwerk, Matchmaking, Zugang zu Investoren und Partnern

### 11.3 Phase 3: Wachstumsphase (ab Jahr 2)

**GRW RIGA Investitionszuschuss**
- Bis 50% auf förderfähiges Investitionsvolumen
- Mindestinvestition in Dresden: €70.000
- Voraussetzung: Schaffung dauerhafter Arbeitsplätze
- Relevant wenn: Hardware-Lagerbestand aufgebaut wird oder erste Mitarbeiter kommen

**Technologiegründerfonds Sachsen (TGFS)**
- TGFS Basic bis €500.000 (Eigenkapital-Beteiligung)
- TGFS Plus bis €4 Mio.
- Für spätere Wachstumsphase

**MBG Sachsen (Mittelständische Beteiligungsgesellschaft)**
- Stille Beteiligungen €25.000–€1 Mio.
- Stärkt Eigenkapitalbasis ohne Kontrollverlust

**EU-Förderprogramme (Horizon Europe / EIC / Digital Europe)**
- Komplex, besser für Jahr 2–3 geeignet
- Beratung durch dresden|exists empfohlen

### 11.4 Empfohlene Fördermittel-Timeline

```
VOR Gründung:    Gründungszuschuss beantragen → ESF Plus Gründungsberatung
Monat 1:         InnoStartBonus (futureSAX), Silicon Saxony beitreten
Monat 2:         NVIDIA Inception beantragen
Monat 3:         SAB Mikrodarlehen (Liquiditätspuffer)
Monat 6+:        Sachsenkredit oder KfW prüfen (wenn Wachstum vorankommt)
Jahr 2:          GRW RIGA (bei Investitionen), TGFS/MBG (wenn Wachstumskapital nötig)
Jahr 2–3:        EU-Fördermittel (mit Beratung)
```

---

## 12. Offene Punkte & Nächste Schritte

### Sofort-Prioritäten (diese Woche)

- [ ] **Gründungszuschuss-Termin** bei Agentur für Arbeit vereinbaren — vor jeder weiteren Gründungsaktivität!
- [ ] **Notar** für GmbH-Gründung kontaktieren, Termin vereinbaren
- [ ] **Steuerberater** auswählen und Erstgespräch buchen
- [ ] **Domain** privatemind.eu und privatemind.de sichern (sofort, noch heute)

### Geschäftsmodell

- [ ] Hardware: verkaufen vs. leasen vs. beides — steuerliche und bilanzielle Implikationen mit Steuerberater klären
- [ ] Mindestvertragslaufzeiten für Abos (12 vs. 24 Monate) — mit erstem Kunden validieren
- [ ] Update-Auslieferung: Remote-Push vs. kundeninitiiert vs. Hybrid — Datenschutzkonzept beachten
- [ ] Preismodell mit echten Marktdaten validieren (5 Kundengespräche noch vor erster Investition)
- [ ] EU-MwSt / OSS-Verfahren klären (für Kunden in anderen EU-Ländern)

### Produkt

- [ ] Dashboard MVP-Anforderungen in Tickets aufschlüsseln (GitHub Issues oder Jira)
- [ ] Standard-Modellauswahl festlegen (welche 3–5 Modelle für MVP)
- [ ] RAG-Pipeline: Technologie-Entscheidung (LangChain vs. LlamaIndex vs. Custom)
- [ ] Update-Mechanismus: Design-Dokument erstellen
- [ ] Security-Konzept: wie wird Fernwartungszugriff gesichert?

### Rechtliches

- [ ] GmbH-Gründung: Notar, Gesellschaftsvertrag, Satzung
- [ ] AGB und Serviceverträge (Englisch, EU-konform)
- [ ] DSGVO-Dokumentation: Verarbeitungsverzeichnis-Vorlage für Kunden
- [ ] Haftungsfragen: KI-generierte Inhalte, Produkthaftung Hardware, Garantieausschluss
- [ ] Umsatzsteuer-Registrierung / OSS für EU-Verkauf
- [ ] Lieferantenbedingungen ASUS/Dell prüfen (Wiederverkaufsrechte, Garantieübertragung)

### Vertrieb

- [ ] Erste 10 potenzielle Pilotkunden identifizieren (LinkedIn-Recherche, Netzwerk)
- [ ] Pitch Deck erstellen (Englisch, 10–12 Slides, Demo-fokussiert)
- [ ] Website-Briefing schreiben (oder selbst aufsetzen)
- [ ] Demo-Skript entwickeln: 20-Minuten-Live-Demo-Ablauf

### Finanzen

- [ ] Detaillierten Liquiditätsplan (Monat für Monat, 24 Monate) als Tabelle führen
- [ ] Gründungszuschuss-Unterlagen vorbereiten (Businessplan-Kurzform, Lebenslauf, Kapitalbedarf)
- [ ] Geschäftskonto eröffnen (Empfehlung: Commerzbank, Deutsche Bank oder FinTech wie Qonto für KMU)

---

## Anhang

### A. Technischer Vergleich: Hardware-Alternativen

| Plattform | Status | Begründung |
|---|---|---|
| **ASUS Ascent GX10 (1TB/2TB/4TB)** | ✅ Primäre Wahl | Günstigstes GB10-System (ab ~€3.050), drei SSD-Varianten, optimiert für LLM-Inferenz, Clustering möglich. ASUS bietet keinen Support → USP für PrivateMind |
| NVIDIA DGX Spark Founders Edition | ⚠️ Alternative / Backup | Identische Hardware, aber nur 4TB-Konfiguration, €4.800 EU-Marketplace. ~€750–€1.750 teurer. Vorteil: NVIDIA-eigene Garantie |
| Dell Pro Max GB10 | ⚠️ Backup-Lieferant | Gleicher Chip, höherer Preis, aber mit Dell-Support. Relevant bei ASUS-Lieferengpässen |
| Lenovo PGX / HP ZGX | ⚠️ Backup-Lieferant | Wie Dell |
| Gigabyte AI TOP ATOM (ATAGB10-9000) | ⚠️ Preislich ähnlich | ab €4.000, 4TB — kein Vorteil gegenüber ASUS |
| MSI EdgeXpert 11SUS | ⚠️ Preislich ähnlich | ab €3.700, 4TB |
| NVIDIA Jetson Thor (T5000/T4000) | ❌ Ausgeschlossen | Für Robotik optimiert, schwache LLM-Leistung (~10 tok/s für Llama 70B) |
| NVIDIA Jetson AGX Orin | ❌ Ausgeschlossen | Ampere (2 Generationen alt), max 64 GB RAM — unzureichend für aktuelle 70B-Modelle |

*Preishinweis: NVIDIA hat den DGX-Spark-Preis im Februar 2026 um ~€650 erhöht (weltweite LPDDR5X-Lieferengpässe). ASUS bleibt günstigstes GB10-System am Markt.*

### B. Preisvergleich: Alle GB10-basierten Systeme

*Alle Preise in EUR. EU-Marketplace wo verfügbar, sonst umgerechnet (~€0,93/$1, Stand April 2026).*

| Hersteller | Modell | SSD | Preis (ca.) |
|---|---|---|---|
| **ASUS Ascent GX10** | GG0010BN | 1 TB | ab **€3.050** |
| **ASUS Ascent GX10** | GG0020BN | 2 TB | ab **€3.550** |
| **ASUS Ascent GX10** | GG0016BN | 4 TB | ab **€4.050** |
| MSI EdgeXpert | 11SUS | 4 TB | ab €3.700 |
| Gigabyte AI TOP ATOM | ATAGB10-9000 | 4 TB | ab €4.000 |
| Acer Veriton | VGN100 | 4 TB | ab €3.875 |
| NVIDIA DGX Spark | Founders Edition | 4 TB | €4.800 |
| Dell Pro Max GB10 | — | 4 TB | ~€4.500–€5.000 |

### C. Idealkunden-Profil (ICP — Ideal Customer Profile)

**Persona 1: Die Kanzlei (Primär)**
- Rechtsanwaltskanzlei, 3–15 Anwälte, spezialisiert (Arbeitsrecht, Familienrecht, Unternehmensrecht)
- Nutzt bereits digitale Aktenführung
- Schmerzpunkt: Mitarbeiter nutzen ChatGPT privat, Inhaber besorgt wegen Mandantengeheimnis
- Entscheidungsträger: Geschäftsführender Partner
- Budget: €500–€1.000/Monat für IT/Software vorhanden
- Akquisepfad: LinkedIn, Rechtsanwaltsverein-Netzwerk, Empfehlung

**Persona 2: Der Steuerberater/WP (Primär)**
- 5–30 Mitarbeiter, KMU-fokussiert
- Nutzt DATEV, will KI für Mandantenkorrespondenz, Reporterstellung, Recherche
- Schmerzpunkt: DATEV-KI noch nicht ausreichend; externe Cloud-KI wegen Steuergeheimnis nicht nutzbar
- Entscheidungsträger: Kanzleiinhaber
- Akquisepfad: Steuerberaterverband, LinkedIn, persönliches Netzwerk

**Persona 3: Das Ingenieurbüro (Sekundär)**
- 10–50 Mitarbeiter, Spezialisierung (Maschinenbau, Elektro, Architektur)
- Schmerzpunkt: proprietäre Konstruktionsdaten, Kunden-NDAs
- Potenzial: KI für technische Dokumentation, Normenrecherche, Ausschreibungen
- Budget: höher, IT-affinere Entscheider

### D. Marktdatenquellen

- Eurostat KMU-Statistiken 2024
- Bitkom KI-Studie 2025
- NVIDIA Produktseiten und EU-Marketplace
- ServeTheHome Reviews (ASUS Ascent GX10)
- Tom's Hardware, TechRadar, CNX Software — Benchmarks
- Newegg, Amazon EU — aktuelle Marktpreise (Stand: April 2026)
- EU AI Act — Volltext und Umsetzungsberichte
- DSGVO-Bußgeldstatistiken 2024 (EDPB Annual Report)

---

*Version 2.0 — Internes Steuerungsdokument. Alle Zahlen sind Planwerte auf Basis verfügbarer Marktdaten (Stand April 2026). Steuerliche und rechtliche Validierung durch Fachberater ist vor verbindlichen Entscheidungen erforderlich. Dieses Dokument ist lebendig — regelmäßige Überarbeitung mindestens quartalsweise empfohlen.*