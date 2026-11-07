# Opening-scene prototype art pack

Five character 4×4 SVG animation atlases and five 1280×720 SVG background plates.

**Art direction:** simple, editable vector stand-ins in a warm cel-shaded chibi palette. These are functional draft assets, **not** the final illustrated character art. They supersede placeholders while refined PNG sprites are being prepared. No wedding outfits appear in the opening scenes.

## Approved direction versus these stand-ins

See [approved visual style](../style-reference.md). Exploration is now explicitly top-down 2D with compact walkable routes; the earlier side-on walking composition is superseded. These existing flat background plates do not implement that overworld. Retain them as prototypes until separately authorised asset/code work. Conversation backdrops and exterior car travel remain distinct from overhead maps. Existing atlas dimensions below describe these stand-ins only.

## Characters

- `characters/sione_walk.svg` — casual shirt and shorts
- `characters/mele_walk.svg` — casual top and skirt
- `characters/driver_walk.svg` — shirt and tupenu
- `characters/elder_walk.svg` — dress and waist wrap
- `characters/shopkeeper_walk.svg` — market attire

Every atlas is **512×512**, with **4 columns × 4 rows**, each frame **128×128**.

Rows (top to bottom): **front/down**, **right**, **left**, **back/up**. Columns: **idle, step A, passing, step B**. Use Godot AnimatedSprite2D SpriteFrames with 4 hframes and 4 vframes, or AtlasTexture regions. FPS 5–7 suggested. For an NPC that does not move, display frame 0.

## Backgrounds

- `backgrounds/airport.svg` — Fuaʻamotu airport opening and departure
- `backgrounds/car_ride.svg` — Tongatapu pointing language sequence
- `backgrounds/house_exterior.svg` — Popua house approach
- `backgrounds/house_interior.svg` — first family dinner
- `backgrounds/market.svg` — Talamahu shopping sequence

These can be used as Godot TextureRect backgrounds (expand/stretch to scene). Keep characters above the background layer. Verify SVG importer output in the target Godot release; convert to PNG if necessary.

## Scope

Initial playable prototype only: airport → car ride → family arrival → first dinner → market. Wedding climax, church, stadium, extra relatives and advanced dress transitions remain out of scope. Cultural/wording review remains required before public launch. The asset SVGs have no embedded dialogue.
