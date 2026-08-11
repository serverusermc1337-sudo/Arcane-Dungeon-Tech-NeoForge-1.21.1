# Arcane Dungeon Tech

**NeoForge 1.21.1** • Magic + Exploration + Dungeons + Tech

## Testing method

**Primary:** CurseForge App  
See **`docs/CURSEFORGE_APP_TESTING.md`** for the exact steps.

## What this repo contains

- Packwiz skeleton (`pack.toml` + `index.toml`) for later clean distribution
- FTB Quests structure + starter chapter
- Design docs and workflows

## Quick path (right now)

1. Open CurseForge App
2. Create NeoForge **1.21.1** instance, 10–16 GB RAM
3. Install the core mods listed in `docs/CURSEFORGE_APP_TESTING.md`
4. Copy `config/ftbquests` from this repo into the instance
5. Launch → `/ftbquests editing_mode true` and build the quest book

Only after the core loop is fun and stable should you move the final mod list into Packwiz and export.

## Docs

- `docs/CURSEFORGE_APP_TESTING.md` — **start here**
- `docs/PACKWIZ_WORKFLOW.md` — for clean export later
- `docs/QUEST_TREE_DESIGN.md` — full chapter plan
- `docs/CORE_MODLIST.md` — theme-focused mod categories

## Distribution (later)

When ready:

```bash
packwiz curseforge export   # for CurseForge
packwiz modrinth export     # for Modrinth
```

No mod JARs are stored in this repository. That is intentional.
