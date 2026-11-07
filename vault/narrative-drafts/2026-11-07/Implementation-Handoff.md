# Implementation handoff

**English content draft, 7 November 2026. Review branch and content/tracker updates authorised; no approval to integrate game code, publish the game or merge.** All Tongan and cultural material is **[DR L.V.S REVIEW REQUIRED]**. Read `manifest.json` for the pinned source and exact content counts.

## Files and their authority

| File | Purpose |
|---|---|
| `Scene-Bible.md` | Narrative, voices, all nine areas, scene objectives, conflict, outcomes, pacing and staging. |
| `Dialogue-Master.md` | Every English line, option, branch response and recovery with stable node IDs and links. |
| `Learning-Matrix.md` | Can-do targets, contextual introduction, later retrieval, caption policy and limitations. |
| `content/dialogue-draft.json` | Exact frozen node/choice fields. Tongan fields contain unmistakable translation tokens. Never ship. |
| `content/dialogue-ENGLISH-REVIEW-ONLY.json` | Same graph with English in primary display fields for isolated review. Not Tongan, not a production replacement. |
| `content/editorial-sidecar.json` | English retained even where captions are suppressed; staging cues, slot IDs, error/joiner graph state and approval status. Never load as dialogue. |
| `content/node-choice-map.csv` | One row per choice: scene, path, speaker, English, next, flag, joiner. |
| `content/transitions.csv`, `flags.csv` | Explicit graph and flag inventory. |
| `content/scenes.json` | Authoring scene records and English exchange sources. Climax expansion lives in the dialogue graph and sidecar. |
| `content/learning-occurrences.csv`, `caption-plan.csv` | Exact scene/node anchors and planned support. |
| `review/01`–`09` files | One review file per area/beat; translation tokens plus one-line English glosses, no engine code. Both path variants included. |
| `review/approval-register.csv` | Every line/option and cultural decision starts pending. No invented signature or reviewed status. |
| `validation/validate_content.py`, `Validation-Report.md` | Repeatable structural and graph checks. These do not validate Tongan or culture. |
| `Source-Audit.md`, `source-provenance.json` | Repository evidence, conflict resolutions, source hashes and current-versus-planned behaviour. |

## Entry points and graph conventions

Main review entry is `airport_greeting`, the only character-select node. It sets `path_sione` or `path_mele` and routes to a self-contained path. `requires_path` stays in every node as frozen-schema data; direct links already prevent crossing. Do not interpret setting `path_sione` as automatically calling `GameState.set_path()`—the current code does not do that.

Prefix `sione_` or `mele_` identifies a path, not a new schema field. Local scene IDs are stable editorial references. In the core dictionary, `next: null` occurs only at departure completion. In the separate optional-world dictionary it returns locally to the same world position. A single choice is permitted for advancing a response; meaningful tasks usually offer two choices; the two cousin conversations offer a third skip. Climax decision nodes are always binary. Response nodes have one advance control. `Continue`/`Try again` review controls are not spoken player dialogue; confirm final UI wording with DR L.V.S.

No flags are used as an affection score. `cousin_invited` records an optional invitation and never gates wedding, departure or language learning. Progress flags are idempotent. Both productive alternatives at completion set the same required progress flag. Do not clear earlier progress on a climax retry.

## Frozen schema compliance

Dialogue dictionaries contain only node IDs. Each node has exactly `node_id`, `speaker`, `line_tongan`, `line_english`, `suppress_caption`, `requires_path`, `choices`. Each choice has exactly `tongan`, `caption`, `sets_flag`, `add_joiner`, `next`. No version number, audio reference, reviewer field, trigger, condition, animation or translation ID was added to the frozen schema. Pack version and review status live outside dialogue. This resolves the older version-root suggestion in vault/16 in favour of the later schema freeze.

`suppress_caption: true` has null node gloss and null choice captions. The full English remains in the editorial sidecar. The English review graph uses English as primary text and null secondary captions deliberately; it is a review convenience. Audio remains omitted. DR L.V.S supplies clean originals later, with conservative character processing and preserved originals as the vault requires.

## Climax state without schema extensions

Sione uses node IDs encoding `(position, strikes)`. Correct response advances position without clearing previous errors. A wrong response pauses with confusion and stays on the position with one more strike. Third wrong response routes to the sequence restart. This compiles a bounded state machine into ordinary `next` links; no new counter field or scoring system is required. Six positions and their actual order are pending expert content approval.

Mele uses node IDs encoding `(position, successful pairs)`. Each correct pair sets `add_joiner: true`, then advances to the next encoded count; wrong adds none and still advances. At the end, links route count ≥3 to success and count <3 to dance restart. Four pairs / three minimum is a proposed production parameter. A final incorrect pair still succeeds if the previous three were successful. All success routes set `dance_complete`. On restart, hide all four preplaced joiners and return to zero; retain supplies, time, rehearsal and cousin progress. Presentation can read the finite state from the sidecar or the already-documented joiner mechanism. Current code ignores `add_joiner` and does not render these guests.

Every mid-game slot has a model and a productive selection; eve retrieves all; climax uses only those same approved fragments. The mapping is structural until DR L.V.S supplies actual words, order, pairs and plausible distractors. Never infer authentic correctness from which placeholder is choice zero.

## Current implementation gaps — no changes made

| Capability | Observed current state | Required integration within existing documented mechanics |
|---|---|---|
| Dialogue loading and links | JSON dictionary loaded; `next` and `sets_flag` used. | Load approved content only in an explicitly authorised isolated integration. |
| Character selection | `path_sione`/`path_mele` becomes a boolean flag. `set_path()` is never called by selection. | Connect chosen identity to path, silhouette and outfit. Graph already carries the route. |
| Node/path gating | Reader ignores `requires_path` and general flag conditions. | Preserve direct-link path isolation; if implementing documented gates, do it only with approval. No new conditional fields. |
| Local save | `save_game()` prints a stub; load is `pass`. No call at choice completion. | Existing local-only autosave requirement remains unfulfilled, including atomic onboarding policy. |
| Captions | UI review mode displays English if present; ignores `suppress_caption`, difficulty and familiarity. | Implement documented Basic/Beginner+ policy before claims of compliance. Never toggle all English off as a substitute. |
| Feedback and walking | Current main scene is a simple placeholder/dialogue surface, not nine navigable areas. | Bind approved sidecar cues to small scene triggers, props and sprites using intended existing mechanics. |
| Climax | No actual joiner renderer, strike handler or reset presentation. | Graph implements finite routing; staging/reset/guest display still needs authorised integration. |
| Ending | `dialogue_finished` is emitted but main has no connected completion handler. | Clear choices, permit departure/end card and persist completion. |
| Audio | Frozen schema omits audio reference; no playback system here. | Keep omitted until recording decision; do not add fields silently. |
| Debug entry points | Required airport/eve jumps not found in scripts. | Airport = `airport_greeting`. Eve review = `sione_g01_01` or `mele_g01_01`; debug seed must distinguish testing from real learning completion. |

These are implementation gaps against already documented scope, not proposed new game systems. Content development does not authorise fixing them. Only the review branch, tracker and draft content are being updated under this request. No game code, main branch, merge or deployment is changed.

## Area transitions and props

`content/scenes.json` and Scene Bible specify transitions. Local transitions are visible walkable paths/entrances in the approved top-down world; longer trips use explicit travel cuts/links. These are existing documented mechanics, not new maps or systems. In the English review graph, links move directly through the scenes. Production scene binding must pause at each boundary until the approved travel/interaction event, without inventing new dialogue fields. Engine integration is not concealed inside this content pack.

| Area | Reused / required art | Exact visible action |
|---|---|---|
| Airport arrival/departure | Overhead forecourt layout plus matching conversation plate; driver; player outfit states; family on departure. | Resolve identity silhouette, move suitcase, wait, final wave and exit. |
| Road | Existing external scrolling landscape. Current approved car brief already specifies exterior side-on travel; preserve it. | Hold/re-point coconut, church, village, sea. No interior simulation. |
| Popua dinner/eve | House exterior/interior, light variant; bowls, jug, supplies, chairs. | Seat cleared; selected dish passed; refusal respected; chair nearer/farther. |
| Market | Overhead aisle/stall layout plus matching conversation plate; two food bundles, three drinks, single carried-supplies state. | Count visible items; hand over bundle; payment animation without currency lesson. |
| Church | Overhead St Paul’s entrance/grounds plus conversation plate and minister; one clock card. | Point to ten; nod. Time and venue relationship explicitly proposed, not sourced fact. |
| Sports | Simplified pitch and ball, cousin. | Ball rolls on choice; shorter pass when tired; sit at edge. No timing/physics minigame. |
| Wedding | Coastal canopy; silent couple; microphone; formal outfits; four reusable joiners. | Nod/confusion, microphone handover, joiners shown or withheld, reset locally. Dance animation entirely pending approved movement models. |

Do not add named speaking relatives, a second church, a beach quest, multiple islands, inventory, rankings, networking, voice input or free text. No accounts, server or third-party game SDK are introduced.

## Approval and integration order

1. Chris reviews narrative, cousin voice, nine-area scope, proposed grandmother casting, ten o’clock placeholder, S/M scene emphasis and proposed climax lengths/threshold.
2. DR L.V.S reviews English cultural intent and supplies exact speech mapping and dance pairs before their language can be finalised. She adapts every line/choice, including short emotional clauses, kinship, register, food names, leave-taking and UI controls.
3. Record approval by stable node/choice ID outside the schema; keep unapproved files in draft. Transfer reviewed copies to a reviewed folder only after actual approval. Do not add `reviewed` fields to frozen dialogue.
4. Replace translation tokens consistently across models, rehearsal, climax and distractors. Finalise per-string retrieval and caption ledgers from actual Tongan. Run structural checks again.
5. The current request authorises the review branch, tracker updates and a draft PR for these content documents. Obtain explicit approval before game integration/code changes, merge or game publication.
6. In authorised integration, verify both identity paths, optional cousin skips, refusals, all repairs, required slot exposure, climax boundary cases, local save/resume and phone presentation. No Godot playtest was performed for this pack.

This handoff is implementation-ready **content structure**, with English narrative and full node linkage. It is not production-ready Tongan or a drop-in complete nine-area game. Expert-dependent slots and documented engine gaps are intentionally visible.

## Optional world bindings added for the current visual approval

`content/area-bindings.json` defines the nine-area surfaces, path entries and route policy. `content/overworld-bindings.json` defines eight optional object/sign encounters, prerequisites and local returns. `overworld-dialogue-draft.json` and its English-review counterpart contain sixteen frozen-schema nodes, separate from the 458-node core graph. `overworld-editorial-sidecar.json` retains English and visual cues. No game file loads these drafts.

An optional interaction suspends, rather than advances or replaces, the main-story entry. Returning closes only the object dialogue and preserves area, position, selected path and progress. These requirements fit the documented interact/dialogue/flag model but are not implemented by the present engine scaffold; integration needs approval. Never route `next: null` in this optional dictionary into the main ending handler. Do not add a quest log, gardener cast, reward, inventory item, collection counter, mandatory detour or exact-geography claim.
