# Medium-Priority Notes

Drafted for review. Adjust or approve before treating as locked.

## 1. Spaced Re-exposure Map

Core phrases that must reappear after their introduction beat. Target: at least one successful retrieval in a later beat, preferably two for the highest-utility items.

| Phrase group | Introduced | Reappears in | Notes |
|--------------|------------|--------------|-------|
| Malo e lelei / Ko au… | Airport | Dinner, Eve, Climax, Ending | Highest frequency |
| Sio / Ko ena / ʻOku | Car | Market (pointing at goods), Sports | Visual context again |
| Malo / ʻOku ou fie… / Fāmili | Dinner | Market, Church, Eve | Social routine |
| ʻOku ou fiemaʻu / Fīha / Malo | Market | Eve (requesting help), Climax (if needed) | Task language |
| Malo e tokoni / Taimi | Church | Eve | Polite register |
| Haʻu / ʻAlu / Lelei | Sports | Ending (movement home) | Everyday verbs |
| Fakamālō / ʻOfa | Eve | Climax, Ending | Ceremonial close |

Role-specific fragments (speech order or dance pairs) reappear only inside their own path’s eve and climax nodes.

## 2. Review Workflow with DR L.V.S

- **Format**: One markdown or JSON file per beat containing only the Tongan lines and choices, plus a one-line English gloss in comments. No engine code.
- **Cadence**: Send a beat when its English framework is stable. Expect comments within a few days; no fixed SLA for the prototype.
- **Marking approved**: Add `"reviewed": true` (or a top-level `status: approved`) to the dialogue file, or move the file into a `/reviewed` subfolder. Unreviewed files stay in `/draft`.
- **Scope**: Language, speech order, dance vocabulary, and cultural framing only. Gameplay flags and structure are out of scope for this review.
- All demo-path lines must be reviewed (or explicitly accepted as draft) before the prototype success criteria are marked complete.

## 3. Basic vs Beginner+ Density Rules

- **Basic path**: Captions available after first exposure unless `suppress_caption` is true. One extra scaffolding line (slowed repeat or relative hint) on the first failure of each revision check. Slightly fewer new phrases per beat.
- **Beginner+ path**: Captions off by default. No extra scaffolding line; incorrect choice simply loops to the same node or a minimal redirect. Same phrase set, denser presentation.
- Sliding scale (both paths): After every three correct choices in a beat, the next non-suppressed caption is omitted. Resets at the start of the next beat.
- Path flag is set once at the opener and never changes.

## 4. Player Motivation and Cousin Payoff

- **Player motivation**: The player has a return flight in a few days and is the only diaspora relative present who can still manage basic Tongan. Elders will not switch to English for the formal parts of the wedding. Helping is the price of being properly included before leaving again.
- **Cousin payoff**: Cousin starts quiet and answers in single words. By the sports beat they initiate one invitation. By the ending they use a full farewell line unprompted and stand closer. No separate quest; the change is visible in dialogue flags and one optional scene.
- Both stay light so they do not add systems or inflate the 6-hour core.

Last updated: 2026-10-25
