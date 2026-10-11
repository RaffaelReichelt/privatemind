# Open-WebUI-Workspace-Architektur für PrivateMind

*Technische Annex zum Businessplan – Version 1.0*

## 1. Zweck dieses Dokuments

Dieses Dokument beschreibt, wie PrivateMind die Open-WebUI-Workspace-Funktionen (Models, Knowledge, Prompts, Skills, Tools/Functions) für Kundeninstallationen konfiguriert – sowie die Rolle von nanobot als externem Orchestrierungs-Layer. Es dient als technische Grundlage für die Appliance-Konfiguration und als Referenz für das eigene Pilotkunden-Setup ("Dogfooding").

## 2. Grundarchitektur: Eine Instanz pro Kunde

Open WebUI ist architektonisch als **Single-Tenant-System** konzipiert. Der Admin-Account einer Instanz hat de facto root-äquivalenten Zugriff (direkter Datenbankzugriff, Functions mit beliebig ausführbarem Python-Code, uneingeschränkte Sicht auf alle Nutzerdaten). Eine belastbare Mandantentrennung *zwischen* voneinander unabhängigen Kunden ist innerhalb einer einzigen Instanz nicht vorgesehen.

**Konsequenz für PrivateMind:** Das bestätigt das bestehende Appliance-Modell architektonisch. Jede ausgelieferte ASUS-Ascent-GX10-Box betreibt genau eine Open-WebUI-Instanz für genau einen Kunden. Es findet keine Mandantentrennung auf Software-Ebene innerhalb einer geteilten Instanz statt – sie ist schlicht nicht nötig, weil die Hardware- und Instanztrennung sie bereits physisch herstellt. Dies ist zugleich ein verkaufsargumentativ nutzbarer Punkt gegenüber Cloud-SaaS-Wettbewerbern: keine geteilte Infrastruktur, keine geteilte Datenbank, keine Restunsicherheit über Mandantengrenzen.

Innerhalb einer Kundeninstanz (z. B. mehrere Anwälte einer Kanzlei oder mehrere Mitarbeitende eines Handwerksbetriebs) erfolgt die Feinsteuerung über Gruppen und Zugriffsrechte (siehe Abschnitt 7).

## 3. Models – kuratierte Presets statt Rohmodell-Zugriff

Ein Workspace-Model in Open WebUI ist eine Konfigurationsschicht über einem Basismodell: Systemprompt, gebundene Knowledge-Bases, Tools, Skills und Parameter-Overrides werden zu einem wiederverwendbaren Preset gebündelt. Nutzer wählen im Modell-Picker nur die kuratierten Presets; das rohe Basismodell bleibt für Administratoren erreichbar, ist für Endnutzer aber nicht sichtbar.

### 3.1 Empfohlene Preset-Struktur

| Preset | Basismodell | Zielgruppe | Kernkonfiguration |
|---|---|---|---|
| Kanzlei-Assistent | Mistral Small 3.x / Apertus 70B | Rechtsanwaltskanzleien | Datenschutz-fokussierter Systemprompt, mandatsgetrennte Knowledge-Base, restriktive Tool-Freigabe |
| Handwerk-Assistent | Mistral Small 3.x | Handwerksbetriebe | Effizienz-fokussierter Systemprompt, Angebots-/Rechnungs-Kontext, Kalender-/Terminlogik über nanobot |
| PrivateMind-Pilot | wie Kundenpreset | Interner Gebrauch (Raffael) | Identische Konfiguration wie die auszurollenden Kundenpresets, zu Testzwecken |

### 3.2 Governance-Hinweis

Globale Defaults (z. B. Code-Interpreter deaktivieren, feste Temperatur, Function-Calling-Pflicht) lassen sich zentral setzen; einzelne Presets können sie bei Bedarf überschreiben. Für SME-Kunden empfiehlt sich ein restriktiver Default, der pro Preset gezielt gelockert wird – nicht umgekehrt.

## 4. Knowledge – RAG-Wissensbasen mit OpenSearch-Backend

Knowledge-Bases sind die durchsuchbaren Dokumentensammlungen, die einem Modell zugeordnet werden. Der Vektor-Backend-Anschluss erfolgt über die Umgebungsvariablen `VECTOR_DB=opensearch`, `OPENSEARCH_URL`, `OPENSEARCH_USERNAME`, `OPENSEARCH_PASSWORD`.

**Hinweis zur Versionsstabilität:** In der Vergangenheit gab es dokumentierte Fehlerfälle bei der OpenSearch-Anbindung (fehlende Client-Attribute beim Einfügen von Dateien). Vor Festlegung der Appliance-Referenzversion ist ein expliziter Test des Datei-Upload- und Retrieval-Pfads mit OpenSearch als Backend durchzuführen, bevor diese Konfiguration als Standard-Image ausgerollt wird.

### 4.1 Strukturempfehlungen

- **Verschachtelte Ordnerstruktur** je Mandant/Projekt nutzen – Knowledge-Bases unterstützen Unterverzeichnisse, was für die Mandatstrennung bei Kanzleikunden zentral ist.
- **Zwei Retrieval-Modi bewusst einsetzen:**
  - Semantische Suche (`query_knowledge_files`) für Fließtext, Verträge, Gutachten, PDFs – robust gegenüber umformulierten Fragen.
  - Werkzeugbasiertes Durchsuchen (`kb_exec`: `ls`, `tree`, `grep`, `cat`) für strukturierte Inhalte, Kalkulationstabellen, Konfigurationsdateien – präziser bei exakten Bezeichnern und Strukturzugriffen.
- Knowledge-Bases werden fest an das jeweilige Modell-Preset gebunden, nicht manuell pro Chat angehängt – das sichert Konsistenz im Kundenkontakt und verhindert versehentliches Cross-Mandat-Retrieval.

## 5. Prompts – Rollenbibliothek statt Einzelprompts

Prompts sind wiederverwendbare System- bzw. Slash-Command-Vorlagen, über `/` im Chat aufrufbar. Die bereits im Businessplan Version 2.1 vorhandenen E-Mail-Akquise-Templates pro Segment sollten nicht nur als Dokumentationsanhang existieren, sondern als aktive Prompt-Bibliothek in der jeweiligen Kundeninstanz hinterlegt werden – als segmentspezifische, sofort abrufbare Rollen- und Aufgabenprompts für Endnutzer.

## 6. Skills, Tools/Functions und nanobot – Arbeitsteilung

Open WebUI verfügt seit Version 0.9.0 über ein eigenständiges, natives Skills-Modul im Workspace. Die bisherige Annahme, dass wiederverwendbare Fähigkeiten und Werkzeuge ausschließlich in nanobot angesiedelt sind, ist damit nur noch teilweise zutreffend. Die folgende Arbeitsteilung wird empfohlen:

| Ebene | Funktionsweise | Einsatzbereich | Berechtigungsstufe |
|---|---|---|---|
| **Workspace Tools/Functions** | In-Process-Python, läuft direkt im Open-WebUI-Backend | Einfache, leichtgewichtige Erweiterungen (z. B. Datum/Uhrzeit, einfache Berechnungen) | Nur für PrivateMind als Betreiber – Tool-Zugriff ist funktional root-äquivalent (beliebiger Python-Code, `exec()`-Ausführung) und darf keinem Kundenmitarbeitenden gewährt werden |
| **Skills (nativ, neu)** | Markdown-Dateien mit YAML-Frontmatter, progressiv geladen (Katalog immer sichtbar, Volltext bei Aktivierung) | Wiederverwendbare Arbeitsanweisungen und Workflows innerhalb des Chats – z. B. "Prüfung eines Bauvertrags auf Formfehler" oder "Erstellung eines Handwerker-Angebots nach PrivateMind-Muster" | Über normale Zugriffsrechte pro Nutzer/Gruppe steuerbar |
| **nanobot (extern, MCP-Orchestrierung)** | Externer Agenten-Layer, per MCP/OpenAPI angebunden | Alles, was über reine Textarbeit im Chat hinausgeht: Zugriff auf externe Systeme, mehrstufige Agentenworkflows, Aktionen über mehrere Backends hinweg (z. B. Terminbuchung, DMS-Ablage, Systemintegration) | Getrennt vom Open-WebUI-Berechtigungsmodell, eigene Zugriffskonfiguration |

**Grundregel:** Skills für Wissen und Anleitungen *innerhalb* des Chats, nanobot für Aktionen *außerhalb* des Chats (Systemintegration). Tools/Functions bleiben ausschließlich Betreiberebene.

## 7. Zugriffssteuerung innerhalb einer Kundeninstanz

Für Kunden mit mehreren Mitarbeitenden (z. B. mehrköpfige Kanzleien) erfolgt die Feinsteuerung über Gruppen und Ressourcen-Sichtbarkeit (Private / Public / Shared-mit-Gruppe) für Models, Knowledge, Prompts und Tools.

**Wichtig:** Berechtigungen sind additiv – gehört ein Nutzer mehreren Gruppen an, erhält er die Vereinigungsmenge aller Rechte. Für Kanzleikunden mit strikter Mandatstrennung müssen Gruppen daher überschneidungsfrei geschnitten werden, da sich sonst Zugriffsrechte über Mandatsgrenzen hinweg summieren und die Datenschutz-Kernaussage des Produkts untergraben.

## 8. Empfehlung für das Pilotkunden-Setup (Raffael / PrivateMind GmbH)

Für die eigene Nutzung als Pilotkunde wird empfohlen, exakt die Konfiguration zu verwenden, die später an echte Kunden ausgerollt wird (identisches Modell-Preset, identische Knowledge-Base-Struktur, identische Skills-Bibliothek). Damit dient die eigene Instanz gleichzeitig als:

1. Funktionstest der Appliance-Konfiguration vor Kundenauslieferung
2. Referenzumgebung für die Entwicklung neuer Skills und Prompts
3. Demonstrationsumgebung für Vertriebsgespräche mit potenziellen Pilotkunden

## 9. Offene Punkte

- Test der OpenSearch-Anbindung auf der für die Appliance vorgesehenen Open-WebUI-Referenzversion (siehe Abschnitt 4)
- Definition der ersten Skills-Bibliothek pro Segment (Kanzlei, Handwerk)
- Festlegung der nanobot-MCP-Anbindungen pro Segment (welche externen Systeme werden zuerst integriert)
- Entscheidung, ob Gruppenrechte pro Kundeninstanz standardmäßig vorkonfiguriert ausgeliefert werden oder Teil des Onboarding-Prozesses sind
