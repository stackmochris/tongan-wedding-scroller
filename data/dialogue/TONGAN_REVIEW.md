# Tongan dialogue review — draft for language-owner sign-off (1 November 2026)

## Status and scope
This is a **targeted first pass**, not a completed native-speaker approval. Both `data/dialogue/core_path.json` (the file loaded by `scripts/main.gd`) and the separate `data/dialogue/airport.json` were checked. Existing node IDs, next-node links, branch flags and schema keys are preserved. Nothing in this change purports to certify the full script, official register, orthography or sound recordings.

## Changes made
- Standardise **Mālō e lelei** and **Mālō**, with the long vowel.
- Remove false apostrophe from **Nofo**; use **ʻapi** rather than English-influenced *ki fale* for 'home' in this context.
- Remove the English word `driver` from Tongan-only speech; replace with a description of the person who will collect the visitor.
- Remove English explanation from the Tongan-only airport field.
- Prefer **fuʻu niu** where the English explicitly refers to a coconut *tree*.
- Replace the unidiomatic early-wedding and 'need help' line with **ʻOku ofi mai ʻa e ʻaho ʻo e mali. ʻOku mau fiemaʻu ha tokoni.**
- Make food request and barkcloth request grammatical with **ha**, and describe **ngatu** correctly in its English gloss rather than calling it any fabric.
- Use **Kuo feʻunga** for 'that's enough'; improve the number response; preserve `sets_flag` and `next` values.
- Use a direct greeting to the player instead of the literal slash `Sione/Mele` pronunciation (ideally this should become two path-gated lines).

## Suggested dialogue additions — editorial proposals, **not** production nodes

| Scene | Speaker / purpose | Tongan draft | English | Review issue |
|---|---|---|---|---|
| Airport | Greeter, gentler self-introduction | Ko hai ho hingoa? | What is your name? | Less abrupt than “Ko hai koe?” for an unfamiliar traveller |
| Airport | Player | Ko Sione au. / Ko Mele au. | I'm Sione. / I'm Mele. | Validate idiomatic preference against original Ko au Sione / Mele |
| Driver | Greeting | Fēfē hake? | How are you? | Degree of informality, relationship |
| Car | Player response | Ko e fuʻu niu ia? | Is that the coconut tree? | Repeated pointing/retrieval |
| Car | Driver | ʻIo, ko e fuʻu niu ia. | Yes, that is the coconut tree. | Singular/demonstrative based on art |
| House | Elder | Hū mai, ʻo nofo ki lalo. | Come in and sit down. | Respect and prosody |
| House | Player | Mālō e talitali lelei. | Thank you for the warm welcome. | Naturalness/register review |
| Dinner | Elder | ʻOkú ke fie kai? | Would you like to eat? | Contrast hunger state vs offer |
| Dinner | Player, accept | ʻIo, mālō. | Yes, thank you. | Polite acceptance |
| Dinner | Player, decline | ʻIkai, mālō. | No, thank you. | Ensure warmer alternative if appropriate |
| Market | Vendor | Ko e hā ʻokú ke kumi? | What are you looking for? | Optional variation to fiemaʻu |
| Market | Player | ʻOku ou kumi ha ngatu. | I'm looking for ngatu. | Ngatu is decorated Tongan barkcloth |
| Market | Vendor | ʻOkú ke fiemaʻu ha fiha? | How many do you need? | Count unit for sheets, rolls, bundles, food must be specified |
| Market | Player | ʻE ua, mālō. | Two, thank you. | Item-specific unit still needed |

## Outstanding content and pedagogy decisions
1. **Greeting register:** `Ko hai koe?` can feel blunt as first contact. Prefer the question about name if the greeter does not know the traveller; align relationship before sign-off.
2. **No mixed-language speech:** a teaching aside belongs in `line_english` or a separate tutorial mechanic, not an NPC Tongan utterance.
3. **Character name:** the elder should not say *Sione/Mele* aloud. Add path-specific dialogue or a substitution token once the engine can support it.
4. **Market quantity:** “two” is only meaningful with the item and unit; “enough” is not a direct answer to “how many do you need?” Make the second branch a realistic follow-up question or contextual completion.
5. **Food versus fabric:** the prototype currently jumps from one request to the same generic quantity line. Use request-dependent lines to reflect food portions vs ngatu pieces.
6. **Semantic precision:** `ngatu` is Tongan barkcloth, not equivalent to all fabric. If the quest actually needs ordinary cloth, use `konga tupenu` or another contextually reviewed term.
7. **Orthography:** inspect contextual fakauʻa, toloi, and any fakamamafa/word-stress markers with a fluent Tongan editor; do not blanket-add diacritics.
8. **Elder and fahu:** make cultural roles explicit before expanding to formal titles and speech order.
9. **Core dialogue count:** `core_path.json` is a short skeleton, not yet the 100–140 player-facing lines specified by the prototype success criteria.
10. **Technical status:** these files were JSON-parsed in the review; they have **not** been playtested in Godot. Existing educational/cultural text still requires L.V.S. review.

## Language style note
Translation follows the project's own cultural-respect and learner-comprehension rules: semantic accuracy first, natural Tongan word choice, culturally appropriate interaction, and contextual orthography rather than mechanical replacement. New drafts should always be documented in this file for review before being marked approved.
