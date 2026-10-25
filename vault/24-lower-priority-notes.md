# Lower-Priority Notes

Human decisions recorded for grant scrutiny. All items below were confirmed by Chris on 2026-10-25.

## 1. Sprite and Background Inventory
**Status**: Approved by Chris 2026-10-25.

- Backgrounds are largely static.
- Core locations need 1–2 variants each (example: kitchen with food / kitchen without food).
- A small number of optional B-roll locations for variety (example: bedroom for end-of-sequence revision).
- No large set of unique animated backgrounds required for the prototype.
- Priority: airport, car ride, family house (2 variants), market. Wedding and sports can follow.

## 2. UI and Accessibility Baseline
**Status**: Approved by Chris 2026-10-25. Clarified same day.

- Text size is constrained by phone screen and flow. No separate large-text mode.
- Full text throughout for hearing-impaired players.
- Blind or partially blind players are out of scope for this prototype. This is a visual phone app.
- Future investment could support a vocal-focused or screen-reader path; that is explicitly deferred.
- Caption toggle exists but does not override the density rules already locked.
- Prototype README will contain one sentence stating the visual nature and the deferred vocal possibility.

## 3. Orthography and Sensitive-Content Notes
**Status**: Approved by Chris 2026-10-25.

- Language, vocabulary, syntax, and UI/UX copy are handled primarily by DR L.V.S.
- Socially or politically sensitive topics: real-world Tongan (and later other Polynesian) cultural context and reality prevail.
- Fakaleiti is a man who wants to be a woman; this is a recognised and accepted part of Polynesian culture. It is not framed through Western trans-identity language.
- Men are positioned as warriors and heads of household; the mother and the fahu are the decision-makers. This is presented as ordinary cultural reality without explanatory framing for a Western audience.
- Rule for this project: Cultural Context and Reality Prevails. Additional topics are addressed only as they appear, under the same rule.
- English glosses and captions must not impose external framing (also noted in the dialogue schema).

## 4. Session Length and Save Points
**Status**: Approved by Chris 2026-10-25. Clarified same day.

- Interactive sequences stay short (a few exchanges each).
- Autosave after every completed exchange or node is sufficient.
- Manual save is not required.
- A player who closes the app mid-sequence loses at most a few exchanges.
- Onboarding (airport + car) is atomic. Quitting during onboarding restarts it from the beginning.

## 5. Second-Path Incentive
**Status**: Approved by Chris 2026-10-25.

- The primary reason to replay as the other character is linguistic, not additional story mechanics.
- Male and female speech paradigms differ in tone and vocabulary.
- A player who completes only one path will have gaps when speaking in mixed or opposite-gender groups.
- Completing both paths gives a more rounded practical command of everyday and ceremonial language.
- No extra quests or systems are added to incentivise the second path.
- The airport-to-market demo does not yet demonstrate the linguistic contrast; funding narrative must not claim it is already playable.

## 6. Onboarding Length
**Status**: Approved by Chris 2026-10-25.

- The full airport + car sequence is mandatory.
- Expected duration: 5–10 minutes.
- Short enough that it is not a major investment, but not recommended immediately before a meeting.
- Atomic: quitting restarts the sequence.

## 7. Risk Register
**Status**: Approved by Chris 2026-10-25 (primary risk supplied by Chris; remaining items added for completeness).

| Risk | Likelihood | Impact | Current mitigation |
|------|------------|--------|--------------------|
| DR L.V.S unavailable for review | Medium | High | Proceed with clearly marked stubs; stub count is a tally only. Deadline decides whether to wait or use an alternative reviewer. Identify 1–2 alternatives in advance. |
| Dialogue schema needs late change | Low | Medium | Schema is frozen; any change requires explicit decision and version note |
| Art style drifts from approved chibi | Medium | Medium | Reference images and clothing baselines stored in repo; key characters locked before demo |
| Scope creep beyond data-only rule | Medium | High | Locked decisions and out-of-scope list; new systems require explicit reopening |
| Phone performance in market or multi-NPC scenes | Low | Medium | Small discrete areas, 30 fps target, profile early |

Last updated: 2026-10-25
