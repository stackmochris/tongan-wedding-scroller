# Approved Visual Style and Presentation

Approved by Chris on 2026-11-07 (Pacific/Auckland), following review of character/dialogue, exterior car-ride and top-down Popua concepts. This is the visual source of truth; retain the clothing and location baselines for cultural and geographical detail.

## Three complementary surfaces

| Surface | Camera and scale | Purpose |
|---|---|---|
| Exploration | Top-down 2D orthographic, slightly angled overhead; visible roofs and building fronts; four-direction movement | Walk between story locations, meet people, inspect sights and encounter language in context |
| Conversation / story | Larger chibi characters and matching speaker portraits, contextual scene backdrop, lower dialogue panel | Read expressions, clothing and meaningful choices |
| Airport car ride | Exterior side-on vehicle view, horizontal layered scenery | Pointing-language sequence during longer travel |

“Scroller” does not mean side-scrolling platformer exploration. The earlier side-on Popua walking mockup is superseded by the approved top-down neighbourhood. The exterior car ride remains side-on.

## Character art

- Fully cute chibi: oversized heads, small bodies, approximately 2.5 heads tall as a starting reference; match the approved images rather than rigid anatomy measurements.
- Warm brown Tongan skin tones with variation, expressive dark eyes, rounded forms, distinct faces and hairstyles. Elders remain recognisably older; youth and adults are distinguishable.
- Clean consistent dark-brown outlines, soft cel shading and restrained texture. Illustrated non-pixel 2D art; no photorealistic or 3D-rendered treatment.
- Keep silhouettes readable at overworld scale. Preserve the same identity across walking sprites, larger dialogue art, portraits and costume stages.
- Sione concept: short dark curls, teal casual t-shirt, tan shorts, sneakers at arrival.
- Mele concept: long dark hair; casual arrival outfit per character brief, coral top and teal long wrap/skirt for the mid-game market concept.
- Elder concept: silver bun, warm aged face, modest plum dress and small natural woven waist mat.
- Driver concept: friendly adult, short dark hair, patterned short-sleeved collared shirt and tupenu, no ceremonial mat.
- These are visual reference designs, not new narrative facts or permanent names for unnamed NPC roles.

## Clothing and cultural grounding

Follow [clothing baselines](../vault/13-clothing-baselines.md): casual player arrival; semi-casual mid-game; formal wedding; lighter retained participation at departure. Preserve tupenu, wrap/lavalava, taʻovala and kiekie as distinct garments rather than interchangeable decoration. NPC dress stays appropriate to role. Do not add ceremonial clothing to casual youth or an everyday driver. Cloth layering and readable silhouettes matter more than tiny ornament.

Chris approved the demonstrated visual treatment and proportions. This does not replace DR L.V.S approval of cultural framing, garment specifics, motifs, language, speech or dance. Avoid generic tiki/hula/fantasy-island substitutions.

## Palette and environment rendering

Warm tropical earth tones, soft greens, ocean-blue accents, cream and terracotta; natural woven beige, cream house walls and red corrugated roofs provide anchors. Bright inviting daylight, soft shadows, gentle evening variants where needed. Keep foreground characters and paths legible against detailed scenery.

Contemporary Tongatapu: modest houses, verandas, water tanks, low fences, coconut palms, gardens, market produce and handicrafts. Use [location baselines](../vault/14-location-baselines.md) for each site. Simplify faithfully rather than copying precise real-world geography.

## Overworld layout

- Classic overhead 2D adventure-RPG spatial grammar, with original assets: north-up paths, visible roofs, readable front entrances and four-direction character views. Not isometric, not a side-on stage; no sky/horizon in overhead maps.
- Compact connected neighbourhoods/routes let the player walk between story destinations. Compress geography; do not build a full-scale Tongatapu or imply real distances.
- Paths should visibly connect gates, doors, junctions and area exits. Grass, fences, garden beds and buildings communicate boundaries.
- Approved Popua composition: family home with veranda and water tank, neighbouring homes, sandy paths connected to a road, open gates, grandmother near the doorway, cousin nearby and an optional garden encounter.
- Use smaller overworld characters with readable head/hair/outfit silhouettes; the reviewed concept is the scale reference. Keep enough open path space to navigate.
- Nearby destinations can connect on foot; long journeys use explicit transitions or travel scenes. Airport travel retains the approved exterior car sequence.
- Keep the nine-area story spine, six-hour maximum and no-required-backtracking rule. Route segments support existing areas, not additional mandatory chapters.
- Separate ground, structures/occluders, props, characters and UI for implementation. Concept screenshots are composition references, not finished collision maps or animation atlases.

## Language along the way

Optional signs, inspectable coconut trees, landmarks, garden activity and brief NPC exchanges make travel meaningful. Reuse current learning targets and familiar phrases in context. Prefer one clear focus at a time, using the existing interaction/dialogue schema and flags. No mandatory vocabulary hunt, quiz overlay, separate study mode or new scoring system.

Use a small speech icon for available NPC conversation and a subtle outline/context label for a nearby inspectable object. Avoid permanent labels on every object. English in concepts is review copy; final Tongan and caption behaviour follow the language review and existing accessibility rules. The gardener and signs in the concept are examples, not newly approved cast or mandatory content.

## Dialogue and interface

- Cream panels with terracotta borders, rounded corners and readable dark-brown text.
- Matching speaker portrait, clear speaker name, generous dialogue area and distinct choice buttons.
- Preserve readable clothing and faces above the lower panel. Exploration keeps the world unobstructed with only compact location and contextual interaction hints.
- Floral/geometric accents should remain restrained; culturally specific motifs require review.
- Keyboard arrows / E in concepts are illustrative hints, not a newly frozen input mapping. Adapt hints to actual controls and platform; do not rely only on colour.
- No health bars, coins, scores or invented inventory UI. No “Correct!” feedback.
- Landscape composition is the reviewed baseline. Verify small-screen legibility in-engine; do not bake UI or dialogue into background art.
- “VISUAL CONCEPT” is review-only and must not appear in production assets.

## Car ride

Exterior side-on compact light-blue car, characters visible through windows, clear road contact, layered palms/village/fields/church/coastal scenery. Driver faces the road with hands on the wheel; passenger can watch scenery. A subtle visual emphasis may connect the spoken line to its landmark. No interior driving camera or driving simulation. Separate car, occupants, scenery layers and UI when producing assets.

## Approved review references

Images are saved in ChatGPT; these links identify the reviewed compositions, not repository-hosted production assets.

| Reference | Status |
|---|---|
| [Popua Family Welcome](https://chatgpt.com/library?file_id=libfile_8ecde97119f08191bf923827301f54ed&account_id=personal) | Approved chibi proportions and dialogue treatment |
| [Talamahu Market Supply Conversation](https://chatgpt.com/library?file_id=libfile_cbb3cfb4109481918d3ce48fcf96a5fd&account_id=personal) | Approved character, costume and market/dialogue direction |
| [Coconut tree road ride](https://chatgpt.com/library?file_id=libfile_527c6f9fc75481918f5ee975cc0a07b3&account_id=personal) | Approved exterior car-ride direction |
| [Popua Overworld Adventure](https://chatgpt.com/library?file_id=libfile_6c99411d95cc81919a1a47fcc5598861&account_id=personal) | Approved exploration camera, world composition and environmental encounters |
| [Popua Family House Walk](https://chatgpt.com/library?file_id=libfile_159b638480508191954533b921e440a3&account_id=personal) | Superseded exploration perspective; do not use as the walking-camera reference |

## Production checks

Match character identity, proportions, palette and line weight across all surfaces. Produce front/down, back/up, left and right sprite views; test silhouette, occlusion and interaction reach before final animation. Match doorway/path scale across maps. Export clean environment/character assets separately from UI; inspect transparency and sprite alignment. Existing demo atlas sizes are stand-in specifications, not approval of final resolution. Confirm production dimensions in-engine before batch generation.

This approval records art direction and exploration intent only. Existing game code, frozen dialogue schema, learning target and cultural sign-off remain unchanged by this documentation update.
