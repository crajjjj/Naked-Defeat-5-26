# Rebasing the P+ patch onto a new official Naked Defeat

Used for 6.46 -> 6.51 (2026-10-25). Python 3, no packages. Run from a scratch folder; every tool takes paths.

## Branch layout

- `upstream`: one commit per official release, exactly the official files (FULL, then the Patch on top).
  `Source/` there must compile to the official `.pex`.
- `main`: the P+ patch. Update by merging `upstream`.

## Steps

1. Extract the new FULL and Patch (`C:\Windows\System32\tar.exe -xf x.7z -C dir`; no 7-Zip needed).
2. Find what really changed: `pexdump.py --cmp oldScripts newScripts` (timestamps and string-table
   order ignored). The official .pex are the truth; a Patch archive often ships no `Source/`, and a
   FULL's `Source/` can be a few edits off its own `.pex`.
3. Get sources that match the new `.pex`:
   - compile the newest official source with upstream's setup (`pcomp.py`, `PFLAGS=-op`, SexLab Utility
     Plus imports instead of P+, Creature Framework, AudioUtilTTS + AudioUtil sources),
   - `fdiff.py compiled.pex official.pex > x.fdiff` lists the changed functions,
   - decompile the official `.pex` (houseCARL `housecarl_decompile_script`; it writes into a new MO2 mod
     folder, copy the `.psc` out and delete the folder),
   - `reconstruct.py old.psc decompiled.psc x.fdiff out.psc`,
   - recompile and check with `LOOSE=1 fdiff.py` until only redundant same-type casts, baked `None`
     defaults and jump offsets differ. The decompiler can still be wrong (6.51: two MCM calls swapped in
     `OnPageReset`), which is what this check catches.
4. Commit that tree on `upstream`, merge into `main`.
5. For each patch script, `fmerge.py base ours theirs out` (base = the previous official source):
   function-level 3-way merge on the new layout. It lists conflicts (6.51's text kept, marked
   `;@@CONFLICT@@`), functions only the patch added (inserted), and script-level text the patch changed
   (re-add by hand, e.g. the `*_IDs` properties in calmquest).
6. `slpp_convert.py file.psc` applies the P+ scene-query conversion to any legacy
   `GetAnimationsByTags` / `SetForcedAnimations` / `DisableFurnitureUse` site, new upstream code included.
7. Compile the patch scripts with the real ppj imports (`pcomp.py`), then `arity.py officialScripts...
   patchScripts` to find calls whose argument count no longer matches the callee.
