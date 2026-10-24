# Character List

Minimal cast required for the ≤6 hour core path. All characters are data-driven (name, role, dialogue nodes, presence flags). No complex schedules or AI behaviour.

## Player
| Name | Role | Notes |
|------|------|-------|
| Sione / Mele | Player character | Diaspora returnee. Chosen at airport. Greyed until selection. Speaks only via choice selection. |

## Core Cast (required)

| Character | Relationship | Primary areas | Function | Key interactions |
|-----------|--------------|---------------|----------|------------------|
| Driver | Distant relative or family friend | Airport, Road | First extended contact; delivers pointing language | Greeting, scenery commentary |
| Elder (Grandmother or senior aunt/uncle) | Close family elder | Popua (dinner & eve), Wedding | Authority figure; sets wedding expectation; receives speech | Welcome, food, speech reaction |
| Parent / Coordinating relative | Mother, father, or organising aunt/uncle | Popua, Market (optional), Wedding eve | Assigns coordination tasks; supports rehearsal | “We need help”, rehearsal lines |
| Younger cousin | Teenage cousin | Popua dinner, Stadium, Wedding eve (optional), Departure | Sub-theme: mild disengagement → slight warming | Quiet hello, sports, optional encouragement, farewell |
| Shopkeeper | Market vendor | Nukuʻalofa market | Transactional language | Needs, quantities, thanks |
| Minister / Church elder | Church figure | Church grounds | Polite public register; confirms wedding details | Time, thanks, blessing language |
| Wedding elder (may be same as family Elder) | Presiding or senior family member | Haʻatafu | Introduces player speech; reacts | “Now [name] will speak” |

## Optional / Background
These can be simple sprites with one or two lines, or pure background presence. Not required for the critical path.

- Additional dinner relatives (silent or single greeting)
- Market background shoppers
- Stadium youths (non-interactive or single “come play”)
- Wedding guests (environmental reaction only)

## Presence Flags (examples)
- `cousin_present` — toggles younger cousin in stadium, eve, and departure
- `elder_is_grandma` — swaps church framing and some dinner lines if village-church path is chosen
- `driver_is_relative` — minor dialogue variation only

## Design Rules
- One clear function per core character.
- Reuse the same Elder sprite/data for dinner, rehearsal support, and wedding introduction where possible.
- Younger cousin never gates the critical path.
- All names and relationship titles live in data so they can be adjusted during translation or localisation.
- Total unique speaking roles for the prototype: 7 (including player choices).

Last updated: 2026-10-24
