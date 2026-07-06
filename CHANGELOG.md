# Naked Defeat — Changelog

## 6-46 customise (delta over official 6.46) — 2026-07-06

Fix pass over the core use case: Acheron defeat → punishment (furniture / whipping) → release.
All changed scripts recompiled; full project (244 scripts) compiles with 0 errors.

### Fixed — stuck-state / softlock (release & abort paths)

- **Acheron could stay disabled forever.** `Acheron.DisableProcessing(true)` set at defeat start had exactly one
  re-enable site, skipped on aborts, on death, and when the Acheron Handling MCM toggle changed mid-defeat.
  New central `RestorePlayerState()` in `nade_configquest_scr` (re-enables Acheron, restores bleedout recovery,
  resets `PlayerDownAlready`) is now called from the calmquest release stage, `KeyAbortAll()` and the
  Unstuck wheel option. (`nade_configquest_scr`, `nade_calmquest_qf_scr`)
- **Bleedout recovery is restored on release.** `SetNoBleedoutRecovery(true)` was set on every defeat entry but
  only ever reset when toggling the mod in the MCM. (`nade_configquest_scr`, `nade_calmquest_qf_scr`)
- **Unstuck (debug wheel) actually unsticks now** — it used to set `SetNoBleedoutRecovery(true)` (the wrong
  direction) and never touched Acheron; it now runs the full restore when no defeat is active. (`nade_configquest_scr`)
- **Aborted Acheron bridge starts no longer block future defeats.** On the missing-actor abort,
  `PlayerDownAlready` is reset and assailants are removed from `EnemyFaction` again. (`nade_configquest_scr`)
- **Defeat start can no longer hang forever on a missed ragdoll event** — the second ragdoll wait loop is
  bounded like the first. (`nade_configquest_scr`)
- **Whipping abort paths no longer leak whipper state.** New idempotent `CleanupWhipper()` runs on every exit:
  the whipper no longer keeps the Cane, `WhippingFaction` membership, zeroed Stamina/StaminaRate and the
  attack-speed debuff after an aborted scene. (`nade_whipquest_00`)

### Fixed — gameplay logic

- **Second Acheron assailant is added to the enemy faction correctly** (copy-paste bug added assailant #1
  instead of #2; the six per-assailant blocks are now a single loop). (`nade_configquest_scr`)
- **Humanoid whippers work.** In `SelectWhipper()` an empty `elseif` branch swallowed exactly the
  Undead/Riekling/Spriggan/Falmer defeats the creature-whipper ladder was written for, while still reporting a
  whipper as found. Creature whippers are now actually selected for those types, and defeat types with no valid
  whippers cancel whipping cleanly instead of starting an empty scene. (`nade_calmquest_qf_scr`)
- **`==` used where `=` was intended (statements that did nothing):**
  - human defeats with no humans left now genuinely convert to a creature defeat instead of proceeding as a
    human scenario with zero humans;
  - the scenario is really reset to `"none"` after Afterlife rescue, Girlfriend betrayal and ChainRape betrayal.
  (`nade_calmquest_qf_scr`)
- **Devious Followers is now really paused during defeat and resumed after.** NADE sent `DF-Pause` as a plain
  mod event, but DF's handler expects custom args (Bool pause/resume + sender Form) - the event never arrived,
  in either direction. Now sent via `ModEvent.Create` with the proper arguments. (`nade_configquest_scr`)
- **Scene protectors spawn every whipping scene again** — the placed-flag was never reset, so protectors only
  ever appeared once per savegame. (`nade_whipquest_00`)
- **Bad-defeat-type warning can fire** — it compared against `"Funny"` but the value is `"AreFunny"`.
  (`nade_configquest_scr`)
- **Furniture creation no longer errors out on an empty candidate list** (`RandomInt(0,-1)` + negative array
  index); it now aborts placement with a clear message. (`nade_capturequest_qf_scr`)
- The never-functional "treat tame trolls as humans" block is now explicitly commented out (it was a no-op
  comparison and is marked PROBLEMATIC by design). (`nade_configquest_scr`)

### Performance

- `nade_whipquest_00` per-second update loop slimmed: no more double `Utility.Wait(0.1)` + verify-reads +
  unconditional trace spam every tick.
- Duplicate weapon sheathe/unequip block and duplicate Acheron Rescue/Release (with its extra 3s wait) removed
  from the defeat start / release paths.
- `RealWaiting` polls at 0.25s instead of 0.1s; werewolf spawns resolve the LvlWerewolf form once instead of
  four times. (`nade_calmquest_qf_scr`)

### Fixed — source drift (project did not compile)

- `nade_crimequest_qf_scr`: calls to removed configquest functions (`dhlpSuspend`, `ChangeArousal`,
  `AddTattoo`) commented out.
- `nade_rapequest_qf_scr`: unused property of missing type `nade_FollowerIdleQuest_02_qf_scr` commented out
  (that quest was merged into `FollowerIdleQuest_01`).
- Nine dialogue fragments (`nade_tif__080e45a2`, `080e65ff`, `0811a8d5`, `0811a8da`, `0811a8db`, `0811a8dc`,
  `0811a8dd`, `0811a8df`, `0814bb80`) still live-called the removed `rapequest.DoOutcome()`; commented out to
  match the ~30 sibling fragments already migrated. Note: the fragment text inside the ESP still holds the old
  call — re-saving those infos in the CK will regenerate it.

### Misc

- Dead code marked/removed: whipquest_00's never-registered `OnKeyDown` handler, capturequest's orphaned
  `RegisterForKey` (its handlers were already commented out).
- The previously dead `AcheronEnabled` flag is now maintained by `EnableAcheron()`/`DisableAcheron()`.
- Build: `skyrimse.ppj` delta zip now packages all scripts changed since official 6.46 plus this changelog.

### Known intentional non-changes

- The skip-whipping key still only works while not immobilized — the furniture escape game auto-restarts
  whipping, so a mid-furniture skip would fight it (deliberate design, left as is).
- The remaining `Game.GetFormFromFile` spawn blocks in `SpawnActors()` still resolve forms per call; the
  werewolf block shows the caching pattern for a future pass.
