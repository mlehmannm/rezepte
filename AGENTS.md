# AGENTS.md

Hinweise für Coding-Agents in diesem Repo.

## Was dieses Repo ist

Kuratierte Sammlung deutscher Rezepte (Markdown), meist aus Rezept-Webseiten extrahiert. Kein Build — nur Inhalte plus Linting.

## Maßgebliche Spec

`docs/rezept-hinzufuegen.md` regelt Layout, Markdown-Template, Index-Pflege, Duplikat-Handling, Abschluss-Schritte. **Vor Anlegen/Ändern von Rezepten lesen.** Bei Widerspruch zu dieser Datei: Spec gewinnt.

## Lint

`just lint` (MegaLinter via Docker: `rumdl` + `yamllint`) nach jeder Änderung. Konfig: `.mega-linter.yml`; `MD013` bewusst deaktiviert.

## Inhalts-Architektur (drei synchrone Schichten)

1. `rezepte/{Slug}/rezept.md` + `rezept.{ext}` — Bild-Extension bleibt Original.
2. `rezepte/index.md` — alphabetische Gesamtübersicht.
3. `indizes/{thema}.md` — Rezept in **alle** passenden Hauptzutat-Indizes einsortieren; Salate nur in `salate.md`.

Einstieg: `index.md` im Repo-Root. Referenzrezept: `rezepte/Kartoffelpuffer-mit-Apfelmus/`.

## Legacy-Abweichung

Bestehende Rezeptordner sind Mixed-Case (`Kartoffel-Lauch-Auflauf`); Spec fordert Kleinbuchstaben. Neue Ordner nach Spec, Bestand nicht als Muster kopieren.
