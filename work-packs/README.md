# Work Packs — Importable CurseForge material

These are **separate themed pack skeletons** for NeoForge 1.21.1.
Use them as work material in CurseForge App.

Each pack is Packwiz-ready. After you add mods (or while using CurseForge App manually), you can export a `.zip` and import it.

## Packs included

| Folder | Theme | Purpose |
|--------|--------|--------|
| `create-factory/` | Create + automation | Tech / factory progression practice |
| `arcane-focus/` | Magic only | Ars / Iron's spell progression practice |
| `dungeon-delver/` | Exploration + dungeons | Structure / combat / loot practice |
| `vanilla-plus/` | Light QoL + performance | Clean baseline / control instance |

## How to use in CurseForge App (fast path)

You do **not** need Packwiz for day-to-day work material.

For each theme:

1. CurseForge App → Create instance → **1.21.1 NeoForge**
2. Name it after the pack (e.g. `Create Factory - Work`)
3. Install the suggested core mods from that pack's `CORE_MODS.md`
4. Copy that pack's `config/ftbquests` into the instance (if present)
5. Play / edit / break things

## How to produce an importable `.zip` later

From a pack folder that already has Packwiz mods added:

```bash
cd work-packs/create-factory
packwiz refresh
packwiz curseforge export -o ../../exports/create-factory.zip
```

Then in CurseForge App: Import the zip as a custom profile.

Or use the helper:

```bash
./scripts/export-work-pack.sh create-factory
```

## Rule

These are **work skeletons**, not finished 800-mod packs. Keep each one focused. That is the point.
