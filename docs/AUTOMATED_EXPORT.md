# Automated CurseForge Pack Export

## Prerequisites (important)

Packwiz can only export what is already in the metadata.

Before export works usefully you must:

1. Have run `packwiz modrinth install ...` / `packwiz curseforge install ...` for your core mods
2. Have a populated `mods/*.pw.toml` set and a valid `index.toml`
3. Prefer adding mods via **CurseForge** source when possible (cleaner CurseForge export)

If `index.toml` is still empty, the export will produce a nearly empty pack.

---

## Method 1 — Local script (fastest while developing)

```bash
# from repo root
chmod +x scripts/export-curseforge.sh
./scripts/export-curseforge.sh
# or with custom name:
./scripts/export-curseforge.sh MyPack-1.0.0.zip
```

Then in **CurseForge App**:

1. Create Custom Profile / Import
2. Select the generated `.zip`
3. Launch and test

---

## Method 2 — GitHub Actions (automated)

Workflow file: `.github/workflows/export-curseforge.yml`

### Manual run

1. Go to the repo on GitHub → **Actions**
2. Select **Export CurseForge Pack**
3. Click **Run workflow**
4. Download the artifact `curseforge-pack` when finished

### On version tags

```bash
git tag v0.1.0
git push origin v0.1.0
```

This triggers the workflow and attaches the zip to a GitHub Release.

---

## Recommended real workflow

1. **Develop & test** in CurseForge App (manual mod install + quest editing)
2. When the mod list is stable, mirror it into Packwiz (`packwiz curseforge install` / `modrinth install`)
3. Commit the resulting `mods/*.pw.toml` + updated `index.toml`
4. Run local export **or** push a tag to get a CI-built CurseForge zip
5. Import that zip back into CurseForge App for final validation
6. Upload the same zip to your CurseForge project page when ready to publish

---

## Notes / limitations

- Mods added only from Modrinth may be embedded as JARs inside the CurseForge zip. CurseForge staff sometimes need to approve those.
- Prefer `packwiz curseforge install <slug>` for mods that exist on CurseForge to keep the export clean.
- Always test the exported zip in a **fresh** CurseForge App profile before publishing.
- NeoForge version in `pack.toml` should match what you actually tested.
