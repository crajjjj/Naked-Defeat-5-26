# Naked Defeat — project instructions

This repo is a patch/delta over the official Naked Defeat mod. Scripts are Papyrus (`Source/*.psc`)
compiled to `Scripts/*.pex` via the Pyro VS Code task (`skyrimse.ppj`). The release artifact is a `.zip`
built by the `<ZipFiles>` section of `skyrimse.ppj`.

## Release checklist

Do these together whenever cutting a release (in addition to the global versioning rule — a version counts as
released only once a git tag exists; bump once per release, not per change):

1. **Update `CHANGELOG.md`** — describe the changes under the version being released.

2. **Check `skyrimse.ppj` so every changed file ends up in the zip.** The `<ZipFiles>` → `<ZipFile>` block lists
   each shipped script as a pair of `<Include>` lines:
   ```xml
   <Include>Source\<name>.psc</Include>
   <Include>Scripts\<name>.pex</Include>
   ```
   For every `Source/*.psc` changed since the last release, confirm BOTH its `Source\*.psc` and `Scripts\*.pex`
   entries are present in that block; add any that are missing. Also bump the `@ModName` variable if the version
   changed (it names the output zip). Compile via the Pyro task so the `.pex` files are current before packaging.

3. **Create a GitHub release** with `gh` (authed account: `crajjjj`) — tag it, title it with the version, and use
   the new `CHANGELOG.md` section as the release notes. Attach the built `.zip` when available. The tag is the
   "this shipped" marker, so only create it at actual release time.
