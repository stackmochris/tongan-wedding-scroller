# Tongan Language Scroller Game — Design 1-Pager

Evidence-based design for an expansive, Pokemon-style exploration game that teaches Tongan through world interaction rather than quizzes or flashcards.

## Core Principle
Language is acquired primarily through **comprehensible input** in meaningful contexts, with spaced retrieval and light output opportunities. The game world itself should be the teacher. Words and phrases appear because the player needs them to move, interact, or solve something—not because a menu told them to study.

## What to Include

| Element | Why (evidence basis) | Implementation note |
|---------|----------------------|---------------------|
| **World-driven vocabulary** | Comprehensible input (Krashen); meaningful context strengthens retention | NPCs, objects, signs, and events use high-frequency / high-utility Tongan first. Player only advances or resolves “hijinks” by understanding or producing the right word/phrase. |
| **i+1 encounters** | Input slightly above current level is most efficient | Difficulty scales with zones or story progress. Early areas = everyday words + simple structures; later areas add domain or less frequent items in supportive context. |
| **Spaced re-exposure** | Forgetting curve + spacing effect (Ebbinghaus; Cepeda et al.; Kim & Webb 2022) | Same useful words reappear naturally across different locations and situations over time. No forced review screen. |
| **Light output moments** | Swain output hypothesis (noticing, hypothesis testing) | Player chooses dialogue options, names objects, or gives short instructions to an NPC. Feedback is environmental (door opens, character reacts) rather than “Correct!” |
| **Multimodal support** | Audiovisual input meta-analyses (Sutton et al.) | Spoken Tongan + optional captions on key interactions. Visual context (character action, object) carries meaning. |
| **Interest & agency** | Sustained exposure requires motivation | Exploration, mild consequences, character relationships, and light narrative drive the player forward. Language is the tool, not the subject. |
| **Orthography handled gently** | Practical usability | Support fakau'a (Tongan glottal stop; Hawaiian equivalent is ʻokina) and ng as a single letter; allow fuzzy matching or visual selection early so typing barriers don’t block progress. |

## What to Avoid

- Quiz screens, flashcard decks, or “study this list” loops as the primary loop.
- Heavy explicit grammar instruction or rule explanations.
- Pure entertainment content with no linguistic demand (watching without interaction).
- Massed repetition of the same item in one sitting.
- Punishing failure that raises the affective filter (anxiety blocks input).
- Assuming one-size-fits-all difficulty—provide soft scaffolding (hints that fade, optional captions).

## Minimal Viable Loop
1. Player walks into a scene.  
2. Something interesting or blocking happens (hijink).  
3. Relevant Tongan appears in speech, signs, or object labels, supported by visuals and optional audio.  
4. Player acts (selects, speaks a short phrase, or interacts correctly).  
5. World responds. Word is re-encountered later in a different context.  

## Portability Note
The same structure works for Samoan, Niuean, Hawaiian, Tokelauan, Fijian, and Reo Māori. Swap the lexical content, orthography rules (e.g., fakau'a in Tongan/Samoan vs ʻokina in Hawaiian), and cultural framing; keep the input-first, world-driven, spaced-re-exposure design.

## Quick Success Check
If a player can progress mainly by understanding and lightly using Tongan inside the world—and the same words keep showing up usefully over time—you are aligned with the strongest evidence. If progress depends on finishing study modules, you have drifted back toward a quiz.

## Project Scope & Constraints

This is a first, fundable prototype aimed at MPP funding. It should be finishable, demonstrable, and simple enough that another person or small team could take the codebase and continue or localise it without reverse-engineering complexity.

- **Core story path**: 6 hours maximum to the wedding.
- The core path must deliver enough repeated, meaningful exposure for a complete beginner to reach functional Beginner+ and deliver the wedding speech.
- Extra playtime comes only from small, optional, replayable mechanics that recycle existing language (repeat errands, light sports, younger-relative hangouts).
- **Codebase**: Keep deliberately simple. Data-driven dialogue and vocabulary (JSON or equivalent). Minimal custom engine work. Clear separation between story content, language data, and game logic so hand-off is low-friction.
- Younger-relative thread remains secondary so it adds relational pressure without expanding the language load.

---
Last updated: 2026-10-24  
Source principles drawn from the language-learning-reference vault (Krashen, Nation, Swain, Ebbinghaus, Cepeda et al., Kim & Webb, Sutton et al.).
