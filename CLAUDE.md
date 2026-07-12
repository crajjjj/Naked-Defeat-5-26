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

## Build & compile

The project compiles via the **Pyro** VS Code task (`type: pyro`, `skyrimse.ppj`). Edit `.psc` sources and fix
`skyrimse.ppj` imports when a dependency won't resolve. Sources live in `Source/*.psc`; compiled output is
`Scripts/*.pex` (both are committed; `skyrimse.ppj` is **gitignored** because it holds machine-specific absolute
import paths).

### Resolving compile errors from missing dependencies

Papyrus resolves each referenced script by name against the `<Imports>` list, **first match wins**. Common
failure modes seen here:

- **Stale copy shadows the real one.** An addon shipped earlier in the import list carries an old copy of a
  SexLab script (e.g. `Sexlab - Cum Overlays` ships an old `sslActorLibrary.psc` without `GetSexAll`). Fix by
  ordering the authoritative source (SexLab **P+**) *above* the stale one. P+ is pinned to the top of the imports
  for this reason.
- **Optional/native dep has no source on the path** (`VRIK`, `UD_API`, `UILIB_1`, `ddNF`, `Lovense`, …). Add the
  real source folder, or `C:\Playground\stubs` (compile-time stub declarations), kept **last** so real
  implementations still win.
- **SLU+ → P+ API drift.** This build targets SexLab **P+**, not SexLab Utility Plus. Some SLU+ methods don't
  exist in P+ (e.g. `sslThreadModel.DisableFurnitureUse` → use `SetFurnitureStatus(0)`; P+ unified bed/furniture
  under `SetFurnitureStatus`). When a NADE-own script fails on a missing SexLab function, check the P+
  `sslThreadModel`/`sslActorLibrary` sources for the current name before inventing one.

## CK-filled properties

Script properties filled via the Creation Kit in the ESP must NOT be removed from `.psc` files even if unused in
code — removing them breaks the form binding and can fail script load. NADE also keeps some properties declared
purely for **save compatibility** (e.g. the old `sslBaseAnimation[]` scene properties, no longer used for
selection). Leave such properties as dead weight; to truly remove one you must also clear it in the ESP.

## Papyrus language notes

### Reserved keywords (case-insensitive, cannot be used as identifiers)
`As`, `Auto`, `AutoReadOnly`, `Bool`, `Else`, `ElseIf`, `EndEvent`, `EndFunction`, `EndIf`, `EndProperty`,
`EndState`, `EndWhile`, `Event`, `Extends`, `False`, `Float`, `Function`, `Global`, `If`, `Import`, `Int`,
`Length`, `Native`, `New`, `None`, `Parent`, `Property`, `Return`, `ScriptName`, `Self`, `State`, `String`,
`True`, `While`

### Control flow
- No `break` or `continue` — use a flag or an early `return` to exit a loop.
- Only `if/elseif/else/endif` and `while/endwhile`. No for-loops, switch, or do-while.
- Logical `||` and `&&` short-circuit (so `Game.GetModByName(...) && SomeMod.Fn()` is a safe optional-dep guard).

### Variables & types
- Base types: `Bool`, `Int`, `Float`, `String`, plus object references and arrays.
- Value types (Bool/Int/Float/String) are copied on assignment; objects/arrays are by reference.
- Variables declared inside a `while` loop persist across iterations (NOT reset each pass) — initialize explicitly.
- Script-level variables can only be initialized with literals, not expressions; function-level may use expressions.
- Watch `=` vs `==`: `if x == y` compares, `x = y` assigns. An accidental `==` as a statement is a silent no-op
  (this bit several NADE sites — see the "`==` used where `=` was intended" CHANGELOG entries).

### Arrays
- Max 128 elements. Size must be an integer literal (`new int[128]`), not a variable.
- `array[i] += 5` does NOT compile — write `array[i] = array[i] + 5`.
- No arrays of arrays. Arrays are passed/assigned by reference.
- `Find()`/`RFind()` and SKSE string functions are case-insensitive; `==` string comparison is case-sensitive.
- `RandomInt(0, n)` with `n < 0`, or indexing an empty array, errors at runtime — guard empty candidate lists.

### Properties & optional mod dependencies
- Global/static calls (e.g. `SlaveTats.simple_add_tattoo(...)`) resolve lazily at call time — safe to reference an
  optional mod if guarded by `Game.GetModByName(...)`.
- A property typed to an external script (e.g. `SexLabFramework Property SexLab Auto`) resolves at script **load**
  — the type must exist or the whole script fails to load. This is why P+ must be present at compile time.

### States & threading
- A script instance can be in only one state at a time; `GotoState("")` returns to the empty state. State function
  signatures must match the empty-state definition. Call `GotoState()` *before* external calls.
- Only one thread runs a script instance at a time, but **any external call** (including `Debug.Trace()` or a
  property access on another object) unlocks it, letting another thread in. After an external call returns, local
  assumptions about state may be stale. Own-variable/own-array operations do NOT unlock.

### Misc gotchas
- The compiler does not verify all paths return a value — a missing return causes undefined behavior.
- `parent.Fn()` calls one level up, not necessarily the base definition.
- Unary minus can misbehave without spaces: write `x = y - 1`, not `x = y-1`.
- Keep edits ASCII unless the file already contains non-ASCII; preserve existing file encoding.
