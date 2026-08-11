# Troubleshooting — Arcane Dungeon Tech

Practical fixes for the most common failures while building and testing this pack.

---

## 1. Instance will not start (CurseForge App)

### Black screen / immediate exit
- Confirm loader is **NeoForge**, not Forge or Fabric
- Confirm Minecraft version is **1.21.1**
- Allocate **at least 8 GB**, preferably **10–16 GB** RAM
- Remove the last 5–10 mods you added and relaunch (isolate the crash)
- Check `logs/latest.log` and `crash-reports/` inside the instance folder

### "Incompatible mods" / dependency errors
- Install missing libraries first: Architectury, Cloth Config, Balm/Puzzles Lib, FTB Library, GeckoLib, etc.
- FTB Quests requires **FTB Library** (and usually **FTB XMod Compat** for JEI integration)
- Do not mix Forge-only jars into a NeoForge 1.21.1 instance

### Out of memory
- Raise allocated RAM in CurseForge App instance settings
- Large structure + magic + tech packs need more memory than kitchen-sink claims suggest
- Close other heavy apps while testing

---

## 2. FTB Quests problems

### Quest book is empty or missing chapters
1. Confirm `config/ftbquests/quests/` exists in the instance
2. Confirm these files are present:
   - `chapter_groups.snbt`
   - `chapters/00_getting_started.snbt`
   - `lang/en_us.snbt` (can be minimal)
3. Fully quit the game, then relaunch (do not only `/reload` the first time)
4. Run `/ftbquests reload`

### Cannot edit quests
```
/ftbquests editing_mode true
```
You need sufficient permission (singleplayer or op on server).

### Quests reference missing items
- Item tasks break if the mod that provides the item is not installed
- Either install the mod or change the task to a vanilla/checkmark task while developing
- After changing SNBT by hand, run `/ftbquests reload`

### Progress stuck / wrong completion state
```
/ftbquests change_progress <player> reset-all
```
Use carefully. This wipes quest progress for that player.

---

## 3. Packwiz / export problems

### Export zip is empty or almost empty
**Cause:** No mods have been added to Packwiz metadata yet.

Fix:
```bash
packwiz curseforge install <slug> -y
# or
packwiz modrinth install <slug> -y
packwiz refresh
./scripts/export-curseforge.sh
```

### `packwiz: command not found`
```bash
go install github.com/packwiz/packwiz@latest
# ensure ~/go/bin is on your PATH
```

### CurseForge export complains about Modrinth-only mods
- Mods installed only from Modrinth are often embedded as JARs in the zip
- Prefer `packwiz curseforge install` when the mod exists on CurseForge
- Embedded JARs may need CurseForge staff approval when publishing

### GitHub Actions export fails
- Check the Actions log for `packwiz refresh` / `packwiz curseforge export` errors
- Confirm `pack.toml` and `index.toml` are valid
- An empty mod set still "succeeds" but produces a useless zip — populate mods first

---

## 4. Importing the exported zip into CurseForge App

### Import succeeds but instance is broken
- Create a **new** profile from the zip; do not overwrite a dirty dev instance
- Verify NeoForge version inside the imported profile matches what you tested
- Compare mod count in the imported profile vs your known-good dev instance

### "Invalid modpack" / import fails
- Re-run export after `packwiz refresh`
- Do not manually edit the zip structure
- Ensure the zip was produced by `packwiz curseforge export`, not a random folder zip

---

## 5. Gameplay / content issues

### Structures / dungeons never appear
- Travel far from spawn (many packs push large structures outward)
- Confirm structure mods and their APIs are actually installed (YUNG's API, etc.)
- New worlds only — existing chunks will not regenerate structures

### Magic or tech progression feels gated incorrectly
- That is a quest design issue, not a loader issue
- Use editing mode and adjust dependencies / rewards
- Keep early chapters short and rewarding

### Performance tanks after adding structure + biome mods
- Add performance mods early (Embeddium/Sodium equivalent, FerriteCore, ModernFix)
- Pre-generate chunks if running a server
- Avoid stacking every structure pack at once during early testing

---

## 6. Git / repo issues

### "I only see an image on GitHub"
You are looking at the social preview. Open the file list and click `README.md`, `docs/`, `config/`.

### Quest files not appearing in the instance
Copy the whole `config/ftbquests` directory from the repo into the instance's `minecraft/config/` folder. Do not copy only one file.

### Accidentally committed JARs
Remove them, ensure `.gitignore` contains `*.jar` and `mods/*.jar`, then commit the cleanup.

---

## 7. Quick isolation checklist

When something breaks:

1. Does a **fresh NeoForge 1.21.1 instance** with only FTB Quests + Library launch?
2. Does adding your quest `config/ftbquests` still launch?
3. Add mods in batches of 5–10 and launch after each batch
4. Read `latest.log` from the bottom upward for the first `ERROR` / `Exception`
5. Only then touch Packwiz export

Do not debug export, quests, and 50 new mods at the same time.

---

## Still stuck?

Provide all of the following when asking for help:

- Exact Minecraft + NeoForge version
- Whether you are on CurseForge App dev instance or imported export zip
- Last 50–100 lines of `latest.log` or the crash report
- Whether the problem is launch, quests, or export
- What you changed immediately before it broke
