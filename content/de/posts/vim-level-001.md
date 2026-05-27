---
title: "Vi-ähnliche Editoren — Stufe 001"
date: 2026-05-27
categories: ["linux-cli"]
tags: ["article"]
---

![Du weißt, wenn du da reingehst, gibt es kein Zurück...](https://canada1.discourse-cdn.com/flex035/uploads/elm_lang/optimized/2X/4/4b33c60eecc49769f440412378b8fe07e06b98bf_2_378x375.jpeg)

## Was sind vi-ähnliche Editoren?

Eine Gruppe von Editoren mit derselben Tastaturlogik: modale Bearbeitung, bei der dieselbe Taste
je nach aktivem Modus unterschiedliche Dinge tut. Einmal gelernt — überall die Grundlagen bekannt.

Die drei, denen du am häufigsten begegnest:

- **vi** — das Original (~50 KB). In der Praxis selten; hauptsächlich ein historisches Artefakt.
- **vim-tiny** — eine abgespeckte vim-Version (~300 KB), oft auf minimalen Debian/Ubuntu-Systemen
  vorinstalliert. Keine Plugins, eingeschränkte Funktionen.
- **vim** — der Standard (~2–3 MB). Funktionsreich, erweiterbar mit Plugins. Das ist es, was du willst.

Auf den meisten modernen Systemen öffnet `vi` tatsächlich `vim` — es ist nur ein Alias.
Wenn du `vi` in der Dokumentation siehst, ist fast immer `vim` gemeint.

Installation von vim, falls nicht vorhanden:

    # Debian / Ubuntu
    sudo apt install vim

    # RHEL / Fedora
    sudo dnf install vim

Alle drei unterstützen Plugins und Erweiterungen — vims Ökosystem ist riesig.

---

## Modi — das Fundament

Ohne das Verständnis von Modi macht nichts anderes Sinn. Das ist das wichtigste Konzept.

| Modus | Wie einsteigen | Was er tut |
|-------|---------------|------------|
| Normal | `Esc` | Navigieren, Befehle ausführen — **Standardmodus** |
| Einfügen | `i` (vor Cursor) / `a` (nach Cursor) | Text eingeben |
| Befehl | `:` aus dem Normalmodus | Speichern, Beenden und mehr |

### Befehlsmodus (`:` aus dem Normalmodus)

| Befehl | Aktion |
|--------|--------|
| `:w` | Speichern |
| `:q` | Beenden |
| `:wq` | Speichern und beenden |
| `:q!` | Beenden ohne zu speichern |

> `:w` schlägt fehl, wenn du keine Schreibrechte für die Datei hast — in diesem Fall ist
> `:q!` dein Ausweg. Keine Änderungen gespeichert.

---

Grundlegende Navigation funktioniert normal — Pfeiltasten, Bild auf/ab, Pos1 und Ende
funktionieren im Normalmodus wie in jedem anderen Editor.

Diese Grundlagen decken ~50% der alltäglichen Anwendungsfälle ab. Für manche reicht das ein Leben lang.
