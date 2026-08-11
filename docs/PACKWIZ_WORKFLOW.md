# Packwiz Workflow — Arcane Dungeon Tech

This pack is distributed as **metadata only**. The launcher (or packwiz-installer) downloads the actual mod JARs.

## Prerequisites

1. Install Go (if you don't have it).
2. Install packwiz:

```bash
go install github.com/packwiz/packwiz@latest
```

Make sure `~/go/bin` (or your GOPATH/bin) is on your PATH.

## First-time setup on your machine

```bash
git clone https://github.com/serverusermc1337-sudo/Arcane-Dungeon-Tech-NeoForge-1.21.1.git
cd Arcane-Dungeon-Tech-NeoForge-1.21.1
```

The `pack.toml` and empty `index.toml` are already present.

## Recommended order to add core mods

Run these from the pack root. Prefer Modrinth when a mod is available there; fall back to CurseForge.

```bash
# Core libraries & FTB
packwiz modrinth install architectury-api -y
packwiz curseforge install ftb-library-forge -y
packwiz curseforge install ftb-quests-forge -y
packwiz curseforge install ftb-teams-forge -y
packwiz curseforge install ftb-xmod-compat -y

# Performance
packwiz modrinth install embeddium -y          # or sodium if preferred on NeoForge
packwiz modrinth install ferritecore -y
packwiz modrinth install modernfix -y

# Magic
packwiz modrinth install ars-nouveau -y
packwiz modrinth install irons-spells-n-spellbooks -y

# Tech
packwiz modrinth install create -y
# Then carefully add selected Create addons one by one
packwiz modrinth install mekanism -y           # or oritech if you prefer that path

# Exploration / structures
packwiz modrinth install terralith -y
packwiz curseforge install yungs-api -y
packwiz curseforge install yungs-better-dungeons -y
# Continue with other YUNG modules, When Dungeons Arise, Cataclysm, etc.

# QoL
packwiz modrinth install jei -y
packwiz modrinth install jade -y
packwiz modrinth install appleskin -y
```

After every batch of 5–10 mods:

```bash
packwiz refresh
git add .
git commit -m "Add batch of core mods"
```

## Export for distribution

### Modrinth (.mrpack)

```bash
packwiz modrinth export
```

Upload the resulting `.mrpack` to Modrinth.

### CurseForge (.zip)

```bash
packwiz curseforge export
```

Upload the zip through the CurseForge author panel.

## Playing the pack

- **Prism Launcher / MultiMC**: Use packwiz-installer bootstrap pointing at the raw `pack.toml` URL on GitHub, or import the exported `.mrpack` / CurseForge zip.
- **CurseForge App / Modrinth App**: Install from the published pack page once you have exported and uploaded.

## Updating mods later

```bash
packwiz update --all
packwiz refresh
git add .
git commit -m "Update mods"
```

## Important rules

- Never commit `.jar` files.
- Always run `packwiz refresh` after adding/removing mods.
- Test the instance after every significant batch.
- Pin NeoForge version in `pack.toml` once you have a known-good combination.
