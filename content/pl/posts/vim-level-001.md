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

```bash
# Debian / Ubuntu
sudo apt install vim

# RHEL / Fedora
sudo dnf install vim
```

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
| `:w` | Zapisz plik |
| `:q` | Wyjdź |
| `:wq` | Zapisz i wyjdź |
| `:q!` | Wyjdź bez zapisywania |

> `:w` zakończy się błędem jeśli nie masz uprawnień do zapisu pliku — w takim przypadku
> `:q!` to Twoje wyjście. Bez zapisywania zmian.

---

Podstawowa nawigacja działa normalnie — strzałki, Page Up/Down, Home i End działają
w trybie normalnym tak jak w każdym innym edytorze.

Te podstawy pokrywają ~50% codziennych przypadków. Niektórym wystarcza to przez całe życie.
