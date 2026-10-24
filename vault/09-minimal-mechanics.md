# Minimal Interaction Mechanics

Designed for a ≤6 hour core path, Beginner+ outcome, and a simple, hand-off-friendly codebase. All language content lives in data (JSON or equivalent). Game logic only reads flags, triggers, and choice results.

## Core Loop (every interactive beat)
1. Player enters a trigger zone or approaches an NPC/object.
2. Dialogue or environmental text appears (Tongan primary; optional caption after first exposure on Basic path).
3. Player selects from 2–4 short options (or performs one contextual action).
4. World state updates (door opens, item is obtained, NPC reaction, flag set).
5. Same or related language reappears later in a new context.

No quiz screens, no separate study mode, no scoring UI.

## Mechanics

### 1. Movement & Exploration
- Top-down or light side-view free movement inside small, discrete areas (airport exterior, car interior cutscene, family house, market, church grounds, sports area, wedding venue).
- Areas are connected by simple transitions or short travel sequences.
- No complex physics, inventory tetris, or simulation. Player walks, faces interactables, and triggers them.

### 2. Interaction Trigger
- Single “interact” input when near a flagged NPC, object, or zone.
- Triggers a dialogue node or short environmental line from data.
- One interaction per node; no nested menu trees.

### 3. Dialogue Choices (primary language mechanic)
- 2–4 selectable lines.
- At least one correct/productive choice advances the beat.
- Incorrect or partial choices produce a gentle in-world response (NPC repeats more slowly, relative offers a hint, action fails softly) and allow retry or alternative path.
- Choices are short phrases the player has seen or can infer from context.
- Data fields per choice: `tongan`, `english_caption` (optional), `result_flag`, `next_node`.

### 4. Environmental Feedback
- Success and failure are shown by the world, not by text overlays saying “Correct.”
- Examples: elder nods and continues, shopkeeper hands over the item, cousin laughs and joins, door stays closed until the right phrase is chosen.
- Supports noticing without explicit correction screens.

### 5. Path Flags
- **Basic vs Beginner+**: Set once at the opener (“Ko e ha?” vs “What does that mean?”). Controls caption availability and scaffolding density.
- **Character path**: Set at character select (Sione or Mele). Gates role-specific mid-game learning nodes and selects the wedding climax type. See [15-wedding-climax-mechanics.md](15-wedding-climax-mechanics.md).
- Both flags are simple booleans checked by dialogue data. No separate game modes or content forks beyond the controlled differences.

### 6. Wedding Climax (set-piece)
Differentiated by character path. Full detail in [15-wedding-climax-mechanics.md](15-wedding-climax-mechanics.md).

- **Sione — Speech**: Sequence of binary choices following formal speech order. Correct choice produces positive NPC reaction; incorrect produces confusion. Three incorrect choices restart the sequence only.
- **Mele — Tauʻolunga**: Sequence of binary choices (next movement + reason). Successful inputs cause NPCs to join the stage. Ending below a minimum NPC count restarts the sequence only.
- Both reuse the standard dialogue node structure and environmental feedback.
- Failure restarts only the climax sequence, not the preceding area.
- All speech order and dance vocabulary subject to DR L.V.S confirmation before finalisation.

### 7. Optional Replay / Recycling
- Certain errands (market run, sports kick-about) can be repeated.
- Repeats use the same dialogue data with minor variation flags.
- No new vocabulary. Purely for extra exposure and light playtime.
- Clearly marked as optional so they do not extend the critical path.

### 8. State & Progress
- Simple string/boolean flags: `met_elder`, `has_supplies`, `speech_rehearsed`, `cousin_present`, `character_path`, etc.
- Flags gate later nodes and area transitions.
- No complex quest log required for the core path; a minimal “people to see” list is optional and data-driven.

## What is intentionally absent
- Inventory management beyond a single “carrying supplies” flag.
- Combat, timing minigames, or dexterity challenges.
- Branching story trees that multiply content.
- Separate vocabulary journal or flashcard system.
- Voice input or free-text typing (selection only, to keep orthography barriers low).
- Multiplayer or persistent online state.

## Data Shape (example)
```json
{
  "node_id": "market_ask_fabric",
  "speaker": "shopkeeper",
  "line_tongan": "ʻOku ke fiemaʻu e ha?",
  "line_english": "What do you need?",
  "choices": [
    {
      "tongan": "ʻOku ou fiemaʻu e kofu.",
      "caption": "I need the fabric.",
      "sets_flag": "asked_for_fabric",
      "next": "market_quantity"
    },
    {
      "tongan": "Ko e ha e meʻakai?",
      "caption": "What food is there?",
      "sets_flag": null,
      "next": "market_redirect"
    }
  ]
}
```

## Hand-off Notes
- All story and language content lives in data files.
- Engine code handles: movement, trigger detection, dialogue rendering, choice selection, flag storage, and area transitions.
- New scenes or languages require new data, not new systems.
- Climax sequences reuse the same dialogue renderer and flag system.
- Cultural accuracy review by DR L.V.S is required before language content is locked.

Last updated: 2026-10-25
