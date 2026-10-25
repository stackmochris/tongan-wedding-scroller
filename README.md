# Tongan Wedding Scroller

Hybrid walking visual novel / lightweight adventure for learning Tongan (Beginner+).

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

Vault design docs are in `/vault`.

Last updated: 2026-10-25
