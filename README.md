# Arcane Dungeon Tech

**NeoForge 1.21.1** • Magic + Exploration + Dungeons + Tech

Distributed the **correct** way: **Packwiz metadata only**. No mod JARs are stored in this repository. Launchers download the mods.

## What this repo contains

- `pack.toml` + `index.toml` — Packwiz root
- `config/ftbquests/` — Quest structure + starter chapter
- `docs/` — Design documents + exact Packwiz workflow

## Quick start (for you, the pack author)

1. Install packwiz (`go install github.com/packwiz/packwiz@latest`)
2. Clone this repo
3. Follow **`docs/PACKWIZ_WORKFLOW.md`** to add the core mods with `packwiz modrinth install` / `packwiz curseforge install`
4. Run `packwiz refresh` after batches
5. Test in Prism / a NeoForge 1.21.1 instance
6. Export with `packwiz modrinth export` or `packwiz curseforge export` when ready

## Quest design

See `docs/QUEST_TREE_DESIGN.md` and the sample chapter in `config/ftbquests/quests/chapters/00_getting_started.snbt`.

Use `/ftbquests editing_mode true` in-game to expand the book.

## Core philosophy

- Theme first, mod count second.
- Magic path and Tech path run in parallel and meet in the mid/late game.
- Dungeons and structures feed both paths.
- Start with a stable ~150–250 mod core. Only expand after the loop feels good.

## Links

- Packwiz docs: https://packwiz.infra.link/
- This repo: https://github.com/serverusermc1337-sudo/Arcane-Dungeon-Tech-NeoForge-1.21.1
