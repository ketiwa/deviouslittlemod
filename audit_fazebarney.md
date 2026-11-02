# Audit — Faze Barney's Changes

Audited against `main` (== `origin/main`) and the installed vanilla `1.37.5.0` game files.

Author in git: **Faze Barney** `<93948447+FazeBarney@users.noreply.github.com>`
Total commits: **9** (all on `november-update`, none on `main`).

---

## Summary table

| Commit | Message | Verdict |
|---|---|---|
| `5b690e7` | Make the ottoman vassals join the wars | ✅ Correct |
| `b79edb9` | Frame works for sgf | ⚠️ Accidental bulk commit (986 files) |
| `88074a0` | Buffed swis ideas | ⚠️ Contains a nerf, mis-titled |
| `e6bffca` | buffing my nation | ✅ Correct (1 line) |
| `5696ec9` | Sum node cope | ⚠️ Undocumented trade-node change |
| `5415aa3` | Idea changes lmk if smt is op | ⚠️ Duplicate modifier, aggressive rebalance |
| `39496c1` | ngf | ⚠️ Invalid modifiers + mojibake |
| `a79f7c5` | Nerf to prussia | ✅ Correct (incl. loc fix) |
| `1299c11` | Formables | ⚠️ Multiple real bugs (see below) |

---

## Per-commit detail

### 1. `5b690e7` — "Make the ottoman vassals join the wars" ✅
`common/subject_types/00_subject_types.txt`
- `eyalet` → `joins_overlords_wars = no` changed to `yes`.
- One line, matches the intent and is already noted in `changes.md` ("Eyalets now join their overlord's wars").

### 2. `b79edb9` — "Frame works for sgf" ⚠️
**986 files changed** — this commit copies the **entire vanilla `common/countries/` directory (~600 files)** into the mod, plus `common/country_tags/` and others.

Problems:
- Huge unintended bloat (the mod now overrides every country definition).
- These are frozen vanilla 1.37 copies; they will silently go stale on any future game patch.
- The mod removed several idea groups (`exploration`, `expansion`, `naval`, `mercenary`) in `common/ideas/00_basic_ideas.txt`, but the copied country files still list them in `historical_idea_groups` — this is the source of the ~200 `Unknown ideagroup ==>'expansion_ideas'` / `naval_ideas` errors in `error.log`.
- The commit message ("Frame works for sgf") suggests this was an accidental `git add` of a folder that had been copied in for reference while making the South German Federation.

**Recommendation:** delete the bulk-copied `common/countries/*` (keep only the files actually needed, e.g. `SouthGermany.txt`, `NorthGermanFederation.txt`, `OttomanEmpire.txt`) and the redundant `common/country_tags` copy.

### 3. `88074a0` — "Buffed swis ideas" ⚠️
`common/ideas/00_country_ideas.txt` → `SWI_ideas`
- `infantry_power` 0.1 → 0.15 (buff)
- `mercenary_manpower` **0.5 → 0.1** (big nerf — contradicts the "buffed" title)
- `fort_maintenance_modifier` −0.2 → −0.25 (buff)
- `production_efficiency` 0.1 → 0.15 (buff)

The `mercenary_manpower` nerf is almost certainly unintended given the commit name.

### 4. `e6bffca` — "buffing my nation" ✅
`common/ideas/00_country_ideas.txt` → `WES_ideas` bonus: `discipline = 0.05` → `land_morale = 0.1`. One line, self-contained.

### 5. `5696ec9` — "Sum node cope" ⚠️
`common/tradenodes/00_tradenodes.txt`
- Removed `inland=yes` from `krakow` and `champagne` nodes.

This makes those two nodes behave as coastal nodes (trade-power propagation etc.). Not documented in `changes.md`, and the commit title doesn't explain why. Likely a targeted fix, but it's a real gameplay change that should be recorded.

### 6. `5415aa3` — "Idea changes lmk if smt is op" ⚠️
Rewrites `GBR`, `NED`, `POR`, `SGE` national ideas. Issues:

- **GBR** — `city_upon_a_hill` and `the_british_parliament` **both** now give `manpower_recovery_speed = 0.15` (duplicate, wasteful).
- **GBR** — `city_upon_a_hill` lost its colonial bonuses (`global_colonial_growth = 20`, `global_tariffs = 0.15`), so the "colony" idea no longer does anything colonial.
- **GBR** — `gbr_acts_of_union` swapped `diplomatic_annexation_cost −0.15` for `global_tax_modifier 0.1`.
- **NED** — lost its entire naval identity (`global_sailors_modifier 0.25`, `naval_forcelimit_modifier 0.50`, `leader_naval_fire 2` → land/artillery stats).
- **POR** — `legacy_of_the_navigator` lost `range = 0.20` (removes exploration range).
- **SGE** — traditions stripped of `legitimacy/devotion/republican_tradition/meritocracy/horde_unity` (the earlier "South Germany" design was heavily walked back).

These may be deliberate ("lmk if smt is op" = asked for feedback), but the duplicate `manpower_recovery_speed` in GBR is clearly a mistake.

### 7. `39496c1` — "ngf" ⚠️
Adds the North German Federation: `NGF` tag, `common/countries/NorthGermanFederation.txt`, `NGF_ideas`, `decisions/NGF_decisions.txt`, flag, history, localisation. Issues:

- `NGF_national_idea_3` contains **invalid modifiers**:
  ```
  monthly_prussian_militarized_society_1 = 0.33
  monthly_prussian_militarized_society_2 = 0.33
  monthly_prussian_militarized_society_3 = 0.33
  ```
  These don't exist in EU4. They are silently ignored, so the idea only effectively gives `manpower_recovery_speed = 0.25`.
- `ship_names` in `NorthGermanFederation.txt` contain **mojibake** (`Churf�rst`, `L�ve`, `Preu�en`, `K�nig`, `Gro�e`, …) — the file was saved with a wrong encoding, corrupting German `ß/ü/ö/ä`.
- `00_country_ideas.txt` gained `\ No newline at end of file` (cosmetic).

### 8. `a79f7c5` — "Nerf to prussia" ✅
- `prussian_monarchy`: `monarch_military_power` 3 → 1, added `governing_capacity_modifier = -0.15`.
- `decisions/NGF_decisions.txt`: added `adm_tech = 14` requirement.
- `localisation/NGF_l_english.yml`: **fixed** the earlier missing `:0` version suffixes and fleshed out idea names/descriptions.

This commit actually *repairs* part of the NGF localisation. The only minor note is the `allow_piety_switch_decision` line shows a degree-symbol mojibake in the diff (comment only, harmless).

### 9. `1299c11` — "Formables" ⚠️ (several real bugs)

Adds: Ottoman Empire formable (`decisions/OttomanEmpire.txt`, `OTR_ideas`, `ottoman_empire_l_english.yml`), rewrites `ARB_ideas`, rewrites `07_ottoman_decadence.txt`, adds an Arabia coastal-desert burgher privilege, and copies two huge vanilla files.

Bugs / problems found:

1. **Arab idea localisation missing.** `ARB_ideas` was renamed from `ARB_arabian_pincers` … to `arb_1` … `arb_7`, but **no localisation keys exist** for `arb_1`…`arb_7` anywhere in `localisation/`. In game these ideas show as raw `arb_1`, `arb_2`, … (and no descriptions).
2. **Five localisation keys are missing the `:0` version suffix** in `localisation/king_of_kings_l_english.yml`:
   - `ARB_estate_burghers_desert_development_gt`
   - `ARB_estate_burghers_desert_development_rt`
   - `ARB_estate_burghers_coastal_desert`
   - `ARB_estate_burghers_coastal_desert_development_gt`
   - `ARB_estate_burghers_coastal_desert_development_rt`

   They are written as `key: "value"` instead of `key:0 "value"`, so they will **not load** (vanilla uses `:0`).
3. **`common/countries/OttomanEmpire.txt` is orphaned.** It was added but no tag points to it (`00_countries.txt` only gained a blank line), and it is a bare 2-line stub (`graphical_culture`, `color`) with no monarch/leader/ship names, no units, no ideas. Dead code that will break if ever actually tagged.
4. **`07_ottoman_decadence.txt` overwrites vanilla with a heavily nerfed, undocumented version.** Vanilla decadence penalties (`technology_cost 1`, `idea_cost 1`, `reform_progress_growth −1`, `manpower_recovery_speed −0.5`, `defensiveness −0.5`, `siege_ability −0.5`, `legitimacy −1`) were replaced with much weaker ones (`reform_progress_growth −0.05`, `manpower_recovery_speed −0.05`, `legitimacy −0.5`, `global_unrest −0.5`) and dropped 4 penalties entirely. **This is not mentioned in the commit message** and is a big silent nerf to the Ottoman decadence disaster.
5. **Two vanilla files copied wholesale into the mod:**
   - `common/event_modifiers/01_mission_modifiers.txt` (14,880 lines) — not a pure copy: it also changes `local_development_cost` values (−0.15 → −0.5, −0.05 → −0.1) and adds `ARB_estate_burghers_coastal_desert`.
   - `localisation/king_of_kings_l_english.yml` (4,479 lines) — bulk vanilla copy with a handful of edits.
   These should be trimmed to only the changed entries (mod overrides are file-level, so shipping the whole vanilla file risks future-patch drift and hides the real edits).
6. **"Deserts like grasslands" is done via dev-cost modifiers, not terrain.** The commit message claims deserts/coastal deserts are "like grasslands", but it's implemented as `local_development_cost = -0.5` (desert) and `-0.35` (coastal desert) province modifiers — large but fine as an intent, just not literally "grasslands".

---

## Cross-cutting issue: stale/wrongly-encoded files

- `NorthGermanFederation.txt` ship names have mojibake from bad encoding.
- Several files lack a trailing newline (`\ No newline at end of file`), which trips up some diff/merge tools.

---

## Recommended fixes (priority order)

1. Add localisation for `arb_1`…`arb_7` (+ `_desc`).
2. Add the missing `:0` to the five `ARB_estate_burghers_*` keys.
3. Remove the invalid `monthly_prussian_militarized_society_*` modifiers from `NGF_national_idea_3`.
4. Delete or properly implement `common/countries/OttomanEmpire.txt` (add a tag + full definition, or remove).
5. Review `07_ottoman_decadence.txt` — restore vanilla penalties or document the change in `changes.md`.
6. Deduplicate GBR `manpower_recovery_speed` (keep one).
7. Slim down the two bulk-copied vanilla files (`01_mission_modifiers.txt`, `king_of_kings_l_english.yml`) to only the changed entries.
8. Delete the accidental bulk copy of `common/countries/*` from `b79edb9` (keep only the files actually needed).
9. Fix mojibake in `NorthGermanFederation.txt` ship names.
10. Document the `krakow`/`champagne` `inland` removal and the `mercenary_manpower` Swiss nerf.
