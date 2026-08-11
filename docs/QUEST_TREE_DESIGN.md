# FTB Quests Tree Design — Arcane Dungeon Tech

## Design Goals

- Clear onboarding so new players are not lost in 200+ mods.
- Parallel progression: Magic path and Tech path that cross-pollinate in mid/late game.
- Dungeons & structures are first-class content, not side content.
- Exploration is rewarded with both materials and knowledge (glyphs, schematics, rare components).
- Endgame focuses on synergy (magic-powered machines, tech-augmented spells, boss gear).

## Chapter Groups (top-level categories)

1. **Foundation** — Getting Started, Basic Survival, First Tools
2. **Exploration** — World Gen, Biomes, Mapping, Long-distance Travel
3. **Dungeons & Structures** — YUNG suite, When Dungeons Arise, Cataclysm, custom structures
4. **Magic Path** — Ars Nouveau + addons, Iron's Spells 'n Spellbooks + extensions
5. **Tech Path** — Create + key addons, early power, basic automation
6. **Logistics & Storage** — AE2 / Refined Storage / Sophisticated Storage, item movement
7. **Advanced Magic** — Rituals, advanced glyphs, magical automation, bosses
8. **Advanced Tech** — Mekanism / Oritech / Industrial, reactors, digital mining
9. **Integration & Synergy** — Ars Creo, magic + Create, tech-powered spells
10. **Dimensions & Endgame** — Nether/End overhauls, Twilight (if available), major bosses, final goals
11. **Building & Colony** (optional side) — MineColonies or pure building QoL
12. **QoL & Mastery** — Side quests, challenges, completionist goals

## Suggested Chapter Order & Dependencies

### Foundation
- 00 Getting Started (sample provided)
- 01 Basic Tools & Armor
- 02 Food & Farming
- 03 First Base

### Exploration
- 10 Mapping & Compasses
- 11 Biomes & Terralith / Tectonic landmarks
- 12 Long Distance Travel (boats, early flight, waystones)

### Dungeons & Structures
- 20 Basic Structures (YUNG dungeons, villages)
- 21 When Dungeons Arise / larger complexes
- 22 Cataclysm introduction & first bosses
- 23 Advanced structure loot & keys

### Magic Path (can start after basic tools)
- 30 Magic Foundations (source / mana / first spells)
- 31 Spellbooks & Schools (Iron's)
- 32 Glyphs & Spell Crafting (Ars)
- 33 Magical Gear & Artifacts
- 34 Rituals & Automation

### Tech Path (parallel)
- 40 Create Basics (rotation, belts, early machines)
- 41 Power Generation
- 42 Ore Processing & Smelting chains
- 43 Intermediate Automation

### Logistics
- 50 Early Storage solutions
- 51 Applied Energistics / digital networks
- 52 Logistics networks & autocrafting

### Advanced & Integration
- 60 Advanced Magic bosses & endgame spells
- 61 Advanced Tech (reactors, digital miners, mekasuit-level)
- 62 Synergy chapters (Ars Creo, magic-powered Create, etc.)
- 70 Dimensions
- 80 Endgame Goals / "Star" equivalent if desired

## Implementation Notes

- Keep early chapters short and rewarding.
- Use item tasks + kill tasks for dungeons.
- Reward tables for structure loot and boss drops.
- Hide later chapters until key dependencies are complete (or visible).
- Write descriptions that teach the "why", not just the "what".
- Test every quest in a fresh world after adding mods.

## Sample Chapter

See `config/ftbquests/quests/chapters/00_getting_started.snbt` for a complete working starter chapter.

Expand by copying the structure and using the in-game editor (`/ftbquests editing_mode true`).
