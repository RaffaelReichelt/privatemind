# PrivateMind GmbH - Businessplan

*Entwurf, Stand: April 2026*
*Erstellt von: Raffael (Gründer) mit Unterstützung von Lio*

***

## 1\. Executive Summary

**PrivateMind** liefert schlüsselfertige KI-Appliances an kleine und mittlere Unternehmen (KMU) in Deutschland. Die Appliance basiert auf dem NVIDIA GB10 Grace Blackwell Superchip (ASUS Ascent GX10) und ermöglicht es KMU, leistungsfähige Large Language Models (LLMs) lokal zu betreiben, ohne Daten in die Cloud zu senden.

Der Markt für lokale KI-Infrastruktur wächst rasant, doch KMU fehlen Know-how, Personal und Zeit, eigene Lösungen aufzubauen. PrivateMind schließt diese Lücke mit einem Komplettangebot aus Hardware, Software, Support und laufender Betreuung.

**Kernversprechen:** Lokale KI, die funktioniert. Ohne Cloud. Ohne IT-Abteilung. Ohne Kompromisse beim Datenschutz.

**Geschäftsmodell:** Drei Hardware-Stufen (Standard, Professional, Premium) kombiniert mit einem gestaffelten monatlichen Abo-Modell. Wiederkehrende Umsätze durch Support, Updates und Modell-Management.

**Rechtsform:** GmbH (geplant)

**Gründer:** Raffael - Softwareentwickler mit jahrzehntelanger Erfahrung in der IT-Branche.

***

## 2\. Problem & Marktchance

### Das Problem

KMU stehen vor einem Dilemma:

* **KI ist geschäftskritisch geworden.** Wettbewerber automatisieren Prozesse, Kunden erwarten intelligente Services, Mitarbeiter fordern produktivere Werkzeuge.
* **Cloud-basierte KI-Lösungen sind problematisch.** Sensible Unternehmensdaten (Verträge, Kundendaten, Finanzen, interne Kommunikation) verlassen das Unternehmen. Für viele KMU ist das aus Datenschutz- und Compliance-Gründen inakzeptabel, insbesondere unter der DSGVO.
* **Eigene KI-Infrastruktur ist unerreichbar.** KMU haben weder dedizierte IT-Abteilungen noch die Expertise, KI-Systeme selbst aufzubauen, zu konfigurieren und zu warten.

### Die Lücke

Es gibt derzeit kein Angebot, das KMU eine **sofort einsatzbereite, lokal betriebene KI-Lösung** mit **laufendem Support und Updates** aus einer Hand liefert. Bestehende Angebote sind entweder:

* Cloud-basiert (Datenschutz-Problem)
* Entwickler-Hardware ohne Support (z.B. ASUS Ascent GX10 wird "as is" ohne Garantie verkauft)
* Enterprise-Lösungen mit Preisen jenseits des KMU-Budgets

### Die Chance

PrivateMind positioniert sich genau in dieser Lücke: **Die KI-Abteilung, die KMU sich nicht leisten können, als monatlicher Service.**

***

## 3\. Marktanalyse

### Zielmarkt

**Primär:** KMU in Deutschland mit 10-250 Mitarbeitern, die:

* Regelmäßig mit sensiblen Daten arbeiten (Kanzleien, Steuerberater, Arztpraxen, Ingenieurbüros, Beratungen)
* Noch keine KI-Strategie haben, aber den Bedarf spüren
* Datenschutz und DSGVO-Konformität als geschäftskritisch betrachten

**Sekundär:** Größere Mittelständler, die einzelne Abteilungen mit lokaler KI ausstatten wollen, ohne die zentrale IT zu belasten.

### Marktgröße

* Deutschland zählt ca. 3,4 Millionen KMU (Destatis)
* Der deutsche KI-Markt wächst jährlich um ca. 25-30% (Bitkom, 2025)
* Laut einer Bitkom-Umfrage setzen erst 15% der KMU KI-Tools produktiv ein, während 68% Interesse bekunden
* Der adressierbare Markt (SAM) für datenschutzkonforme, lokale KI-Lösungen im KMU-Segment wird auf mehrere Milliarden Euro geschätzt

### Wettbewerbslandschaft

| Wettbewerber | Ansatz | Schwäche aus KMU-Sicht |
| ------------ | ------ | ---------------------- |
| OpenAI, Microsoft Copilot, Google | Cloud-basierte KI | Daten verlassen das Unternehmen |
| Ollama, LocalAI, LM Studio | Open-Source Self-Hosted | Erfordert IT-Expertise, kein Support |
| NVIDIA DGX Spark (direkt) | Hardware für Entwickler | Kein KMU-Support, kein Setup-Service |
| IT-Systemhäuser | Individuelle Lösungen | Teuer, kein standardisiertes KI-Angebot |
| **PrivateMind** | **Hardware + Service + Support** | **Komplettlösung aus einer Hand** |

### Differenzierung

PrivateMind konkurriert nicht mit Cloud-Anbietern um Features. Der USP ist die Kombination aus:

1. **Datensouveränität** \- Alles bleibt lokal\, DSGVO\-konform by design
2. **Null-Expertise-Anforderung** \- Funktioniert out of the box
3. **Laufende Betreuung** \- Nicht kaufen und allein gelassen werden
4. **NVIDIA-Ökosystem** \- Gleicher Software\-Stack wie im Rechenzentrum \(CUDA\, TensorRT\-LLM\)

***

## 4\. Produkt & Dienstleistung

### Hardware-Plattform: ASUS Ascent GX10

Alle PrivateMind-Appliances basieren auf dem ASUS Ascent GX10, einer kompakten KI-Workstation auf Basis des NVIDIA GB10 Grace Blackwell Superchips. ASUS ist der einzige OEM, der den GX10 in mehreren SSD-Konfigurationen anbietet.

**Technische Eckdaten (pro Gerät):**

| Merkmal | Spezifikation |
| ------- | ------------- |
| Chip | NVIDIA GB10 (Grace Blackwell) |
| GPU | Blackwell, 1 PFLOP FP4 AI-Leistung |
| RAM | 128 GB LPDDR5X unified memory |
| Storage | 1 TB / 2 TB / 4 TB NVMe SSD (je nach Produktlinie) |
| Netzwerk | ConnectX-7 200Gbps, 10GbE, Wi-Fi 7 |
| Clustering | Zwei Geräte via QSFP-Kabel direkt verbindbar (256 GB Speicherpool) |
| Formfaktor | 150 x 150 x 51 mm, 1,48 kg |
| Stromverbrauch | 240W (USB-C Netzteil) |
| OS | NVIDIA DGX OS (Ubuntu-basiert) |

### Produktlinien

|  | **PrivateMind Standard** | **PrivateMind Professional** | **PrivateMind Premium** |
| --- | -------------------- | ------------------------ | ------------------- |
| Hardware | 1x ASUS Ascent GX10 | 1x ASUS Ascent GX10 | **2x ASUS Ascent GX10 (Cluster)** |
| SSD | 1 TB | 2 TB | **2x 2 TB** |
| Unified Memory | 128 GB | 128 GB | **256 GB** |
| Max. Modellgröße | Bis 70B (FP16), bis 200B (4-bit) | Bis 70B (FP16), bis 200B (4-bit) | **Bis 200B (FP16), bis 405B (4-bit)** |
| Zielgruppe | Kleine Büros, Einstieg | Mittelstand, Viel-Nutzer | Anspruchsvolle Anwendungen, große Teams |
| **Hardware-EK (ca.)** | **\~$3.287 (\~€3.050)** | **\~$3.829 (\~€3.550)** | **\~$7.658 (\~€7.100)** |
| **Hardware-VK (ca.)** | **€3.800** | **€4.500** | **€9.500** |

**Warum ASUS:**

* **Günstigstes GB10-System am Markt** (bis zu €1.700 unter NVIDIA DGX Spark)
* **Einziger OEM mit drei SSD-Varianten** (1TB / 2TB / 4TB)
* **ASUS bietet keinen Support** \- PrivateMind füllt diese Lücke als Alleinstellungsmerkmal
* **Identische Hardware** wie DGX Spark - gleicher GB10-Chip, gleicher Software-Stack

### Preisvergleich: ASUS GX10 vs. Wettbewerb (alle GB10-basiert)

| Hersteller | Modell | SSD | US-Preis |
| ---------- | ------ | --- | -------- |
| **ASUS Ascent GX10** | **GG0010BN** | **1 TB** | **ab $3.287** |
| **ASUS Ascent GX10** | **GG0020BN** | **2 TB** | **ab $3.829** |
| **ASUS Ascent GX10** | **GG0016BN** | **4 TB** | **ab $4.358** |
| NVIDIA DGX Spark | Founders Edition | 4 TB | $4.699 |
| Gigabyte AI TOP ATOM | ATAGB10-9000 | 4 TB | ab $4.299 |
| MSI EdgeXpert | 11SUS | 4 TB | ab $3.975 |
| Acer Veriton | VGN100 | 4 TB | ab $4.166 |
| Lenovo ThinkStation PGX | - | 1-4 TB | \~$3.000-4.000 |
| Dell Pro Max GB10 | - | 1 TB+ | \~$3.000-3.500 |

*Hinweis: NVIDIA hat den DGX-Spark-Preis im Februar 2026 um $700 erhöht (von $3.999 auf $4.699) aufgrund weltweiter LPDDR5X-Engpässe. Weitere Preissteigerungen sind möglich.*

### Software-Stack

Jede PrivateMind-Appliance wird mit folgendem vorinstallierten Software-Stack ausgeliefert:

* **NVIDIA DGX OS** mit CUDA 13, cuDNN, TensorRT-LLM
* **Kuratierte LLM-Auswahl**: Aktuell optimierte Modelle (z.B. Llama 3.x, DeepSeek, Qwen, Gemma) in verschiedenen Größen, abgestimmt auf den Kundenbedarf
* **PrivateMind Dashboard**: Eigenentwickelte Web-Oberfläche für Modellverwaltung, Chat-Interface, Dokumentenverarbeitung und Systemmonitoring
* **Automatische Update-Pipeline**: Sichere Auslieferung von Modell- und System-Updates
* **RAG-Integration** (Retrieval Augmented Generation): Anbindung an lokale Dokumente und Datenbanken des Kunden

### Service-Leistungen

* Initiale Einrichtung und Konfiguration (vor Ort oder remote)
* Laufende Modell-Updates und Optimierungen
* Technischer Support (gestaffelt nach Abo-Tier)
* Schulung der Mitarbeiter
* Optionales Finetuning auf Kundendaten
* Proaktives Monitoring und Wartung

***

## 5\. Geschäftsmodell & Preisgestaltung

### Überblick

PrivateMind kombiniert einen einmaligen Hardware-Anteil mit wiederkehrenden Service-Einnahmen. Der Schwerpunkt liegt auf dem Abo-Modell, das planbare Umsätze und langfristige Kundenbindung sichert.

### Option A: Hardware-Kauf + Service-Abo (getrennt)

**Hardware (einmalig):**

| Produktlinie | Konfiguration | VK (ca.) | Hardware-Marge |
| ------------ | ------------- | -------- | -------------- |
| PrivateMind Standard | 1x GX10, 1TB | €3.800 | \~€750 |
| PrivateMind Professional | 1x GX10, 2TB | €4.500 | \~€950 |
| PrivateMind Premium | 2x GX10 Cluster, je 2TB | €9.500 | \~€1.400 + €500 Cluster-Setup |

**Service-Abo (monatlich):**

|  | **Starter** | **Professional** | **Enterprise** |
| --- | ------- | ------------ | ---------- |
| **Monatspreis** | €149 | €349 | €699 |
| Vorkonfigurierte Modelle | Basis-Set (3-5 Modelle) | Erweitertes Set (8-10 Modelle) | Maßgeschneidert |
| Updates | Quartalsweise | Monatlich | Kontinuierlich |
| Support | E-Mail, 48h Reaktionszeit | E-Mail + Telefon, 24h | Priorität + Remote-Zugriff, 4h SLA |
| Monitoring | Basis-Dashboard | Dashboard + Alerts | Proaktives Monitoring |
| Modell-Tuning | - | Self-Service mit Anleitung | Durch PrivateMind inklusive |
| RAG-Setup | Anleitung | Einrichtungshilfe | Vollständige Einrichtung |
| Clustering | - | Gegen Aufpreis | Inklusive Setup + Wartung |
| Schulung | Quickstart-Guide | 2h Onboarding | Workshop + laufende Beratung |
| **Mindestlaufzeit** | 12 Monate | 12 Monate | 12 Monate |

### Option B: All-Inclusive-Bundle (Leasing + Service)

Hardware und Service in einem monatlichen Gesamtpaket. Steuerlich attraktiv für KMU (reine Betriebsausgabe, sofort absetzbar, kein Invest).

|  | **Bundle Standard** | **Bundle Professional** | **Bundle Premium** |
| --- | --------------- | ------------------- | -------------- |
| Hardware | 1x GX10, 1TB | 1x GX10, 2TB | 2x GX10 Cluster, je 2TB |
| Service-Level | Starter | Professional | Enterprise |
| **Monatspreis** | €299 | €499 | €999 |
| **Laufzeit** | 36 Monate | 36 Monate | 36 Monate |
| Nach Laufzeit | Hardware geht über, Service-Abo läuft weiter | wie links | wie links |

**Empfehlung:** Beide Optionen parallel anbieten. KMU mit Budget wählen Kauf + Abo. KMU, die Investitionen vermeiden wollen, wählen das Bundle.

### Einnahmeströme

1. **Hardware-Marge**: ca. €750-1.900 pro Verkauf (je nach Produktlinie)
2. **Monatliche Abo-Einnahmen**: €149-999 pro Kunde
3. **Einmalige Setup-Gebühren**: €500-2.000 (je nach Komplexität)
4. **Optionale Zusatzleistungen**: Finetuning-Projekte, Integrationsarbeit, Schulungen

***

## 6\. Marketing & Vertrieb

### Vertriebsstrategie

Der Vertrieb erfolgt zunächst direkt (Gründer-geführt) und wird schrittweise ausgebaut:

**Phase 1 (Monat 1-6): Direktvertrieb**

* Persönliche Akquise in der Region
* Zielgruppe: Kanzleien, Steuerberater, Beratungen, Arztpraxen
* Pilot-Installationen bei 3-5 Referenzkunden (ggf. zu reduzierten Konditionen)
* Aufbau von Case Studies und Testimonials

**Phase 2 (Monat 6-12): Skalierung**

* Website mit Online-Anfrage und Konfigurator
* Content Marketing: Blog, LinkedIn, Fachartikel zu "KI für KMU" und "DSGVO-konforme KI"
* Partnerschaften mit IT-Systemhäusern und Managed Service Providern
* Präsenz auf regionalen IHK-Veranstaltungen und KMU-Digitalisierungsmessen

**Phase 3 (ab Monat 12): Wachstum**

* Bundesweiter Vertrieb über Partner-Netzwerk
* Webinare und Online-Demos
* Referral-Programm für bestehende Kunden

### Positionierung & Messaging

**Kernbotschaften:**

* "Ihre Daten. Ihre KI. Auf Ihrem Schreibtisch."
* "KI für den Mittelstand - ohne Cloud, ohne Risiko."
* "Die KI-Abteilung, die in jedes Budget passt."

**Differenzierung im Markt:**

* Nicht "noch ein KI-Tool", sondern eine vollständige, betreute Infrastruktur
* Datenschutz nicht als Feature, sondern als Grundprinzip
* Deutsche Firma, deutscher Support, deutsche Werte (Gründlichkeit, Zuverlässigkeit)

***

## 7\. Organisation & Aufbau

### Gründer

**Raffael** \- Softwareentwickler mit langjähriger Erfahrung in der IT\-Branche\. Vereint technisches Know\-how mit praktischer Umsetzungsstärke\. Verantwortlich für Produktentwicklung\, technischen Support und Geschäftsführung\.

### Startaufstellung (Ein-Personen-GmbH)

In der Gründungsphase übernimmt der Gründer alle Rollen:

* Geschäftsführung und Vertrieb
* Technische Konfiguration und Support
* Software-Entwicklung (Dashboard, Update-Pipeline)
* Marketing und Kundenkommunikation

### Skalierungsplan

| Kundenanzahl | Personal | Rollen |
| ------------ | -------- | ------ |
| 1-10 | 1 (Gründer) | Alles |
| 10-25 | 2-3 | + Technischer Support, Vertrieb |
| 25-50 | 4-6 | + Entwickler, Marketing |
| 50+ | 7+ | Teamleiter, Account Manager |

### Unterstützende Infrastruktur

* **KI-Assistent (Lio)**: Unterstützt bei Recherche, Dokumentation, Automatisierung
* **Externe Dienstleister**: Steuerberater, Rechtsanwalt (GmbH-Gründung), ggf. Freelance-Entwickler
* **NVIDIA-Partner-Ökosystem**: Zugang zu technischer Dokumentation, Entwickler-Community, möglicherweise Inception-Programm für Startups

***

## 8\. Finanzplanung

### Gründungskosten (einmalig)

| Position | Betrag |
| -------- | ------ |
| GmbH-Gründung (Notar, Registergericht, Stammkapital) | €25.000 + ca. €1.500 Nebenkosten |
| Demo-/Testgerät (1x GX10, 2TB) | €3.550 |
| Website & Branding | €2.000 - 5.000 |
| Software-Entwicklung (Dashboard MVP) | Eigenleistung |
| Rechtsberatung (AGB, Verträge, Datenschutz) | €2.000 - 4.000 |
| Erstausstattung Büro/Werkzeug | €1.000 |
| **Gesamt** | **ca. €35.000 - 40.000** |

### Monatliche Fixkosten (Startphase)

| Position | Betrag/Monat |
| -------- | ------------ |
| Geschäftsführer-Gehalt | €3.000 - 4.000 |
| Büro/Coworking | €300 - 500 |
| Versicherungen (Betriebshaftpflicht etc.) | €150 - 300 |
| Software-Lizenzen & Tools | €100 - 200 |
| Marketing & Werbung | €200 - 500 |
| Telefon, Internet, Sonstiges | €100 |
| **Gesamt** | **ca. €4.000 - 5.500/Monat** |

### Umsatzszenarien (Jahr 1)

**Szenario Konservativ (10 Kunden im ersten Jahr):**

Annahme: 6x Standard, 3x Professional, 1x Premium

| Einnahme | Berechnung | Jahresbetrag |
| -------- | ---------- | ------------ |
| Hardware-Verkauf | 6x€3.800 + 3x€4.500 + 1x€9.500 | €46.300 |
| Hardware-Marge davon |  | ca. €8.550 |
| Setup-Gebühren | 10 x €750 (Ø) | €7.500 |
| Abo-Einnahmen (gestaffelt über 12 Mo.) | Ø €249/Mo, wachsend | ca. €18.000 |
| **Gesamteinnahmen (Marge + Setup + Abo)** |  | **ca. €34.000** |
| **Monatliche Kosten x 12** |  | **ca. €54.000 - 66.000** |
| **Ergebnis Jahr 1** |  | **ca. -€20.000 bis -€32.000** |

*Das erste Jahr ist eine Investitionsphase. Break-even wird realistisch im Laufe des zweiten Jahres erreicht.*

**Szenario Optimistisch (25 Kunden im ersten Jahr):**

Annahme: 12x Standard, 9x Professional, 4x Premium

| Einnahme | Berechnung | Jahresbetrag |
| -------- | ---------- | ------------ |
| Hardware-Verkauf | 12x€3.800 + 9x€4.500 + 4x€9.500 | €124.100 |
| Hardware-Marge davon |  | ca. €23.200 |
| Setup-Gebühren | 25 x €1.000 (Ø) | €25.000 |
| Abo-Einnahmen (gestaffelt über 12 Mo.) | Ø €349/Mo, wachsend | ca. €62.000 |
| **Gesamteinnahmen (Marge + Setup + Abo)** |  | **ca. €110.000** |
| **Ergebnis Jahr 1** |  | **ca. +€44.000 bis +€56.000** |

### Langfristige Umsatzentwicklung

|  | Jahr 1 | Jahr 2 | Jahr 3 |
| --- | ------ | ------ | ------ |
| Kunden (kumuliert) | 10-25 | 30-60 | 70-120 |
| Monatl. Recurring Revenue | €2.500-8.700 | €10.000-25.000 | €25.000-50.000 |
| Jahresumsatz (Marge+Abo+Setup) | €34-110k | €150-320k | €380-650k |

**Schlüsselmetrik:** Ab ca. 15 Kunden im Professional-Tier deckt der wiederkehrende Umsatz die monatlichen Fixkosten. Jeder weitere Kunde erhöht direkt die Profitabilität.

***

## 9\. Risikoanalyse

| Risiko | Eintrittswahrscheinlichkeit | Auswirkung | Gegenmaßnahme |
| ------ | --------------------------- | ---------- | ------------- |
| **LPDDR5X-Preise steigen weiter** | Hoch | Hardware wird teurer, Margen sinken | Langfristige Einkaufsverträge, Bundle-Modell puffert Preisschwankungen |
| **NVIDIA bringt günstigeren GB10-Nachfolger** | Mittel | Preiswertere Konkurrenzprodukte | Vorteil: PrivateMind kann schnell umsteigen, da Wert im Service liegt |
| **Cloud-KI wird "sicher genug"** | Niedrig-Mittel | Schwächt Datenschutz-Argument | Lokale Lösung bleibt für regulierte Branchen relevant; Positionierung diversifizieren |
| **Große IT-Systemhäuser kopieren das Modell** | Mittel | Wettbewerbsdruck | First-Mover-Vorteil nutzen, Nische verteidigen durch Spezialisierung und Kundennähe |
| **Langsame Kundenakquise** | Mittel-Hoch | Cash-Flow-Probleme im Jahr 1 | Niedrige Fixkosten, Pilot-Kunden früh gewinnen, ggf. Gründungsförderung nutzen |
| **Technische Komplexität des Supports** | Mittel | Einzelperson überlastet | Früh standardisieren, Monitoring automatisieren, Support-Prozesse dokumentieren |
| **Abhängigkeit von NVIDIA/ASUS** | Hoch | Lieferengpässe, Preisgestaltung außerhalb der Kontrolle | Mehrere OEM-Bezugsquellen (Dell, Lenovo als Backup), Fokus auf Service-Wert |

### Strategische Risikominimierung

* **Der Wert liegt im Service, nicht in der Hardware.** Selbst wenn ein Kunde die gleiche Hardware woanders kauft, hat er ohne PrivateMinds Support, Updates und Know-how kein funktionierendes System.
* **Niedrige Fixkosten zum Start.** Eine Ein-Personen-GmbH kann mit minimalem Overhead operieren.
* **Recurring Revenue glättet Schwankungen.** Ab einer kritischen Masse an Abonnenten wird das Geschäft vorhersehbar.

***

## 10\. Meilensteine & Zeitplan

| Zeitraum | Meilenstein | Aktivitäten |
| -------- | ----------- | ----------- |
| **Monat 1-2** | Gründung & Setup | GmbH gründen, Geschäftskonto, Versicherungen, Website-Domain sichern, Demo-Gerät beschaffen |
| **Monat 2-4** | Produktentwicklung | PrivateMind Dashboard MVP entwickeln, Update-Pipeline aufbauen, Standard-Konfigurationen definieren, Modell-Auswahl kuratieren |
| **Monat 3-5** | Pilotphase | 3-5 Pilotkunden gewinnen (ggf. vergünstigte Konditionen), Feedback sammeln, Prozesse validieren |
| **Monat 5-6** | Marktstart | Website live, Preismodell finalisiert, erste zahlende Kunden, Case Studies erstellen |
| **Monat 6-9** | Vertriebsaufbau | Content Marketing starten, IHK-Events, erste Partnerschaften mit IT-Dienstleistern |
| **Monat 9-12** | Skalierung | Prozesse standardisieren, ggf. erste Mitarbeiter (Support), 10-15 aktive Kunden |
| **Jahr 2** | Wachstum | Bundesweiter Vertrieb, Partner-Netzwerk, 30-60 Kunden, Break-even erreichen |
| **Jahr 3** | Konsolidierung | Team aufbauen, Produktportfolio erweitern, 70+ Kunden, nachhaltige Profitabilität |

***

## 11\. Fördermöglichkeiten

Als KI-Startup in Deutschland stehen verschiedene Förderprogramme zur Verfügung:

* **Gründungszuschuss (Agentur für Arbeit)**: Bei Gründung aus Arbeitslosigkeit, bis zu 15 Monate Unterstützung
* **EXIST-Gründerstipendium**: Für innovative technologiebasierte Gründungen
* **KfW-Gründerkredite**: ERP-Gründerkredit StartGeld bis €125.000
* **INVEST-Zuschuss**: Für Business Angels, die in PrivateMind investieren
* **Landesförderprogramme**: Je nach Bundesland zusätzliche Fördertöpfe für Digitalisierung und KI
* **NVIDIA Inception Programm**: Kostenlose technische Ressourcen, Cloud-Credits, Netzwerk-Zugang für KI-Startups

*Insbesondere der Gründungszuschuss der Agentur für Arbeit ist relevant, da der Gründer aktuell arbeitslos gemeldet ist.*

***

## 12\. Offene Punkte & nächste Schritte

Folgende Punkte müssen noch geklärt oder vertieft werden:

### Geschäftsmodell

* [ ] Hardware verkaufen, leasen oder beides anbieten? Steuerliche Auswirkungen prüfen
* [ ] Mindestlaufzeiten für Abos festlegen (12 vs. 24 Monate)
* [ ] Update-Auslieferung: Remote-Push vs. Kunden-initiiert vs. Hybrid
* [ ] Preismodell mit realen Marktdaten validieren (Gespräche mit potenziellen Kunden)

### Produkt

* [ ] PrivateMind Dashboard: Anforderungen definieren, MVP planen
* [ ] Standard-Modellauswahl festlegen (welche LLMs für welche Branchen)
* [ ] RAG-Pipeline entwickeln und testen
* [ ] Update-Mechanismus konzipieren und implementieren

### Rechtliches

* [ ] GmbH-Gründung: Notar, Satzung, Gesellschaftsvertrag
* [ ] AGB und Service-Verträge erstellen lassen
* [ ] Datenschutzkonzept (DSGVO-Dokumentation für Kunden)
* [ ] Haftungsfragen klären (KI-generierte Inhalte, Gewährleistung)

### Vertrieb

* [ ] Erste 5 potenzielle Pilotkunden identifizieren
* [ ] Pitch-Deck / Präsentation für Erstgespräche erstellen
* [ ] Website-Konzept und Domain sichern

### Finanzen

* [ ] Gründungszuschuss bei der Agentur für Arbeit beantragen
* [ ] Detaillierten Liquiditätsplan erstellen (Monat für Monat, 24 Monate)
* [ ] Steuerberater konsultieren (UStG, Leasing-Modelle, Körperschaftsteuer)

***

## Anhang

### A. Technischer Vergleich: Warum ASUS Ascent GX10

Im Rahmen der Hardware-Evaluation wurden folgende Plattformen geprüft:

| Plattform | Ergebnis |
| --------- | -------- |
| **ASUS Ascent GX10 (DGX Spark)** | ✅ Gewählt. Günstigstes GB10-System, drei SSD-Varianten, optimiert für LLM-Inferenz, Clustering möglich |
| NVIDIA DGX Spark Founders | ⚠️ Alternative. Identische Hardware, aber nur 4TB-Konfiguration, $4.699 (EU: €4.800) |
| NVIDIA Jetson Thor (T5000/T4000) | ❌ Ausgeschieden. Für Robotik optimiert, LLM-Performance schwach (Llama 70B: \~10 tok/s) |
| NVIDIA Jetson AGX Orin | ❌ Ausgeschieden. Ampere-Architektur (2 Gen. alt), max 64GB RAM |
| Dell Pro Max GB10 / Lenovo PGX / HP ZGX | ⚠️ Backup-Lieferanten. Gleiche Hardware, höherer Preis, aber mit Hersteller-Support |

### B. Marktdaten-Quellen

* NVIDIA Produktseiten und Marketplace
* ServeTheHome Reviews (ASUS Ascent GX10, Jetson Thor)
* Tom's Hardware, TechRadar, VideoCardz, CNX Software
* Bitkom Studie "KI im Mittelstand" (2025)
* Destatis KMU-Statistiken
* Newegg, Amazon - aktuelle Marktpreise (Stand: April 2026)

***

*Dieses Dokument ist ein lebender Entwurf. Alle Zahlen sind Schätzungen und müssen durch Marktvalidierung und professionelle Beratung (Steuerberater, Rechtsanwalt) geprüft werden.*