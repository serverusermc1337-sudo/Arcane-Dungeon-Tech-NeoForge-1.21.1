# Arcane Dungeon Tech

**NeoForge 1.21.1** • Magic + Exploration + Dungeons + Tech

## Scope & Honesty

This is a **skeleton + design foundation**, not a finished 800-mod kitchen sink.

- Target theme: Magic (spellcasting + rituals), deep exploration, structure/dungeon crawling, and tech/automation with meaningful synergy.
- Loader: **NeoForge only** (1.21.1 standard).
- Recommended RAM: **10–16 GB** allocated. More if you push past ~400 mods.
- FTB Quests is the progression spine. The full quest tree design is documented; sample chapters are provided so you can expand in-game.

Requesting a complete, balanced, tested >800-mod pack + polished multi-chapter FTB book in one go is not realistic. Real packs of that size are multi-week/month efforts. This repo gives you the architecture, curated core, and quest design so you can build it properly.

## Recommended Workflow

1. Create a fresh NeoForge 1.21.1 instance in Prism Launcher or CurseForge App.
2. Install the core mods listed in `docs/CORE_MODLIST.md` first. Test for crashes.
3. Add performance & QoL layer next.
4. Use Packwiz (`pack.toml` is started) or the launcher to manage versions.
5. Enable FTB Quests editing mode (`/ftbquests editing_mode true`) and implement the chapters from the design doc.
6. Only then expand toward higher mod counts. Every addition must be tested.

## Folder Layout

```
.
├── README.md
├── pack.toml                 # Packwiz starter
├── docs/
│   ├── QUEST_TREE_DESIGN.md  # Full category & chapter plan
│   ├── CORE_MODLIST.md       # Curated high-value mods for the theme
│   └── EXPANDING_TO_800.md   # How (and why not) to go large
├── config/
│   └── ftbquests/
│       └── quests/
│           ├── chapter_groups.snbt
│           ├── chapters/
│           │   ├── 00_getting_started.snbt   # Sample complete chapter
│           │   └── ... (add more)
│           └── lang/
│               └── en_us.snbt
├── kubejs/                  # Optional scripts for recipe integration later
├── overrides/               # Configs, resource packs, datapacks
└── mods/                    # Leave empty in git; manage with Packwiz/launcher
```

## Quest Philosophy

- Guided but not hand-holding.
- Clear early-game onboarding → mid-game specialization (Magic path / Tech path / Hybrid) → late-game integration & bosses.
- Dungeons and structures feed both magic and tech progression (loot, materials, bosses).
- No forced single path. Side chapters for building, exploration, QoL.

See `docs/QUEST_TREE_DESIGN.md` for the full category map.

## Next Actions for You

1. Clone this repo.
2. Open the instance, install core mods, launch once, confirm no crash.
3. Run `/ftbquests editing_mode true` and start implementing chapters from the design doc.
4. When the core loop feels good, expand the modlist carefully.
5. Export via Packwiz (`packwiz modrinth export` or CurseForge export) when ready for distribution.

Ship something playable first. Iterate. Do not chase mod count for its own sake.
