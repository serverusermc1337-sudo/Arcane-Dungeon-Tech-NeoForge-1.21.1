# Multiple work packs for CurseForge App

You asked for multiple other modpacks as work material. They live under `work-packs/`.

## Fastest usage (no Packwiz required)

For each pack folder:

1. Create a **new NeoForge 1.21.1 instance** in CurseForge App
2. Install mods listed in that pack's `CORE_MODS.md`
3. Copy `config/ftbquests` from the pack folder into the instance
4. Launch and work

## Packs

- **create-factory** — Create / automation practice
- **arcane-focus** — Magic-only practice
- **dungeon-delver** — Structures / bosses / exploration practice
- **vanilla-plus** — Clean performance/QoL baseline

## Optional export later

```bash
./scripts/export-work-pack.sh create-factory
./scripts/export-work-pack.sh arcane-focus
./scripts/export-work-pack.sh dungeon-delver
./scripts/export-work-pack.sh vanilla-plus
```

Exported zips go to `exports/` (gitignored ideally). Import those zips into CurseForge App.

Remember: export only contains mods you previously added with Packwiz. For pure work material, the manual CurseForge App method is enough.
