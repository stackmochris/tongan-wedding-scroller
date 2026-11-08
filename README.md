# Tongan Wedding Scroller

Hybrid walking visual novel / lightweight adventure for learning Tongan (Beginner+).

## Opening demo on this branch

The default F5 scene is now the playable **A Wedding in Tonga** opening: title menu → airport exploration → Sione/Mele selection → driver exchange → boarding → exterior car ride → Popua arrival.

See [OPENING-DEMO.md](OPENING-DEMO.md) for pull/run instructions, controls, save details and the repeatable Godot smoke test. Uses the existing prototype SVG art plus new airport/travel layers; polished illustrated assets remain review material. All Tongan/cultural content still requires DR L.V.S review.

The previous story prototype remains at `scenes/main.tscn` (F6).

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

- Playable opening with title/options/info, overhead airport movement and character selection.
- Exterior car ride and Popua arrival endpoint.
- Versioned local opening checkpoints and Continue.
- Separate earlier core-path dialogue prototype (airport through market).
- Functional prototype art; final production artwork remains in progress.

Vault design docs are in `/vault`.

## Approved visual direction

[Visual style and reviewed references](assets/style-reference.md): cute chibi characters, top-down 2D exploration through compact connected neighbourhoods/routes, larger dialogue views, and an exterior side-on airport car ride. Optional sights, signs and NPC encounters embed language along the way. This is the approved design direction; the current placeholder implementation does not yet provide the overworld. Cultural/language details remain subject to DR L.V.S review.

Last updated: 2026-10-25

