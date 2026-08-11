# Arcane Dungeon Tech

**NeoForge 1.21.1** • Magic + Exploration + Dungeons + Tech

## Testing

**Primary:** CurseForge App  
See `docs/CURSEFORGE_APP_TESTING.md`

## Automated CurseForge export

See **`docs/AUTOMATED_EXPORT.md`**

Quick local export (after mods are in Packwiz metadata):

```bash
./scripts/export-curseforge.sh
```

Or run the **Export CurseForge Pack** workflow from the GitHub Actions tab.

## What this repo contains

- Packwiz skeleton for clean distribution
- FTB Quests structure + starter chapter
- CurseForge App testing guide
- Automated export (local script + GitHub Actions)

## Practical order of work

1. Build & test the pack in **CurseForge App** (install core mods, copy quests, edit book)
2. When the mod list is stable, mirror it into Packwiz
3. Use the export script / Actions workflow to produce a CurseForge `.zip`
4. Re-import that zip into CurseForge App for final validation
5. Publish when ready

No mod JARs are stored in this repository by design.
