# Expanding Toward 800+ Mods

## Why this is hard

- Dependency trees explode.
- Recipe conflicts and overlapping progression systems become common.
- Worldgen mods fight each other.
- Memory pressure and tick time increase non-linearly.
- Quest book maintenance becomes a full-time job.

## Practical approach if you still want high count

1. Lock the **core theme mods** first (the list in CORE_MODLIST.md).
2. Add a strong performance layer (Embeddium, FerriteCore, ModernFix, Canary/Lithium ports, Concurrent Chunk Management, etc.).
3. Add libraries and APIs required by the content mods.
4. Add QoL in batches of 10–20, testing after each batch.
5. Add visual / decorative / building mods last.
6. Never add a mod just to increase the number. Every mod must justify its presence against performance cost.

## Recommended targets

- Playable solid pack: 180–280 mods
- Large but maintainable themed pack: 300–450 mods
- Kitchen-sink monstrosity: 600–800+ (accept that balance and stability will suffer)

## Tools

- Packwiz for version-controlled mod management
- Prism Launcher for easy instance testing
- `/ftbquests reload` and editing mode for quest iteration
- Keep a private test world and a clean export process

Ship a good 250-mod pack that people actually finish. That delivers more value than an unstable 800-mod list.
