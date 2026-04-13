# AGENTS.md

## Vorgehen

- Triff keine Annahmen.
- Frage, wenn etwas unklar ist.
- Versuche das Problem im ganzen zu verstehen.

## Rezept extrahieren

- Wenn es ein Druckansicht gibt, dann bevorzuge diese zum Extrahieren, weil sie die Informationen meist kompakter darstellt, gerade in Bezug auf die Mengen der Zutaten.

## Aufbau eines Rezeptes

- Jedes Rezept kommt in ein eigenes Unterverzeichnis im Unterverzeichnis `rezepte`.
- Der Name des Unterverzeichnisses lautet wie das Rezept. Der Name sollte dabei so kurz wie möglich sein.
- Jedes Rezept wird als einzelne Markdown-Datei mit dem Namen `rezept.md` im Unterverzeichnis gespeichert.
- Verlinke das Ursprungsadresse des Rezeptes in der Markdown-Datei unterhalb der Überschrift.
- Ein passendes Bild, wenn vorhanden, wird neben der Markdown-Datei mit dem Namen `rezept` abgelegt, wobei die Endung der Quelldatei erhalten bleibt.
- Sollte es kein Bild aber ein Video geben, dann extrahiere ein Bild aus dem Video.
- Verlinke das Bild in der Markdown-Datei unterhalb der Überschrift.
- Ein gutes Beispiel zum Aufbau der Markdown-Datei findest du im Rezept `Kartoffelpuffer mit Apfelmus`.

## Indizes anlegen bzw. aktualisieren

- Nach dem Hinzufügen eines neuen Rezeptes müssen die Indizes angelegt bzw. aktualisiert werden.
- Es sollte Indizes nach Hauptzutaten geben, wie z.B.: Fleisch, Fisch, Eier, Kartoffeln, Reis.
- Beachte dabei, das Eier oft nur eine Nebenzutat sind.
- Jeder Index kommt in eine eigene Markdown-Datei im Unterveichnis `indizes`.
- Salate kommen nur in den Index für Salate.
- Die Markdown-Dateien bekommen einen deutschen Namen in Kleinbuchstaben.
- Rezepte, die noch nicht in den Indizes aufgelistet werden, müssen ergänzt werden.
- Jedes Rezept wird auch im Index im Unterverzeichnis `rezepte` eingetragen.
- Sortiere die Rezepte in allen Indizes alphabetisch.

## Abschluss

- Es muss immer eine Überprüfung aller Rezepte und Indizes erfolgen. Dazu muss `just lint` aufgerufen werden.
- Alle gemeldeten Fehler müssen beseitigt werden.
