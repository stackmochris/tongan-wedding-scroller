# Medium-Priority Notes

Human decisions recorded for grant scrutiny. Items marked approved were confirmed by Chris before writing.

## 1. Spaced Re-exposure Map
**Status**: Approved by Chris 2026-10-25. Weighting driven by learning data for conversational fluency.

Highest-utility conversational items receive at least two successful retrievals after introduction. Lower-utility and role-specific items receive one.

| Phrase group | Utility | Introduced | Minimum later retrievals | Example later beats |
|--------------|---------|------------|---------------------------|---------------------|
| Malo e lelei / Ko au… / Ko hai? | Highest | Airport | 2 | Dinner, Eve, Ending |
| Sio / Ko ena / ʻOku | High | Car | 2 | Market, Sports |
| Malo / ʻOku ou fie… / Fāmili | High | Dinner | 2 | Market, Church, Eve |
| ʻOku ou fiemaʻu / Fīha / Malo | High | Market | 2 | Eve, Climax (if needed) |
| Malo e tokoni / Taimi | Medium | Church | 1 | Eve |
| Haʻu / ʻAlu / Lelei | Medium | Sports | 1 | Ending |
| Fakamālō / ʻOfa | High (ceremonial) | Eve | 2 | Climax, Ending |

Role-specific fragments reappear only inside their own path’s eve and climax.

## 2. Review Workflow with DR L.V.S
**Status**: Approved by Chris 2026-10-25.

- **Format**: One file per beat, Tongan lines + choices only, one-line English gloss in comment. No engine code.
- **Cadence**: DR L.V.S responds as she is able. No fixed deadline.
- **Pending review**: Pieces may proceed with explicit stub notes while awaiting review.
- **Marking**: Add `"reviewed": true` or move from `/draft` to `/reviewed`. Stubs remain clearly marked.
- **Scope**: Language, speech order, dance vocabulary, and cultural framing only.
- Demo-path lines must be reviewed or explicitly accepted as stubbed before success criteria are marked complete.

## 3. Basic vs Beginner+ Density Rules
**Status**: Approved by Chris 2026-10-25.

- Both paths show captions.
- **Basic**: Captions on most lines the first time they appear (unless `suppress_caption`).
- **Beginner+**: Captions focus on more complex words and syntax. Simpler high-frequency lines stay caption-free after first exposure.
- Sliding reduction (both): After every three correct choices in a beat, the next non-suppressed caption is omitted. Resets at the next beat.
- Path flag set once at the opener and never changes.
- Basic path may include one extra scaffolding line on the first failure of a revision check. Beginner+ uses only a minimal redirect or loop.

## 4. Player Motivation and Cousin Payoff
**Status**: Stub. Chris will flesh out separately and return.

Placeholder only — do not treat as design:
- Player has a time-limited return and is needed for formal Tongan.
- Cousin shows gradual engagement across beats.
- No new systems.

Last updated: 2026-10-25
