# Narrative & Dialogue Work Session — Task Tracker

**Repository:** stackmochris/tongan-wedding-scroller  
**Status:** In progress — tasks 1–8 draft-complete; task 9 packaging/validation in progress on `work/narrative-dialogue-review-2026-11-07`  
**Purpose:** Flesh out all nine areas of the six-hour Tongan Wedding Scroller story into coherent, implementation-ready English-first scenes and dialogue.

## Source of truth and guardrails

Read `vault/README.md`, particularly `08-story-spine.md`, `09-minimal-mechanics.md`, `10-area-list.md`, `11-dialogue-framework-en.md`, `12-character-list.md`, `15-wedding-climax-mechanics.md`, `18-locked-decisions.md`, `19-exploration-workthrough.md`, `20-dialogue-schema.md`, `21-learning-targets.md`, `22-prototype-success-criteria.md`, and `23-medium-priority-notes.md`. Inspect `data/dialogue/` and `scripts/` to distinguish documented intent from implemented behavior.

- Preserve the **≤6-hour core path**, **Beginner+ outcome**, **nine fixed areas**, **Godot**, **existing mechanics**, and **frozen dialogue schema**.
- English-first narrative development; **do not present invented Tongan as approved**. Mark Tongan translations, formal speech order, tauʻolunga vocabulary/movements, and cultural framing **[DR L.V.S REVIEW REQUIRED]**.
- Maintain Sione and Mele paths, including their distinct wedding climaxes, and the younger cousin's relational arc.
- Use only existing data-driven flags, nodes, choices, and soft-failure concepts; distinguish content proposals from currently supported engine behavior. No new engine systems without approval.
- Do not change game code, merge branches, or publish content without explicit approval. Keep work in a separate branch or reviewable drafts/PR.
- The MPP playable demo (airport → market, ~100–140 player-facing lines/choices) is a **subset**, not the limit of the narrative-writing assignment.

## Tasks

- [x] **1. Audit the existing narrative and dialogue.** Reconcile vault documents, locked decisions, story spine, English dialogue framework, learning targets, JSON dialogue, and implementation. Record gaps, contradictions, open decisions, and current-versus-proposed distinctions.
- [x] **2. Develop the complete scene-by-scene outline.** Break each of the nine areas into scenes. For each, document setting, participating characters, narrative purpose, player objective, conflict, interactions, outcome, timing estimate, and transition. Maintain the six-hour budget.
- [x] **3. Flesh out characters and relationships.** Establish distinct voices, motivations, dynamics and change over time for Sione, Mele, elders, driver, shopkeeper, minister and younger cousin. Make the cousin's emotional movement observable across the game without a separate mandatory quest chain.
- [x] **4. Write natural English dialogue throughout.** Author conversational exchanges, player choices, alternative responses, recovery lines and environmental reactions. Avoid repetitive textbook conversations. Keep lines suitable for eventual Beginner+ Tongan adaptation, with cultural assumptions flagged for review.
- [x] **5. Integrate language learning into each scene.** Link each scene to can-do objectives, first exposure, visual/contextual support, spaced re-exposure and retrieval checks. Reuse language already learned; no surprise vocabulary in revision checks or climax. Respect Basic versus Beginner+ caption/scaffolding rules.
- [x] **6. Develop meaningful interactions and consequences.** Specify player action, NPC/world feedback, state flag changes, gating, and gentle retry behavior. Prefer 2–4 short choices where appropriate. No quiz screens, new inventory system or free-text input.
- [x] **7. Develop both character-specific paths.** Seed Sione's formal-speech preparation and Mele's tauʻolunga movement/meaning preparation in earlier scenes. Keep shared content substantial and path-specific additions focused. Mark expert-dependent sequencing and terminology.
- [x] **8. Strengthen the wedding climax and ending.** Design Sione's binary-choice speech sequence (three errors restart sequence only), Mele's binary-choice tauʻolunga sequence (NPC joiner threshold; restart sequence only), wedding reactions, cousin contribution, and meaningful departure payoff. Avoid money-throwing in the dance.
- [ ] **9. Prepare production-ready content.** Deliver coherent, reviewable English-first artifacts and JSON-ready node/choice mapping using the frozen schema. Supply node IDs, links, flags, path gates, required assets, review status, implementation gaps and a clear hand-off for DR L.V.S.

## Required deliverables

- [ ] **Scene Bible:** Nine-area scene inventory, detailed scene beats, timing, characters, objectives, interactions, emotional arc and transitions.
- [ ] **Dialogue Master:** Full English dialogue, player choices, branch/recovery dialogue, environmental feedback and Sione/Mele variants, with stable scene/node references.
- [ ] **Learning Matrix:** Scene-to-target mapping, first exposure, recurrence, retrieval checks, caption/scaffolding notes, and expert-review dependencies.
- [ ] **Implementation Content Pack:** Frozen-schema-compatible content drafts or mapping, node/flag/transition references, art/audio requirements, engine gaps, review checklist and explicit approval status.

## Suggested execution order and checkpoints

1. **Audit and outline:** Finish tasks 1–3. Identify only decisions that truly block writing; otherwise make clearly labeled proposals.
2. **Narrative drafting:** Finish tasks 4–8 for all nine areas, not merely the demo slice.
3. **Learning and implementation pass:** Validate task 5 across every scene, then finish task 9 and all four deliverables.
4. **Review gate:** Check consistency, total playtime, paths, language recurrence, schema compatibility and DR L.V.S flags. Present drafts for approval; do not merge.

## Progress log

Record dated updates below with completed tasks, draft file paths, open questions and review decisions.

- 2026-11-07 — Tracker created. All tasks open.

- 2026-11-07 — Task 1 audited against main `0f4051ea05b14f0c6bcc06538f7c3ef7e5350e6c`; existing narrative drafts reviewed against unchanged story/schema/learning/runtime sources and the newly approved visual docs. Older cut-only/backdrop assumptions need updating for compact top-down routes. Tasks 2–9 remain under ordered review. No game code changed. Review branch: `work/narrative-dialogue-review-2026-11-07`.

- 2026-11-07 — Tasks 2–3 draft-complete after task 1: 36 scene entries / 31 per selected path, objectives, conflict, outcomes, transitions, voices and cousin arc retained; outline refreshed for approved top-down routes, conversation views and exterior car ride. Evidence: `vault/narrative-drafts/2026-11-07/Scene-Bible.md`, `Source-Audit.md`, `content/area-bindings.json`. Tasks 4–9 still under ordered review. Cultural and language approval remain pending.

- 2026-11-07 — Task 4: full English dialogue and branch/repair lines reviewed; eight optional environmental encounters added for approved top-down routes. Task 5: per-scene targets, model-before-check, delayed recurrence and caption plans reviewed; optional encounters never counted as guaranteed retrieval. Task 6: preferences, refusals, flags, soft repairs and local return behaviour checked. Task 7: both role-specific mid-game introductions and eve retrieval retained, including cousin-skip safety. Task 8: cumulative speech strikes, sequence-only retries, all 16 dance outcomes and cousin/departure payoff checked. Evidence: `vault/narrative-drafts/2026-11-07/Dialogue-Master.md`, `Learning-Matrix.md`, core/overworld content dictionaries and sidecars. All Tongan, authentic speech order and movement/meaning pairs remain [DR L.V.S REVIEW REQUIRED]. Task 9 is packaging these drafts and validation; no game code changed.
