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
