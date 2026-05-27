#!/bin/bash
set -e

echo "=== Usuwanie starych postów ==="
rm -f content/de/posts/vi-shortcuts.md
rm -f content/pt/posts/vi-shortcuts.md
rm -f content/ru/posts/vi-shortcuts.md
rm -f content/en/posts/vi-shortcuts.md
rm -f content/pl/posts/vi-shortcuts.md

echo "=== Tworzenie struktury katalogów ==="
mkdir -p content/en/posts
mkdir -p content/de/posts
mkdir -p content/pl/posts
mkdir -p content/pt/posts
mkdir -p content/ru/posts
mkdir -p layouts/_partials

echo "=== EN: vim-level-001 ==="
cat > content/en/posts/vim-level-001.md << 'EOF'
---
title: "Vi-like editors — level 001"
date: 2026-05-27
categories: ["linux-cli"]
tags: ["article"]
---

![You know, if you go in there, there's no coming back...](https://canada1.discourse-cdn.com/flex035/uploads/elm_lang/optimized/2X/4/4b33c60eecc49769f440412378b8fe07e06b98bf_2_378x375.jpeg)

## What is a vi-like editor?

A group of editors that share the same keyboard logic: modal editing, where the same key does
different things depending on the active mode. Learn the pattern once — you know the basics everywhere.

The three you will most likely encounter:

- **vi** — the original (~50 KB). Rarely seen in practice; mostly a historical artifact.
- **vim-tiny** — a stripped-down vim (~300 KB), often preinstalled on minimal Debian/Ubuntu systems.
  No plugins, limited features.
- **vim** — the standard (~2–3 MB). Feature-rich, extensible with plugins. This is what you actually want.

On most modern systems, typing `vi` opens `vim` — it is just an alias. So when you see `vi`
in documentation, they almost always mean `vim`.

Install vim if it is missing:

    # Debian / Ubuntu
    sudo apt install vim

    # RHEL / Fedora
    sudo dnf install vim

All three support plugins and extensions — vim's ecosystem is enormous.

---

## Modes — the foundation

Without understanding modes, nothing else makes sense. This is the most important concept.

| Mode | How to enter | What it does |
|------|-------------|--------------|
| Normal | `Esc` | Navigate, run commands — **default mode** |
| Insert | `i` (before cursor) / `a` (after cursor) | Type text |
| Command | `:` from Normal mode | Save, quit, and more |

### Command mode (`:` from Normal)

| Command | Action |
|---------|--------|
| `:w` | Save |
| `:q` | Quit |
| `:wq` | Save and quit |
| `:q!` | Quit without saving |

> `:w` will fail if you do not have write permissions on the file — in that case `:q!` is
> your exit. No changes saved.

---

Basic navigation works fine with arrow keys, Page Up/Down, Home and End — just use them
normally while in Normal mode.

These basics cover ~50% of everyday use cases. For some people, that is enough for a lifetime.
EOF

echo "=== EN: vim-level-002 ==="
cat > content/en/posts/vim-level-002.md << 'EOF'
---
title: "Vi-like editors — level 002 [draft]"
date: 2026-05-27
categories: ["linux-cli"]
tags: ["draft"]
draft: true
---

*Work in progress.*

## Navigation

| Key | Action |
|-----|--------|
| `gg` | First line |
| `G` | Last line |
| `0` | Start of line |
| `$` | End of line |

## Editing

| Key | Action |
|-----|--------|
| `dd` | Cut entire line |
| `yy` | Copy entire line |
| `p` | Paste below cursor |
| `u` | Undo |

> **The pattern:** Vi is a language. `d` = delete, `y` = yank, `G` = end of file.
> Once you see the grammar, the rest follows naturally.
EOF

echo "=== PL: vim-level-001 ==="
cat > content/pl/posts/vim-level-001.md << 'EOF'
---
title: "Edytory vi-like — poziom 001"
date: 2026-05-27
categories: ["linux-cli"]
tags: ["article"]
---

![Wiesz, jeśli tam wejdziesz, nie ma odwrotu...](https://canada1.discourse-cdn.com/flex035/uploads/elm_lang/optimized/2X/4/4b33c60eecc49769f440412378b8fe07e06b98bf_2_378x375.jpeg)

## Czym są edytory vi-like?

Grupa edytorów dzieląca tę samą logikę klawiatury: edycja modalna, gdzie ten sam klawisz robi
różne rzeczy w zależności od aktywnego trybu. Naucz się raz — znasz podstawy wszędzie.

Trzy, które spotkasz najczęściej:

- **vi** — oryginał (~50 KB). Rzadko spotykany w praktyce; głównie artefakt historyczny.
- **vim-tiny** — okrojona wersja vima (~300 KB), często preinstalowana na minimalnych systemach
  Debian/Ubuntu. Bez wtyczek, ograniczone możliwości.
- **vim** — standard (~2–3 MB). Bogaty w funkcje, rozszerzalny przez wtyczki. To jest to, czego szukasz.

Na większości współczesnych systemów wpisanie `vi` otwiera `vim` — to po prostu alias.
Gdy widzisz `vi` w dokumentacji, prawie zawsze chodzi o `vim`.

Instalacja vima, jeśli go nie ma:

    # Debian / Ubuntu
    sudo apt install vim

    # RHEL / Fedora
    sudo dnf install vim

Wszystkie trzy obsługują wtyczki i rozszerzenia — ekosystem vima jest ogromny.

---

## Tryby — fundament

Bez zrozumienia trybów nic innego nie ma sensu. To najważniejsza koncepcja.

| Tryb | Jak wejść | Co robi |
|------|-----------|---------|
| Normalny | `Esc` | Nawigacja, wydawanie poleceń — **tryb domyślny** |
| Wstawiania | `i` (przed kursorem) / `a` (za kursorem) | Wpisywanie tekstu |
| Poleceń | `:` z trybu normalnego | Zapis, wyjście i więcej |

### Tryb poleceń (`:` z trybu normalnego)

| Polecenie | Akcja |
|-----------|-------|
| `:w` | Zapisz |
| `:q` | Wyjdź |
| `:wq` | Zapisz i wyjdź |
| `:q!` | Wyjdź bez zapisywania |

> `:w` zakończy się błędem jeśli nie masz uprawnień do zapisu — w takim przypadku
> `:q!` to Twoje wyjście. Bez zapisywania zmian.

---

Podstawowa nawigacja działa normalnie — strzałki, Page Up/Down, Home i End działają
w trybie normalnym tak jak w każdym innym edytorze.

Te podstawy pokrywają ~50% codziennych przypadków. Niektórym wystarcza to przez całe życie.
EOF

echo "=== PL: vim-level-002 ==="
cat > content/pl/posts/vim-level-002.md << 'EOF'
---
title: "Edytory vi-like — poziom 002 [draft]"
date: 2026-05-27
categories: ["linux-cli"]
tags: ["draft"]
draft: true
---

*W przygotowaniu.*

## Nawigacja

| Klawisz | Akcja |
|---------|-------|
| `gg` | Pierwsza linia |
| `G` | Ostatnia linia |
| `0` | Początek linii |
| `$` | Koniec linii |

## Edycja

| Klawisz | Akcja |
|---------|-------|
| `dd` | Wytnij całą linię |
| `yy` | Skopiuj całą linię |
| `p` | Wklej poniżej kursora |
| `u` | Cofnij |

> **Wzorzec:** Vi to język. `d` = delete, `y` = yank, `G` = koniec pliku.
> Gdy zobaczysz gramatykę — reszta przychodzi sama.
EOF

echo "=== DE: vim-level-001 ==="
cat > content/de/posts/vim-level-001.md << 'EOF'
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
EOF

echo "=== DE: vim-level-002 ==="
cat > content/de/posts/vim-level-002.md << 'EOF'
---
title: "Vi-ähnliche Editoren — Stufe 002 [Entwurf]"
date: 2026-05-27
categories: ["linux-cli"]
tags: ["draft"]
draft: true
---

*In Bearbeitung.*

## Navigation

| Taste | Aktion |
|-------|--------|
| `gg` | Erste Zeile |
| `G` | Letzte Zeile |
| `0` | Zeilenanfang |
| `$` | Zeilenende |

## Bearbeitung

| Taste | Aktion |
|-------|--------|
| `dd` | Ganze Zeile ausschneiden |
| `yy` | Ganze Zeile kopieren |
| `p` | Unterhalb einfügen |
| `u` | Rückgängig |

> **Das Muster:** Vi ist eine Sprache. `d` = delete, `y` = yank, `G` = Dateiende.
> Wer die Grammatik erkennt, lernt den Rest von selbst.
EOF

echo "=== PT: vim-level-001 ==="
cat > content/pt/posts/vim-level-001.md << 'EOF'
---
title: "Editores vi-like — nível 001"
date: 2026-05-27
categories: ["linux-cli"]
tags: ["article"]
---

![Você sabe, se entrar lá, não tem volta...](https://canada1.discourse-cdn.com/flex035/uploads/elm_lang/optimized/2X/4/4b33c60eecc49769f440412378b8fe07e06b98bf_2_378x375.jpeg)

## O que são editores vi-like?

Um grupo de editores que compartilham a mesma lógica de teclado: edição modal, onde a mesma tecla
faz coisas diferentes dependendo do modo ativo. Aprenda uma vez — você conhece o básico em todos.

Os três que você encontrará com mais frequência:

- **vi** — o original (~50 KB). Raramente visto na prática; principalmente um artefato histórico.
- **vim-tiny** — uma versão reduzida do vim (~300 KB), frequentemente pré-instalada em sistemas
  Debian/Ubuntu mínimos. Sem plugins, recursos limitados.
- **vim** — o padrão (~2–3 MB). Rico em recursos, extensível com plugins. É isso que você quer.

Na maioria dos sistemas modernos, digitar `vi` abre o `vim` — é apenas um alias.
Quando você vê `vi` na documentação, quase sempre é `vim`.

Instalar o vim, se não estiver disponível:

    # Debian / Ubuntu
    sudo apt install vim

    # RHEL / Fedora
    sudo dnf install vim

Todos os três suportam plugins e extensões — o ecossistema do vim é enorme.

---

## Modos — o fundamento

Sem entender os modos, nada mais faz sentido. Este é o conceito mais importante.

| Modo | Como entrar | O que faz |
|------|------------|-----------|
| Normal | `Esc` | Navegar, executar comandos — **modo padrão** |
| Inserção | `i` (antes do cursor) / `a` (após o cursor) | Digitar texto |
| Comando | `:` do modo Normal | Salvar, sair e mais |

### Modo de comando (`:` do modo Normal)

| Comando | Ação |
|---------|------|
| `:w` | Salvar |
| `:q` | Sair |
| `:wq` | Salvar e sair |
| `:q!` | Sair sem salvar |

> `:w` falhará se você não tiver permissão de escrita no arquivo — nesse caso `:q!`
> é sua saída. Nenhuma alteração salva.

---

A navegação básica funciona normalmente — setas, Page Up/Down, Home e End funcionam
no modo Normal como em qualquer outro editor.

Esses fundamentos cobrem ~50% dos casos de uso do dia a dia. Para alguns, isso é suficiente para a vida toda.
EOF

echo "=== PT: vim-level-002 ==="
cat > content/pt/posts/vim-level-002.md << 'EOF'
---
title: "Editores vi-like — nível 002 [rascunho]"
date: 2026-05-27
categories: ["linux-cli"]
tags: ["draft"]
draft: true
---

*Em preparação.*

## Navegação

| Tecla | Ação |
|-------|------|
| `gg` | Primeira linha |
| `G` | Última linha |
| `0` | Início da linha |
| `$` | Fim da linha |

## Edição

| Tecla | Ação |
|-------|------|
| `dd` | Recortar linha inteira |
| `yy` | Copiar linha inteira |
| `p` | Colar abaixo do cursor |
| `u` | Desfazer |

> **O padrão:** Vi é uma linguagem. `d` = delete, `y` = yank, `G` = fim do arquivo.
> Quando você vê a gramática, o resto vem naturalmente.
EOF

echo "=== RU: vim-level-001 ==="
cat > content/ru/posts/vim-level-001.md << 'EOF'
---
title: "Vi-подобные редакторы — уровень 001"
date: 2026-05-27
categories: ["linux-cli"]
tags: ["article"]
---

![Знаешь, если войдёшь туда — обратного пути нет...](https://canada1.discourse-cdn.com/flex035/uploads/elm_lang/optimized/2X/4/4b33c60eecc49769f440412378b8fe07e06b98bf_2_378x375.jpeg)

## Что такое vi-подобные редакторы?

Группа редакторов с одинаковой логикой клавиатуры: модальное редактирование, где одна и та же
клавиша делает разные вещи в зависимости от активного режима. Научись один раз — знаешь основы везде.

Три, с которыми столкнёшься чаще всего:

- **vi** — оригинал (~50 КБ). На практике встречается редко; в основном исторический артефакт.
- **vim-tiny** — урезанная версия vim (~300 КБ), часто предустановлена на минимальных системах
  Debian/Ubuntu. Без плагинов, ограниченные возможности.
- **vim** — стандарт (~2–3 МБ). Богатый функционал, расширяемый плагинами. Это то, что тебе нужно.

На большинстве современных систем команда `vi` открывает `vim` — это просто псевдоним.
Когда видишь `vi` в документации, почти всегда имеется в виду `vim`.

Установка vim, если его нет:

    # Debian / Ubuntu
    sudo apt install vim

    # RHEL / Fedora
    sudo dnf install vim

Все три поддерживают плагины и расширения — экосистема vim огромна.

---

## Режимы — основа основ

Без понимания режимов ничто другое не имеет смысла. Это самая важная концепция.

| Режим | Как войти | Что делает |
|-------|-----------|------------|
| Обычный | `Esc` | Навигация, команды — **режим по умолчанию** |
| Вставки | `i` (перед курсором) / `a` (после курсора) | Ввод текста |
| Команд | `:` из обычного режима | Сохранение, выход и другое |

### Режим команд (`:` из обычного режима)

| Команда | Действие |
|---------|----------|
| `:w` | Сохранить |
| `:q` | Выйти |
| `:wq` | Сохранить и выйти |
| `:q!` | Выйти без сохранения |

> `:w` завершится ошибкой, если у тебя нет прав на запись файла — в этом случае
> `:q!` — твой выход. Изменения не сохраняются.

---

Базовая навигация работает как обычно — стрелки, Page Up/Down, Home и End работают
в обычном режиме как в любом другом редакторе.

Эти основы покрывают ~50% повседневных случаев. Для некоторых этого хватает на всю жизнь.
EOF

echo "=== RU: vim-level-002 ==="
cat > content/ru/posts/vim-level-002.md << 'EOF'
---
title: "Vi-подобные редакторы — уровень 002 [черновик]"
date: 2026-05-27
categories: ["linux-cli"]
tags: ["draft"]
draft: true
---

*В разработке.*

## Навигация

| Клавиша | Действие |
|---------|----------|
| `gg` | Первая строка |
| `G` | Последняя строка |
| `0` | Начало строки |
| `$` | Конец строки |

## Редактирование

| Клавиша | Действие |
|---------|----------|
| `dd` | Вырезать всю строку |
| `yy` | Скопировать всю строку |
| `p` | Вставить ниже курсора |
| `u` | Отменить |

> **Паттерн:** Vi — это язык. `d` = delete, `y` = yank, `G` = конец файла.
> Как только видишь грамматику — остальное приходит само.
EOF

echo "=== Weryfikacja ==="
hugo --quiet && echo "OK: hugo build passed" || echo "ERROR: hugo build failed"

echo "=== Git ==="
git add .
git commit -m "refactor: clean up old posts, add vim-level-001 and 002 for all languages"
git push

echo "=== Done ==="
