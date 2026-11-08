# Illustrated opening assets

This folder replaces vector stand-ins in the playable opening. All six PNGs are
image-generated artwork prepared for this project. No dialogue or interface text
is baked into them. The original vector pack is retained elsewhere as historical
source material and is not loaded by the opening.

| File | Use |
|---|---|
| arrival-characters.png | Rows: Sione arrival, Mele arrival, driver. Columns: down/front, right, left, up/back. True alpha; renderer finds each figure's bounds. |
| airport.png | High overhead terminal and forecourt for exploration. Doors align with spawn; pickup bay holds the separate car. |
| airport-front.png | Larger terminal exterior for conversations. Characters and UI stay separate. |
| travel-objects.png | Side-on blue car with driver, overhead car, palm, church. Transparent regions. |
| road.png | Side-on sky, sea, village, roadside and road. Independent objects move over it. |
| popua.png | Clean family-house arrival plate preserving the approved house, veranda and water tank. |

The travel sheet is 1536 × 1024. Its horizontal art gutter is y=430, not y=512:
use regions (0,0,768,430), (768,0,768,430), (0,430,768,594), (768,430,768,594).
The renderer tightens alpha bounds inside each region. Equal quarters would clip
palm fronds/church tower and leak the church cross into the overhead car.

Characters are directional idle illustrations. Final footstep animation cycles
remain a later task. Sprite heights and foot pivots are normalized in presentation
code without altering the source PNGs.

## Project source references

- **Tongan wedding costume cards.png**: player identities and arrival costumes.
- **Tongan Wedding Family Cast Sprite Card.png**: driver silhouette and outfit.
- **Popua Overworld Adventure.png**: overhead camera and environment treatment.
- **Popua Family Welcome.png**: Popua arrival plate and environment continuity.
- **Coconut tree road ride**: exterior blue car and layered travel presentation.

Clean sheets/plates were generated from those references, rather than using concept
screenshots with baked-in UI. Reference links are in `assets/style-reference.md`.

All language, clothing specifics and cultural framing remain
**DR L.V.S REVIEW REQUIRED**. Maps are simplified staging, not surveyed geography.
