# Testing with CurseForge App

Primary testing method for this pack.

## Option A — Fastest for development (recommended while building)

Use CurseForge App directly. Do **not** fight Packwiz until the pack is stable.

### Steps

1. Open **CurseForge App**
2. Create new Minecraft instance
   - Version: **1.21.1**
   - Modloader: **NeoForge** (latest recommended for 1.21.1)
   - Name: `Arcane Dungeon Tech - Dev`
3. Allocate **10–16 GB** RAM in instance settings
4. Install core mods from the in-app browser (search + install):

**Must-have first:**
- FTB Library
- FTB Quests
- FTB Teams (optional but useful)
- FTB XMod Compat
- Architectury API
- JEI (or EMI)

**Magic:**
- Ars Nouveau (+ any Ars addons you want)
- Iron's Spells 'n Spellbooks

**Tech:**
- Create
- Mekanism (or Oritech if you prefer that tech path)

**Exploration / Dungeons:**
- Terralith
- YUNG's API + YUNG's Better Dungeons (and other YUNG modules)
- When Dungeons Arise
- L_Ender's Cataclysm

**Performance / QoL:**
- Embeddium (or equivalent)
- FerriteCore
- ModernFix
- Jade
- AppleSkin
- Mouse Tweaks

5. Launch once. Confirm it starts without crashing.
6. Copy the quest files from this repo into the instance:

```
config/ftbquests/
```

from the GitHub repo → into the instance's `minecraft/config/ftbquests/` folder.

7. Launch again → `/ftbquests editing_mode true` and expand the quest book.

This is the fastest loop for building and testing the actual gameplay + quests.

---

## Option B — Packwiz → CurseForge export (for distribution / cleaner versioning)

When the core set is stable and you want a clean, version-controlled pack:

1. On your machine, use Packwiz to add the same mods (see `PACKWIZ_WORKFLOW.md`)
2. Run:

```bash
packwiz refresh
packwiz curseforge export
```

3. In CurseForge App → **Create Custom Profile** or **Import** the exported `.zip`
4. Test the imported instance

---

## Recommended development loop

1. Build & test heavily in CurseForge App (Option A)
2. Keep the quest files and configs in this GitHub repo
3. Once the core loop feels good, mirror the final mod list into Packwiz
4. Export and publish via CurseForge / Modrinth

Do **not** try to maintain 800 mods and a perfect Packwiz index while you are still designing the quests. Get a playable 150–250 mod core working first in the CurseForge App.
