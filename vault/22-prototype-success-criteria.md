# Prototype Success Criteria

Concrete checklist for “done enough” to sit alongside an MPP funding application. The demo must be playable and visually grounded; final funding-round requirements will be checked when the round opens.

## Playable Path
- Fully playable sequence: Airport arrival → character select → car pointing ride → family house greeting → market/supplies quest.
- All progression uses the frozen dialogue schema and learning-target revision checks.
- Local save works. Debug jumps to airport and to market are present.
- No crashes on the critical path. Soft failures retry cleanly.

## Dialogue & Learning
- Approximately 100–140 player-facing lines (nodes + choices) covering the playable path.
- Every beat in the path has its learning target and revision check implemented.
- Core phrases from airport, car, dinner greeting, and market are introduced in context and retrieved at least once.
- Basic vs Beginner+ caption behaviour matches the locked suppression rules.
- All Tongan text marked draft until DR L.V.S review; no unreviewed lines in the final demo build.

## Visual Polish (approve-ready)
- Player character (Sione and Mele) and the three primary speaking NPCs of the demo path (greeter/driver, elder, shopkeeper) rendered in the approved full-chibi style with correct clothing baselines.
- Background plates for airport exterior, car ride, family house exterior/interior, and market are present and readable on a phone screen.
- No placeholder art remains on the critical path. Style is consistent enough that post-funding changes are refinements, not redesigns.
- Wedding-climax assets are not required for this demo.

## Documentation & Hand-off
- Vault is current: locked decisions, schema, learning targets, and this criteria file are accurate.
- README states DR L.V.S accuracy responsibility and links to the demo build instructions.
- Project builds and runs from a clean clone with the steps listed in the Godot (or equivalent) README.
- Out-of-scope list is visible so reviewers see what is intentionally deferred.

## Review Status
- DR L.V.S has reviewed all Tongan lines in the demo path (or explicitly signed off on the draft set used).
- Any open cultural notes are listed, not hidden.

## Explicitly Not Required for This Demo
- Full 6-hour path.
- Wedding climax sequences.
- Recorded audio (stub field remains).
- Voice input or recognition.
- Multiple save slots or cloud features.

When all boxes above are true, the prototype is ready to accompany an MPP application. Adjust only if the open funding round publishes stricter requirements.

Last updated: 2026-10-25
