# AGENTS.md

Hinweise für Coding-Agents in diesem Repo.

## Was dieses Repository ist

Kuratierte Sammlung deutscher Rezepte (Markdown), meist aus Rezept-Webseiten extrahiert. Kein Build — nur Inhalte plus Linting. Bilder werden zur besseren Lesbarkeit auf eine Breite von **400px** skaliert (Seitenverhältnis beibehalten).

## Maßgebliche Spezifikationen

`docs/rezept-hinzufuegen.md` regelt Layout, Markdown-Template, Index-Pflege, Duplikat-Handling, Abschluss-Schritte. **Vor Anlegen/Ändern von Rezepten lesen.** Bei Widerspruch zu dieser Datei: Spezifikationen gewinnt.

## Lint

`just lint` (MegaLinter via Docker: `rumdl` + `yamllint`) nach jeder Änderung. Konfig: `.mega-linter.yml`; `MD013` bewusst deaktiviert.

## Inhalts-Architektur (drei synchrone Schichten)

1. `rezepte/{slug}/rezept.md` + `rezept.{ext}` — Bild-Extension bleibt Original.
2. `rezepte/index.md` — alphabetische Gesamtübersicht.
3. `indizes/{thema}.md` — Rezept in **alle** passenden Hauptzutat-Indizes einsortieren. **Ausnahmen:** Salate erscheinen exklusiv in `salate.md`, Backwaren exklusiv in `backwaren.md`. Beide müssen jedoch (wie alle anderen Rezepte) in der Gesamtübersicht `rezepte/index.md` aufgeführt werden. Alle Indizes sind stets alphabetisch zu sortieren.

Einstieg: `index.md` im Repo-Root. Referenzrezept: `rezepte/Kartoffelpuffer-mit-Apfelmus/`.
