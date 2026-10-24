# Wedding Climax Mechanics

Differentiated final sequences for the two player paths. Both are data-driven binary-choice systems that reuse the existing dialogue node and flag architecture. Character select determines which climax the player receives.

## Sione — Formal Speech

- The player delivers a short formal speech via a sequence of binary choices.
- Each choice presents two options. The correct option advances with a clear positive signal (tick or approving NPC reaction). The incorrect option produces visible confusion from NPCs.
- Correct sequence must follow proper Tongan formal speech conventions (order of thanks and acknowledgement).
- Three incorrect choices trigger an NPC to remove the player from the microphone and restart the speech sequence only.
- The sequence is short and focused on the introduction and core thanks.

## Mele — Tauʻolunga

- The player performs a tauʻolunga by choosing the next movement and the reason for that movement.
- Successful inputs cause additional NPCs to join the stage in the background. The number of NPCs who join is the visible success metric.
- Incorrect inputs produce no additional NPCs.
- Ending the sequence below a minimum NPC threshold is a failure and restarts the sequence only.
- Money-throwing is not used.

## Shared Rules

- Failure restarts only the climax sequence, not the preceding area.
- Both sequences draw on vocabulary and structures introduced earlier in the game so the climax is an application of prior learning rather than a sudden test.
- Character select is consequential: it determines which learning content is emphasised in the mid-game and which climax is available.
- Optional third path: Sione may be routed into Mele’s climax if presented as an existing family role. Framing must remain ordinary and specific, without additional commentary.

## Accuracy Note for DR L.V.S

The correct order of thanks in a formal speech and the authentic movement/meaning pairs for the tauʻolunga are not yet specified. These must be supplied and confirmed before the dialogue nodes and choice options are finalised. All language and cultural content in both sequences is subject to DR L.V.S review for accuracy.

Last updated: 2026-10-25
