# Tongan Wedding Scroller

Hybrid walking visual novel / lightweight adventure for learning Tongan (Beginner+).

## Find the source for a task

- **Runtime and dialogue.** Start at [main scene](scenes/main.tscn) or [dialogue manager](scripts/autoload/dialogue_manager.gd), then open only the relevant [dialogue data](data/dialogue).
- **Approved design and visual work.** Read the relevant [locked decisions](vault/18-locked-decisions.md) or [visual style reference](assets/style-reference.md). The [vault index](vault/README.md) routes research and other design questions.
- **Dialogue structure or demo acceptance.** Open the [schema](vault/20-dialogue-schema.md) or [prototype criteria](vault/22-prototype-success-criteria.md). Tongan language and cultural details require DR L.V.S review per the vault.
- Use checked-in scenes and data for implemented behaviour. Approval of a design or mockup by itself gives no implementation evidence.

## Open in Godot

1. Install Godot 4.7+ (standard version).
2. Clone or pull this repo.
3. In Godot Project Manager: **Import** → select the folder containing `project.godot`.
4. Open and run (F5).

## English review mode

English translations currently appear under every Tongan line and choice so the project can be reviewed and worked through in English.

To hide them for the final demo or post:
- Open `scripts/ui/dialogue_box.gd`
- Set `show_english_for_review = false`

All English text lives in the JSON files under `line_english` and `caption` fields, so it can be stripped or ignored later without changing structure.

## Current state

- Landscape project with dialogue system.
- Core path JSON (airport through market) with English for review.
- Placeholder background only.

## Approved visual direction

[Visual style and reviewed references](assets/style-reference.md): cute chibi characters, top-down 2D exploration through compact connected neighbourhoods/routes, larger dialogue views, and an exterior side-on airport car ride. Optional sights, signs and NPC encounters embed language along the way. This is the approved design direction; the current placeholder implementation does not yet provide the overworld. Cultural/language details remain subject to DR L.V.S review.

Visual direction last confirmed in the [style reference](assets/style-reference.md).
