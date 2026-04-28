# Vorgehen

Triff pragmatische Annahmen und dokumentiere sie. Frage nur nach, wenn die Information weder in Quelle, Kontext noch bestehenden Rezepten zu finden ist

- Versuche das Problem im ganzen zu verstehen, bevor du mit der Umsetzung beginnst.

## Rezept extrahieren

- Wenn es ein Druckansicht gibt, dann bevorzuge diese zum Extrahieren, weil sie die Informationen meist kompakter darstellt, gerade in Bezug auf die Mengen der Zutaten.
- Nach Möglichkeit das Rezept für vier Personen auslegen.

## Aufbau eines Rezeptes

### Verzeichnis- und Dateistruktur

- Jedes Rezept kommt in ein eigenes Unterverzeichnis im Verzeichnis `rezepte/`.
- Der Verzeichnisname ist der Rezeptname in Mixed-Case (jeder Wortbestandteil groß geschrieben), mit Bindestrichen statt Leerzeichen, ohne Umlaute oder Sonderzeichen. Er soll so kurz wie möglich, aber eindeutig sein. Reine Kleinschreibung ist nicht zulässig.
  - Beispiel: `Kartoffelpuffer mit Apfelmus` → `Kartoffelpuffer-mit-Apfelmus`
- Das Rezept wird als Markdown-Datei mit dem Namen `rezept.md` im Unterverzeichnis gespeichert.
- Ein passendes Bild wird neben der Markdown-Datei als `rezept.{ext}` abgelegt, wobei die Endung der Quelldatei erhalten bleibt (z. B. `rezept.jpg`, `rezept.png`).
- Existiert kein Bild, aber ein Video, extrahiere einen repräsentativen Frame – idealerweise das fertige Gericht.

### Template der Markdown-Datei

Jedes Rezept folgt diesem Schema:

```markdown
# {Rezeptname}

[Quelle]({url-oder-quellenangabe})
![{Rezeptname}](rezept.jpg)

## Zutaten

- {Menge} {Zutat}
- ...

## Zubereitung

1. {Schritt}
2. ...
```

Das Rezept `Kartoffelpuffer-mit-Apfelmus` dient als konkrete Referenzimplementierung.

### Duplikate

- Prüfe vor dem Anlegen, ob das Rezept (oder ein sehr ähnliches) bereits existiert.
- Bei einem Duplikat: frage nach, ob überschrieben, als Variante (z. B. `kartoffelpuffer-apfelmus-v2`) angelegt oder abgebrochen werden soll.

## Indizes anlegen bzw. aktualisieren

### Struktur

- Jeder Index liegt als eigene Markdown-Datei im Verzeichnis `indizes/`.
- Die Dateinamen sind deutsch und in Kleinbuchstaben (z. B. `fleisch.md`, `kartoffeln.md`, `salate.md`).
- Zusätzlich existiert `rezepte/index.md` als alphabetische Gesamtübersicht aller Rezepte.

### Hauptzutaten-Indizes

- Standard-Indizes nach Hauptzutat: `fleisch`, `fisch`, `eier`, `kartoffeln`, `reis`, `pasta`, `hülsenfrüchte`, `gemüse`, `salate`.
- Existiert noch kein passender Index für eine klare Hauptzutat, lege einen neuen an.
- Ein Rezept wird in **alle** passenden Hauptzutat-Indizes einsortiert (ein Hähnchengulasch mit Reis gehört in `fleisch` *und* `reis`).
- **Ausnahme:** Salate erscheinen ausschließlich im Index `salate`, nicht zusätzlich in den Zutaten-Indizes.

### Heuristik für Nebenzutaten

- Ein Rezept gehört nur dann in einen Zutaten-Index, wenn die Zutat **prägend** für das Gericht ist.
- Beispiel Eier: Omelett, Rührei, Eierstich → `eier`. Ein Kuchen mit 3 Eiern als Bindemittel → **nicht** in `eier`.
- Im Zweifel: Würde jemand, der gezielt nach dieser Zutat sucht, dieses Rezept erwarten?

### Pflege

- Nach jedem neuen oder geänderten Rezept: alle betroffenen Indizes aktualisieren.
- Rezepte, die in keinem Index auftauchen, aber dort erscheinen müssten, werden ergänzt.
- Alle Rezepte innerhalb eines Index werden alphabetisch sortiert.

## Abschluss

- Nach jeder Änderung `just lint` ausführen.
- Alle gemeldeten Fehler müssen beseitigt werden, bevor die Aufgabe als abgeschlossen gilt.
- Schlägt `just lint` aufgrund bestehender, nicht von dir verursachter Inkonsistenzen fehl: melde dies explizit und frage, ob die Altlasten im gleichen Zug mitrepariert werden sollen.
