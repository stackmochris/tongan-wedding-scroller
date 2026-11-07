# Tongan Wedding Scroller — English narrative and content pack

**Review draft v1.1, 7 November 2026.** Grounded in `stackmochris/tongan-wedding-scroller` main commit `0f4051ea05b14f0c6bcc06538f7c3ef7e5350e6c`. Game code and main remain unchanged. This revision is prepared on a separate documentation/content review branch; no merge or game publication is authorised.

Start with **Scene-Bible.md**, then **Dialogue-Master.md** and **Learning-Matrix.md**. **Implementation-Handoff.md** explains JSON, node links, flags, assets, approval work and integration gaps. **Source-Audit.md** reconciles the repository’s early framework with later locked decisions.

- Nine fixed areas; Sione and Mele paths; wedding climaxes and a modest cousin arc.
- 36 scene entries including path alternatives: 31 scenes in either single path.
- 458 exact graph nodes / 749 choices, including mirrored path content, responses and finite climax states. These are implementation counts, not claims of 458 unique story exchanges.
- Planned 254 minutes plus 60-minute reserve; six hours remains an upper design limit, not a measured completion time. Mandatory airport/car onboarding planned at nine minutes.
- Frozen node and choice fields only. All editorial metadata and approvals remain outside the dialogue schema.
- No Tongan text is represented as approved. Translation tokens are explicit. Six speech lines from the repository are provisional English only; authentic order and all dance movement/meaning pairs require DR L.V.S.

**[DR L.V.S REVIEW REQUIRED] applies throughout**, including cultural assumptions in English, kinship, register, food, dress, venue staging, speech, dance, farewell and captions. `review/` contains nine area files and a complete pending approval register. Do not ship tokens, English review primary text or unreviewed cultural content.

Structural checks passed. They cover paths, links, frozen fields, optional skips, prior slot exposure, cumulative speech errors and all 16 dance outcomes. They do not validate language, culture, playtime, phone presentation or actual Godot execution. See **Validation-Report.md**.

The repository currently implements a short dialogue scaffold. Integration of the full narrative and several already-documented game behaviours remains work requiring explicit approval. This pack provides content structure and English review material; it does not claim a finished playable nine-area game.

This revision executes `vault/25-narrative-dialogue-work-session.md` on the review branch in task order. See **Task-Completion-Review.md**. It adds eight optional world interactions (16 separate nodes / 24 choices), area bindings and the currently approved top-down staging. Core counts above exclude these optional interactions. All nine tasks are draft-complete for review; cultural approval and game integration remain pending.
