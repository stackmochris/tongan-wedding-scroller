# Dialogue Data Schema (Frozen)

Locked for the prototype. Audio reference is stubbed and will be added when recording begins.

## Node
```json
{
  "node_id": "string",
  "speaker": "string",
  "line_tongan": "string",
  "line_english": "string or null",
  "suppress_caption": false,
  "requires_path": "sione | mele | null",
  "choices": []
}
```

## Choice
```json
{
  "tongan": "string",
  "caption": "string or null",
  "sets_flag": "string or null",
  "add_joiner": false,
  "next": "node_id or null"
}
```

## Rules
- `line_english` and `caption` are omitted or null when no caption is allowed.
- `suppress_caption: true` forces no caption even on the Basic path.
- Sliding caption reduction (fewer captions after more correct choices) is handled by a global counter in the dialogue system. No extra fields required.
- `add_joiner: true` increments the static NPC joiner count for Mele’s climax. The scene displays that many pre-placed sprites. Insufficient joiners or three strikes set `next` back to the sequence start node.
- `requires_path` gates the node to one character path. Null means both paths.
- Audio filename field is omitted until recording starts.

## Example
```json
{
  "node_id": "airport_greeting",
  "speaker": "greeter",
  "line_tongan": "Malo e lelei!",
  "line_english": null,
  "suppress_caption": true,
  "requires_path": null,
  "choices": [
    {
      "tongan": "Malo e lelei.",
      "caption": "Hello.",
      "sets_flag": "greeted",
      "add_joiner": false,
      "next": "airport_who"
    },
    {
      "tongan": "Ko e ha?",
      "caption": null,
      "sets_flag": null,
      "add_joiner": false,
      "next": "airport_explain"
    }
  ]
}
```

Last updated: 2026-10-25
