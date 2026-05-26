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
