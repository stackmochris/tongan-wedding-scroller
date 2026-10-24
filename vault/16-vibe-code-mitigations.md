# Vibe-Code Risk Mitigations

Practical constraints for a short, data-driven hybrid walking visual novel aimed at an MPP funding prototype. The goal is a simple, hand-off-friendly codebase rather than a long-lived commercial title.

## Security
- Keep all language and story content in data files (JSON or equivalent), not hard-coded.
- No user accounts, cloud saves, or backend for the prototype. Local-only state removes the largest attack surface.
- Validate dialogue data on load with a simple schema check (required fields, expected types).
- No external network calls during play. Any later analytics or remote config must be optional and behind an explicit flag.
- Hand-off note: Document that the prototype has no auth, no server, and no third-party SDKs. New network features require a separate security review.

## Continuity (progress, saves, and hand-off)
- Single local save file storing only the path flag, a short list of completed flags, and current area. Keep the format human-readable.
- Idempotent flags: every important state change is a boolean or short string that can be re-applied without side effects.
- Version the data files with a simple version number in the root dialogue file.
- Document the flag list and climax restart rules in the vault.
- Hand-off note: Expose debug paths for “reset to airport” and “jump to wedding eve” so testers can reach the climax without replaying the full path.

## Latency
- Keep areas small and discrete. Load only the current area’s assets and dialogue nodes; unload the previous area on transition.
- Preload the next area’s dialogue data during travel sequences or while the player is in the current area.
- Limit simultaneous sprites. Cap visible joiners in the wedding climax and recycle the same few sprites.
- Target 30 fps on mid-range phones. Full 60 is unnecessary for a dialogue-and-walk game.
- No real-time physics or complex animation blending. Use simple walk cycles and static portraits.
- Hand-off note: Profile the wedding climax and market scene early; those are the most likely to hitch.

## Graphic Fidelity
- Lock the art direction: full chibi with readable clothing silhouettes. Document colour palette, line weight, and skin/weave notes.
- Use reference-guided generation for key assets (player formal, taʻovala, key locations). Store approved reference images in the repo.
- Accept lower fidelity on background NPCs and distant props. Player and primary speaking NPCs must read clearly.
- Any style shift for the wedding climax should be limited to lighting/post-process or a single alternate sprite set.
- Hand-off note: Maintain a short approved style sheet folder with the current Sione reference and clothing baselines.

## Other Common Risks
- Scope creep: The 6-hour core and “no new systems, only new data” rule is the main defence. Features requiring new engine code are deferred.
- Inconsistent language: All Tongan text goes through the DR L.V.S review gate before locking. Keep dialogue files in draft/reviewed state until confirmed.
- Untraceable decisions: Every major mechanic or constraint lives in the vault with a date.
- Testing gaps: Maintain a short checklist of critical paths (correct speech order, three-strike restart, Mele NPC threshold, character-select branch).

Highest-leverage mitigations: data-driven everything, local-only state, small discrete areas, documented flags, and an explicit accuracy review gate.

Last updated: 2026-10-25
