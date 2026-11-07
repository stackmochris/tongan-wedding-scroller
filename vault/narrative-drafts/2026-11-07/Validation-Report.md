# Content validation report

**PASS — content structure only.** English draft v1.1, 7 November 2026.

36 scene entries (31 per path), 458 core nodes / 749 choices; eight optional encounters in a separate 16-node / 24-choice dictionary. Frozen dialogue fields remain unchanged.

- Passed: Exact frozen fields, types, translation tokens, known links and preview parity.
- Passed: All nodes reachable from single opener.
- Passed: Opener has exactly two valid identity choices.
- Passed: Selected identity cannot cross to other path.
- Passed: Only departure completion has terminal choices.
- Passed: No dead ends: every node has a route to ending.
- Passed: Both paths cover exactly nine areas.
- Passed: Every climax slot requires a successful earlier model selection, even with cousin skips.
- Passed: Third incorrect speech choice restarts speech only at every position.
- Passed: Correct speech choices do not erase prior errors.
- Passed: Six correct speech positions reach wedding recognition.
- Passed: All 16 dance patterns obey proposed 3-of-4 threshold, including final miss after three successes.
- Passed: Only productive Mele climax pair choices add joiners.
- Passed: Every climax decision remains binary.
- Passed: Progress flags set on all valid scene-completion alternatives.
- Passed: Visual-first car introduction suppresses node and choice captions in both modes.
- Passed: Pacing budget including reserve below six hours, onboarding nine minutes.
- Passed: Content counts match manifest.
- Passed: Eight optional encounters use exact frozen fields, have immediate exits and no core links/rewards.
- Passed: Optional content does not collide with core IDs.
- Passed: Optional node/choice counts match manifest.
- Passed: Approved surfaces attached to every scene.

All 16 four-step dance patterns were enumerated: five meet the proposed threshold (three or four successes); eleven restart the dance. Every speech position was tested with three errors, plus cumulative errors separated by correct choices. Optional cousin skips retain required role practice. All core nodes are reachable and can reach an ending. Optional world nodes end locally, never modify progress or cross into core.

All 51 text-source Git blob IDs were verified against current pinned main, with text-snapshot final-newline normalization. Approved world surfaces are attached to every scene.

No Godot build or engine behaviour was tested: no game code changed. Exact Tongan lexical recurrence, authentic order/choreography, culture, phone presentation, measured playtime and proficiency remain unverified. The current engine limitations are documented separately.

Re-run `python3 validation/validate_content.py` from the pack root. Machine results are in `validation/results.json`. Source identity evidence is in `source-provenance.json`.
