# Arcane Dungeon Tech

**NeoForge 1.21.1** • Magic + Exploration + Dungeons + Tech

## Testing

**Primary:** CurseForge App  
See `docs/CURSEFORGE_APP_TESTING.md`

## Automated CurseForge export

See `docs/AUTOMATED_EXPORT.md`

```bash
./scripts/export-curseforge.sh
```

Or run **Export CurseForge Pack** from the GitHub Actions tab.

## Troubleshooting

See **`docs/TROUBLESHOOTING.md`** for common launch, quest, Packwiz, and import failures.

## What this repo contains

- Packwiz skeleton for clean distribution
- FTB Quests structure + starter chapter
- CurseForge App testing guide
- Automated export (local script + GitHub Actions)
- Troubleshooting guide

## Practical order of work

1. Build & test in **CurseForge App**
2. Copy quest files from this repo into the instance
3. Expand the quest book in-game
4. When the mod list is stable, mirror it into Packwiz
5. Export and re-import the CurseForge zip for final validation

No mod JARs are stored in this repository by design.
