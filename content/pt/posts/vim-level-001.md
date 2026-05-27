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
