# Source audit and decisions

Repository: [stackmochris/tongan-wedding-scroller](https://github.com/stackmochris/tongan-wedding-scroller). Pinned main commit: [`0f4051ea05b14f0c6bcc06538f7c3ef7e5350e6c`](https://github.com/stackmochris/tongan-wedding-scroller/commit/0f4051ea05b14f0c6bcc06538f7c3ef7e5350e6c), “docs: record approved chibi and top-down visual direction”. Source tree: `2e4ef706f63342f9fea1494bf3f0e4f7803d5b29`.

All vault documents 01–25 and README were read, along with current dialogue JSON, all game scripts, scene/project files and textual asset briefs. `source-provenance.json` lists fetched paths and hashes. Generated demo art was inventoried by the repository tree; binary images were not visually inspected. This assignment concerns narrative and content; art accuracy is not certified.

The existing English pack was prepared against the earlier narrative-tracker commit. For this execution, all source blob IDs were compared with current main; the updated README, visual/asset briefs, mechanics, area, location and locked-decision docs were fetched and read. Story spine, schema, learning targets, dialogue JSON and game scripts have unchanged blob IDs and were already read in full. The tracker remains untouched on main; progress is maintained on the separate review branch. Existing drafts are reused transparently and revised, not presented as a new game implementation.

## Authority and conflict reconciliation

| Evidence | Tension / observation | Treatment in this pack |
|---|---|---|
| vault/18, 20, 23, 24 | Later fixed decisions refine early exploratory docs. | Frozen schema and later caption/onboarding/retry rules take precedence. No locked decision is silently reopened. |
| vault/08, 10 vs vault/24 §6 | Earlier airport/car timings total 30–60 minutes; later mandatory onboarding is 5–10. | Airport four + car five planned minutes; both mandatory and atomic. |
| vault/11 vs vault/15, 18 | Earlier ending of failure lets relative finish and ceremony continue; later rules require retry sequence. Earlier Mele speech skeleton also predates differentiated dance. | Sione speech / Mele tauʻolunga; sequence-only retries on failure. Wedding completion requires contribution success, with family event never portrayed as annulled by error. |
| vault/15 | Correct speech order and authentic dance pairs explicitly unspecified. | Slots S1–S6 / M1–M4 with approved intent bank but no fabricated cultural correctness. DR L.V.S must supply final content. |
| vault/15 | Joiner threshold not numeric; optional third path conditional. | Proposed four dance pairs / minimum three; four static guests. Optional third path not enabled. |
| vault/16 vs vault/20 | Version-root suggestion and earlier field examples conflict with later exact schema. | Use frozen field names; version and editorial data in separate manifest. No schema extension. |
| vault/23 §4, vault/25 | Cousin/motivation marked stub for Chris; current task explicitly asks development. | Flesh out as a proposal for review, never claim earlier approval. No additional relationship system. |
| vault/12 | “7 roles including player” only works with role reuse. | Driver doubles as greeter; grandmother doubles as wedding elder. Seven speaking roles total. No separate fahu character/rank invented. |
| vault/10, 14 | Church location is an unresolved either/or. | Propose St Paul’s for a practical minister check; one church only. Actual celebration remains Haʻatafu. Gathering time ten is proposed, not a repository fact. |
| Current visual approval, assets/style-reference.md and vault/09,10,14,18 | Earlier pack predated approved top-down world and used cut/backdrop-focused staging. Current car brief already fixes the old interior prompt. | Compact overhead walkable local links, larger chibi conversation views, exterior side-on airport travel; no new mandatory maps or vocabulary hunt. |
| README vs scripts | README claims core path and review translation; movement/save/complete learning checks remain absent. | Treat current code as a short dialogue scaffold, not evidence all intended mechanics work. |
| data/dialogue/core_path.json | 13 short nodes; ends at market. Both names shown together at house; little revision or cousin material. | New draft IDs and complete English graph; no overwrite. Character names resolved per path, no runtime template substitution. |
| data/dialogue/airport.json | Alternate opener is not loaded by main; one explanation mixes English inside a Tongan field. | Do not combine incompatible entry points. One proposed opener chooses identity then links a self-contained path. Translation-token draft kept separate from English preview. |
| core_path market | Draft Tongan/gloss equates ngatu with generic fabric; other draft spellings vary. | Do not endorse equivalence or “correct” Tongan automatically. Food/drinks errand avoids an unsourced textile purchase. DR L.V.S reviews all exact words and units. |
| vault/22 | MPP demo limit ~100–140 lines/choices differs from full narrative scope. | This is the full nine-area pack. Do not represent its larger airport-to-market script as already meeting the smaller demo budget; curate a separate demo subset only with approval. |
| vault/24 §5 | Replay incentive should be linguistic, not new mechanics. | Shared errands, limited role-specific teaching and climax; no extra quest unlocks. Actual Tongan paradigm contrast remains expert work, not claimed implemented. |

## Existing implementation evidence

- `scripts/main.gd` loads `data/dialogue/core_path.json`, starts `airport_greeting`, instantiates dialogue UI. No movement/area transition or completion listener is present there.
- `dialogue_manager.gd` loads a dictionary, emits nodes, applies `sets_flag` and follows `next`. It ignores `requires_path`, `add_joiner` and caption rules. No validation, strike counter, scene binding or autosave call is present.
- `game_state.gd` provides `set_path()` separately from `set_flag()`. Current choice handling only calls the latter. Save prints a stub; load does nothing.
- `dialogue_box.gd` shows primary Tongan and optional English review text. `show_english_for_review` is global; `suppress_caption` is not consulted. The README’s “hide all English” switch does not implement the later density rules.
- `project.godot`, `main.tscn` and UI scene provide a landscape scaffold. Demo art exists as draft stand-ins but the code reviewed here does not establish all nine world scenes.

## Narrative proposals needing review

Grandmother as elder; unnamed organising relative and teenage cousin; returnee’s wish to help rather than simply attend; cousin’s fear of being answered for; quiet support rather than a personality transformation; two food bundles / three drinks; ten o’clock family gathering; sibling background referents; speech length six slots; dance four pairs / three joiners; church/coastal staging and outfits. All cultural framing is **[DR L.V.S REVIEW REQUIRED]** even where English contains no Tongan word.

These drafts do not certify vocabulary, gendered language, actual ceremony order, religious wording, dress correctness, venue availability, funding readiness or Beginner+ attainment. They make the approved design concrete enough to review and later implement.

## Ordered tracker execution in this revision

Task 1 reconciles current sources and the previous draft. Tasks 2–3 refresh the outline/cast around the approved world surfaces, with exact area entry/exit bindings. Tasks 4–8 review every exchange, learning/retrieval map, choice consequence, both character paths, local climax failures and ending; optional route encounters reuse the same targets. Task 9 packages the review drafts, validation, approval files and handoff. Tracker checkboxes mean English draft work prepared for review, never language/cultural sign-off or game integration complete.

The source game has no implementation changes since the earlier draft. The approved overworld direction is documented, not yet implemented; this task does not authorise implementing it. All cultural framing and all Tongan remain [DR L.V.S REVIEW REQUIRED].
