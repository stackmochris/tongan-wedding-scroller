# Tongan Wedding Scroller — Scene Bible

English narrative draft • 7 November 2026 • Source commit `0f4051ea05b14f0c6bcc06538f7c3ef7e5350e6c`

**Status:** Complete English narrative pass; cultural and language slots remain explicitly pending. [DR L.V.S REVIEW REQUIRED] applies to every scene’s Tongan adaptation, kinship, register, clothing, real-place staging and ceremony. This pack is a reviewable proposal, not an approved replacement for the vault. Game code remains unchanged. This revision is prepared on a separate documentation/content review branch; no merge or game publication is authorised.

## Story promise

A diaspora returnee has only the days around a family wedding before a return flight. They want to help, but letting other people answer is easier than risking a short sentence. Three ordinary errands make them useful. In the same conversations, a teenage cousin discovers someone who will wait for an answer. At the wedding the player contributes a short speech or a tauʻolunga assembled from practised pieces. At departure the cousin asks to say hello first next time. Neither character becomes fluent overnight.

The wedding is a shared family achievement. Errors make the player pause and try again; they never invalidate the marriage or make the family’s love conditional. The time limit is narrative context, not a new countdown system. There is no villain, rescue plot, relationship score or extra quest chain.

## Scope and pacing

Nine fixed areas, compact connected top-down routes, larger chibi conversations, choices and flags only. The approved exterior side-on car scene remains a distinct travel surface. Full mandatory airport + car onboarding is **9 minutes planned**, superseding the older 20–30 minute estimates under the later locked 5–10 minute note. All nine areas, including departure, fit inside the six-hour ceiling. Six hours is a maximum, not a requirement to pad dialogue.

| Area | Planned minutes per playthrough | Budget includes |
|---|---:|---|
| 1. Fuaʻamotu Airport — arrival | 4 | Reading, small-area movement, selections and local repairs; one selected path only. |
| 2. Road to Popua — external car view | 5 | Reading, small-area movement, selections and local repairs; one selected path only. |
| 3. Popua house — arrival and dinner | 40 | Reading, small-area movement, selections and local repairs; one selected path only. |
| 4. Talamahu Market — supplies | 45 | Reading, small-area movement, selections and local repairs; one selected path only. |
| 5. St Paul’s church grounds — coordination | 35 | Reading, small-area movement, selections and local repairs; one selected path only. |
| 6. Teufaiva sports ground — youth | 35 | Reading, small-area movement, selections and local repairs; one selected path only. |
| 7. Popua house — wedding eve | 35 | Reading, small-area movement, selections and local repairs; one selected path only. |
| 8. Haʻatafu — wedding celebration | 35 | Reading, small-area movement, selections and local repairs; one selected path only. |
| 9. Fuaʻamotu Airport — departure | 20 | Reading, small-area movement, selections and local repairs; one selected path only. |

**Total planned: 254 minutes (4 h 14 m).** Reserve 60 minutes for slower reading and retries = **314 minutes (5 h 14 m)**; 46 minutes remain below 360. These are authoring budgets, not playtest results. The authored exchange estimates total about 187 minutes per path before walking, pauses and replay; the gap is headroom, never forced waiting. Onboarding must remain 5–10 minutes in actual testing, with no reserve added there. Optional replays are outside the straight-through core, do not add vocabulary and are never necessary to finish. Basic and Beginner+ share the same story; scaffolding can increase reading time.

Each interaction stays a few exchanges. Autosave is intended after exchanges outside atomic onboarding; current save implementation is a stub. No claim that the current prototype meets these timings or learning outcomes.

## Cast, voices and continuity

| Role | Voice and motive | Change / boundary |
|---|---|---|
| Sione | Brief, practical; wants to be useful before he feels fluent. Can ask for help, confess nerves or accept a model. | Stops hiding uncertainty behind a nod; gives a short contribution in his own voice. Formal order stays with DR L.V.S. |
| Mele | Attentive to what gestures mean; asks before copying. The player can be equally confident or nervous as Sione. | Moves from observing to understanding and participating. No invented gendered English grammar. Tongan differences need expert adaptation. |
| Driver / greeter | Unhurried, lightly matter-of-fact. One family friend, one sprite. | Lets silence become a successful response instead of answering for player. |
| Grandmother / wedding elder | Economical, warm, direct. Makes room physically before asking anything. | Sees returnee take a part; receives them back into the group. Grandmother casting is proposed; no invented fahu rank. |
| Coordinating relative | Practical, mildly busy, learns to stand back. Relationship title remains unassigned pending review. | Initially gives the errand, later supports rather than speaks for player. |
| Cousin | Short answers early; dry humour at sports; specific requests later. No diagnostic label or bad-child framing. | Quiet dinner → leads play → may offer practice → says one familiar line → asks to greet first next time. All optional conversations can be skipped without blocking plot. |
| Shopkeeper | Clear, busy, friendly. Treats correction as ordinary business. | No accent jokes, cheating vendor trope or bargaining system. |
| Minister | Welcoming public register; gives concise practical information. | No new sermon or theological lesson. Specific honorific and schedule need approval. |

Seven unique speaking roles including player when driver and greeter are combined and family/wedding elder are combined. Silent couple, sibling pair and guests reuse background sprites; they introduce no speaking roles.

## Emotional continuity and choice policy

The player always speaks through choices. Readiness, food preferences, asking for repetition, whether to listen or try together and the kind of cousin support have visible local consequences. Correct language choices complete practical tasks. A polite decline is never marked incorrect. Optional cousin conversations at C03 and F03 have a direct skip; the skip still passes through every required speech/dance practice fragment. Cousin attendance at the wedding and departure is normal family presence, not a reward that depends on `cousin_invited`.

Flags record progress and presence only; they do not secretly calculate affection. Narrative reconvergence keeps scope bounded. English “Continue” on environmental/branch response nodes is an editorial advance control, not a spoken Tongan sentence or an additional learning item.

## Scene inventory

Scenes with S/M suffix are alternatives, never both required. Narrative order at the venue is H01 → H03S/M → H02. The stable IDs are references, not an alphabetical execution order.

| Scene | Area | Path | Local exchange estimate | Purpose |
|---|---:|---|---:|---|
| A01 — A name at the gate | 1 | shared | 2 min | Choose identity; establish a returnee who wants to participate. |
| A02 — One small journey | 1 | shared | 2 min | Offer a safe first request and introduce the return-flight limit without a countdown. |
| B01 — Looking together | 2 | shared | 3 min | Teach pointing through visible roadside referents. |
| B02 — The last turn | 2 | shared | 2 min | Retrieve a landmark before arrival; close atomic onboarding. |
| C01 — A seat is waiting | 3 | shared | 7 min | Reintroduce identity in the family setting and establish visual dress progression. |
| C02 — Passing the bowl | 3 | shared | 8 min | Teach food offers, requests and family roles through a real meal. |
| C03 — Beside the quiet cousin | 3 | shared | 6 min | Give the cousin privacy and agency without a relationship meter. |
| C04 — Needed for something real | 3 | shared | 8 min | Make the coordination request and contribution clear early. |
| D01 — The right stall | 4 | shared | 7 min | Retrieve pointing and greeting before a transaction. |
| D02 — Enough for the table | 4 | shared | 8 min | Distinguish quantities from sufficiency; use simple flags instead of inventory. |
| D03 — Ask in your own voice | 4 | shared | 7 min | Revision check without relative supplying the request; arrange payment in-world. |
| D04 — A little room beside you | 4 | shared | 5 min | Offer an optional cousin exchange that reconverges immediately. |
| D05M — A part in the celebration | 4 | mele | 5 min | Introduce a role-specific rehearsal fragment; linguistic emphasis differs without extra quests. |
| D05S — Carrying the thanks | 4 | sione | 5 min | Introduce a role-specific rehearsal fragment; linguistic emphasis differs without extra quests. |
| E01 — A different kind of hello | 5 | shared | 7 min | Introduce respectful public address in one church location. |
| E02 — Say the time back | 5 | shared | 8 min | Model and retrieve a short time confirmation. |
| E03 — Whose words are these? | 5 | shared | 7 min | Bridge everyday thanks to ceremonial practice without claiming formal order. |
| E04M — Meaning before memory | 5 | mele | 5 min | Introduce a role-specific rehearsal fragment; linguistic emphasis differs without extra quests. |
| E04S — Order matters | 5 | sione | 5 min | Introduce a role-specific rehearsal fragment; linguistic emphasis differs without extra quests. |
| F01 — An invitation without an errand | 6 | shared | 7 min | Let everyday motion language bring the cousin into their own setting. |
| F02 — Try again is allowed | 6 | shared | 7 min | Use repeated invitation and response as fluency practice. |
| F03 — Not a project to fix | 6 | shared | 8 min | Give cousin a specific fear and a modest self-directed next step. |
| F04M — Someone to practise beside | 6 | mele | 5 min | Introduce a role-specific rehearsal fragment; linguistic emphasis differs without extra quests. |
| F04S — A small audience | 6 | sione | 5 min | Introduce a role-specific rehearsal fragment; linguistic emphasis differs without extra quests. |
| G01 — Tomorrow has a shape | 7 | shared | 6 min | Confirm time and supplies; change to rehearsal state in reused house. |
| G02 — A voice at the same table | 7 | shared | 5 min | Give cousin a small practical rehearsal role with an opt-out. |
| G03 — Before the room fills | 7 | shared | 5 min | Rehearse general greeting, thanks and love before path-specific sequence. |
| G04M — The whole contribution, slowly | 7 | mele | 10 min | Retrieve every previously introduced approval slot, then opening thanks. |
| G04S — The whole contribution, slowly | 7 | sione | 10 min | Retrieve every previously introduced approval slot, then opening thanks. |
| H01 — The work becomes a wedding | 8 | shared | 6 min | Pay off preparation with a family event already underway. |
| H02 — After the contribution | 8 | shared | 5 min | Recognise participation without a language mastery claim. |
| H03M — The first movement | 8 | mele | 12 min | Apply practised movement/meaning pairs. |
| H03S — The microphone | 8 | sione | 12 min | Apply practised order. |
| I01 — The same forecourt | 9 | shared | 5 min | Introduce farewell meanings in context, never first in a check. |
| I02 — One line next time | 9 | shared | 5 min | Complete the cousin arc without promising fluency or adding messaging systems. |
| I03 — A way to return | 9 | shared | 4 min | Final farewell retrieval and boarding. |

## Detailed scenes

### A01 — A name at the gate

**Setting / cast:** Fuaʻamotu Airport — arrival; driver, player. Airport forecourt; player grey silhouette until identity choice; driver carries a handwritten family pickup note.

**Objective:** Find the family pickup and state your own name.

**Conflict:** The first question arrives before the player feels ready.

**Interaction:** Select Sione or Mele once; later repeat the selected self-introduction. The other name is never treated as an incorrect identity.

**Feedback / outcome:** Driver recognises player; silhouette resolves; driver can take a slower pace.

**Character beat:** Player knows the family through messages but hesitates in person.

**Learning:** `greeting_identity`. Exact first exposures, successful uses and retrieval IDs appear in Learning Matrix and its CSVs.

**Transition:** Driver points to the car; A02.

**Review:** [DR L.V.S REVIEW REQUIRED]. English is a narrative intent, not authority for literal Tongan translation.

### A02 — One small journey

**Setting / cast:** Fuaʻamotu Airport — arrival; driver, player. Driver indicates car; suitcase changes position on success. No separate greeter sprite.

**Objective:** Ask to leave or hear the invitation again.

**Conflict:** A short return visit makes participation feel urgent without a timer.

**Interaction:** Request a repeat; choose to see family or help; both intentions are valid.

**Feedback / outcome:** Driver waits, then loads bag.

**Character beat:** Player chooses to ask rather than pretend to understand.

**Learning:** `greeting_identity`. Exact first exposures, successful uses and retrieval IDs appear in Learning Matrix and its CSVs.

**Transition:** External travel cut; B01.

**Review:** [DR L.V.S REVIEW REQUIRED]. English is a narrative intent, not authority for literal Tongan translation.

### B01 — Looking together

**Setting / cast:** Road to Popua — external car view; driver, player. External car only. Coconut tree, church, village and sea pass in separate readable layers. Hold a landmark during each choice.

**Objective:** Name what the driver is pointing at.

**Conflict:** Unfamiliar words arrive faster than the landscape can be read.

**Interaction:** Hold each visible landmark until selection. First exposure has no translation, even on Basic.

**Feedback / outcome:** Driver points to selected referent; repairs re-point to church rather than scoring.

**Character beat:** Driver waits for the player’s response rather than filling every silence.

**Learning:** `pointing`. Exact first exposures, successful uses and retrieval IDs appear in Learning Matrix and its CSVs.

**Transition:** A repeated landmark appears; B02.

**Review:** [DR L.V.S REVIEW REQUIRED]. English is a narrative intent, not authority for literal Tongan translation.

### B02 — The last turn

**Setting / cast:** Road to Popua — external car view; driver, player. Repeat church silhouette already seen; background stops at house gate after retrieval.

**Objective:** Identify the already-seen church.

**Conflict:** Driver stops supplying the noun.

**Interaction:** Choose church rather than sea; a wrong response re-shows the church and offers its practised name.

**Feedback / outcome:** Car reaches the house; onboarding completes.

**Character beat:** Player identifies something without the driver naming it first.

**Learning:** `pointing`. Exact first exposures, successful uses and retrieval IDs appear in Learning Matrix and its CSVs.

**Transition:** Cut to Popua veranda; C01.

**Review:** [DR L.V.S REVIEW REQUIRED]. English is a narrative intent, not authority for literal Tongan translation.

### C01 — A seat is waiting

**Setting / cast:** Popua house — arrival and dinner; elder, relative, player. Popua veranda and sitting area. Elder clears a place; player changes to repository mid-game outfit between arrival and dinner, without a dressing minigame.

**Objective:** Greet grandmother and accept a seat.

**Conflict:** Being recognised feels different from recognising family titles.

**Interaction:** Use name, grandmother address, thanks or a simple feeling. Grandmother is a proposed casting choice.

**Feedback / outcome:** A place is cleared; elder makes eye contact. Change clothing between arrival and meal.

**Character beat:** Elder recognises the returnee; the player need not prove belonging.

**Learning:** `family_food`. Exact first exposures, successful uses and retrieval IDs appear in Learning Matrix and its CSVs.

**Transition:** Sit at the same house table; C02.

**Review:** [DR L.V.S REVIEW REQUIRED]. English is a narrative intent, not authority for literal Tongan translation.

### C02 — Passing the bowl

**Setting / cast:** Popua house — arrival and dinner; cousin, elder, relative, player. Three food props: rice, fish, taro; water jug. Items named only when visible. Final names and dishes require approval.

**Objective:** Accept or decline food; request an actual dish.

**Conflict:** Offers, family introductions and several food names compete for attention.

**Interaction:** Rice, fish, taro and water are visibly distinct. Accept/decline and fish/taro choices have different handovers. Brother/sister refers to silent background siblings, never cousin.

**Feedback / outcome:** Requested dish is passed; refusal is accepted. No shame or hunger penalty.

**Character beat:** Player can decline food politely; hospitality is never a trap.

**Learning:** `family_food`. Exact first exposures, successful uses and retrieval IDs appear in Learning Matrix and its CSVs.

**Transition:** Optional quiet conversation C03, then coordination request C04.

**Review:** [DR L.V.S REVIEW REQUIRED]. English is a narrative intent, not authority for literal Tongan translation.

### C03 — Beside the quiet cousin

**Setting / cast:** Popua house — arrival and dinner; cousin, relative, player. Cousin sits at the table edge, phone face down only if they choose to talk; no phone confiscation.

**Objective:** Give the cousin room to answer or leave conversation for later.

**Conflict:** Another adult has volunteered the cousin as a guide.

**Interaction:** Invite without assigning a duty; admit learning; offer listening or trying together. Third choice skips this conversation.

**Feedback / outcome:** Cousin relaxes or holds a pause. No affection score, reward gate or forced disclosure.

**Character beat:** Quietness is hesitation, not a moral failure. Player admits uncertainty.

**Learning:** `family_food`. Exact first exposures, successful uses and retrieval IDs appear in Learning Matrix and its CSVs.

**Transition:** All routes reach C04.

**Review:** [DR L.V.S REVIEW REQUIRED]. English is a narrative intent, not authority for literal Tongan translation.

### C04 — Needed for something real

**Setting / cast:** Popua house — arrival and dinner; elder, relative, player. Relative brings a short supplies note; elder stays seated; no quest-log system.

**Objective:** Accept a bounded coordination job.

**Conflict:** Player wants to help but does not yet have all the language.

**Interaction:** Hear and repeat two bundles and three drinks; learn about minister check and contribution. Requests for help receive reassurance.

**Feedback / outcome:** Relative entrusts supplies note; will_help flag on either exit.

**Character beat:** Player accepts a bounded job before knowing everything. Wedding belongs to the wider family, not solely to player success.

**Learning:** `family_food`. Exact first exposures, successful uses and retrieval IDs appear in Learning Matrix and its CSVs.

**Transition:** Leave through the Popua gate and follow the compressed route/explicit long-distance travel link to the market entrance; D01. Local paths remain walkable, not a chain of dialogue-only cuts.

**Review:** [DR L.V.S REVIEW REQUIRED]. English is a narrative intent, not authority for literal Tongan translation.

### D01 — The right stall

**Setting / cast:** Talamahu Market — supplies; relative, shopkeeper, player. Talamahu produce stall and adjacent drinks; at most shopkeeper, relative and optional cousin.

**Objective:** Find the stall and make a request directly.

**Conflict:** Relative is present, but should not answer every question.

**Interaction:** Use pointing, greeting and food request; wrong referent gently redirected.

**Feedback / outcome:** Shopkeeper turns toward player and lays out bundles.

**Character beat:** Player begins addressing people directly instead of asking relative to speak.

**Learning:** `requests_quantity`. Exact first exposures, successful uses and retrieval IDs appear in Learning Matrix and its CSVs.

**Transition:** Same stall; D02.

**Review:** [DR L.V.S REVIEW REQUIRED]. English is a narrative intent, not authority for literal Tongan translation.

### D02 — Enough for the table

**Setting / cast:** Talamahu Market — supplies; relative, shopkeeper, player. Shopkeeper displays two bundles and three drinks. No money arithmetic or fabricated price.

**Objective:** Get the intended quantity and say whether it is enough.

**Conflict:** Shopkeeper repeats two drinks after three were requested: a repair opportunity, not malice.

**Interaction:** Ask for two bundles and three drinks; politely correct the echoed quantity. Enough is taught separately from a number.

**Feedback / outcome:** Three drinks become visible. No price puzzle or fabricated currency teaching.

**Character beat:** Player notices a mismatch and asks for correction politely.

**Learning:** `requests_quantity`. Exact first exposures, successful uses and retrieval IDs appear in Learning Matrix and its CSVs.

**Transition:** Relative steps back; D03.

**Review:** [DR L.V.S REVIEW REQUIRED]. English is a narrative intent, not authority for literal Tongan translation.

### D03 — Ask in your own voice

**Setting / cast:** Talamahu Market — supplies; relative, shopkeeper, player. Relative stands back. Shopkeeper hands over a single supplies prop only after the check. Payment is a handover animation, not an economy.

**Objective:** Complete the request without relative answering.

**Conflict:** Similar numbers are easy to swap.

**Interaction:** Reconstruct the already-used request; repair uses only the same items and numbers.

**Feedback / outcome:** Supplies prop handed over; relative pays; got_supplies on either goodbye.

**Character beat:** Player can repair a small misunderstanding and still complete the errand.

**Learning:** `requests_quantity`. Exact first exposures, successful uses and retrieval IDs appear in Learning Matrix and its CSVs.

**Transition:** Short stall-edge reflection; D04.

**Review:** [DR L.V.S REVIEW REQUIRED]. English is a narrative intent, not authority for literal Tongan translation.

### D04 — A little room beside you

**Setting / cast:** Talamahu Market — supplies; relative, player. At stall edge; cousin may come alongside but no escort simulation.

**Objective:** Notice the successful errand and carry its language toward the contribution.

**Conflict:** Success is small enough for player to dismiss.

**Interaction:** Repeat the quantities, thank relative, agree to practise slowly.

**Feedback / outcome:** Relative carries one bundle; player carries the other, as one visual flag state.

**Character beat:** Cousin’s usefulness is acknowledged without making them responsible for player progress.

**Learning:** `requests_quantity`. Exact first exposures, successful uses and retrieval IDs appear in Learning Matrix and its CSVs.

**Transition:** Path practice D05S or D05M, then church.

**Review:** [DR L.V.S REVIEW REQUIRED]. English is a narrative intent, not authority for literal Tongan translation.

### D05M — A part in the celebration

**Setting / cast:** Talamahu Market — supplies; relative, player. Reuse current area edge; no sacred or ceremonial performance at church or sports ground. Relative or cousin speaks privately.

**Objective:** Try two elder-supplied movement/meaning pairs.

**Conflict:** Player can imitate a shape without understanding it.

**Interaction:** M1 and M2 must be supplied by DR L.V.S. Show approved visual model, then choose the same pair.

**Feedback / outcome:** Relative acknowledges understanding; no unapproved gesture animation.

**Character beat:** Mele asks what a movement means instead of copying its surface.

**Learning:** `dance`. Exact first exposures, successful uses and retrieval IDs appear in Learning Matrix and its CSVs.

**Transition:** E01 after both models.

**Review:** [DR L.V.S REVIEW REQUIRED]. Expert-dependent slot text and ordering must be supplied before production.

### D05S — Carrying the thanks

**Setting / cast:** Talamahu Market — supplies; relative, player. Reuse current area edge; no sacred or ceremonial performance at church or sports ground. Relative or cousin speaks privately.

**Objective:** Try the first two elder-supplied speech fragments.

**Conflict:** Player wants the thanks to be respectful but fears a long speech.

**Interaction:** Short conversation, then S1 and S2 slot models. Repeat on request. Slots are not yet a culturally valid order.

**Feedback / outcome:** Relative listens without interrupting.

**Character beat:** Sione works on speaking without rushing.

**Learning:** `speech`. Exact first exposures, successful uses and retrieval IDs appear in Learning Matrix and its CSVs.

**Transition:** E01 after the two successful models.

**Review:** [DR L.V.S REVIEW REQUIRED]. Expert-dependent slot text and ordering must be supplied before production.

### E01 — A different kind of hello

**Setting / cast:** St Paul’s church grounds — coordination; minister, relative, player. St Paul’s grounds, not a new grandma-visit branch. Minister at doorway; relative waits beside player.

**Objective:** Use a polite address and ask about time.

**Conflict:** A familiar greeting now belongs in a more formal context.

**Interaction:** Minister or a respectful greeting are both legitimate; food question redirects to time.

**Feedback / outcome:** Minister pauses work to answer player.

**Character beat:** Player carries the conversation into a formal context.

**Learning:** `polite_time`. Exact first exposures, successful uses and retrieval IDs appear in Learning Matrix and its CSVs.

**Transition:** Clock card appears; E02.

**Review:** [DR L.V.S REVIEW REQUIRED]. English is a narrative intent, not authority for literal Tongan translation.

### E02 — Say the time back

**Setting / cast:** St Paul’s church grounds — coordination; minister, relative, player. Minister indicates a single clock card showing 10:00; 10 is a proposed scheduling detail, not repository canon.

**Objective:** Confirm the time accurately and thank the minister.

**Conflict:** Nodding could hide an incorrect understanding.

**Interaction:** Ten is modelled, repeated and recalled. Two is a previously learned number, never a new distractor.

**Feedback / outcome:** Minister nods; relative repeats the agreed time. time_confirmed flag.

**Character beat:** Player checks information rather than nodding through uncertainty.

**Learning:** `polite_time`. Exact first exposures, successful uses and retrieval IDs appear in Learning Matrix and its CSVs.

**Transition:** Private reflection at grounds edge; E03.

**Review:** [DR L.V.S REVIEW REQUIRED]. English is a narrative intent, not authority for literal Tongan translation.

### E03 — Whose words are these?

**Setting / cast:** St Paul’s church grounds — coordination; relative, player. Quiet edge of same grounds; relative gives one short fragment at a time.

**Objective:** Say what you want your contribution to express.

**Conflict:** Player does not want to recite an adult’s feelings.

**Interaction:** Choose thanks or happiness at being with family. Both are validated; neither changes formal protocol.

**Feedback / outcome:** Relative agrees to practise a short personal contribution.

**Character beat:** Player asks for the contribution to sound like their own voice.

**Learning:** `ceremonial`. Exact first exposures, successful uses and retrieval IDs appear in Learning Matrix and its CSVs.

**Transition:** Path practice E04S/M.

**Review:** [DR L.V.S REVIEW REQUIRED]. English is a narrative intent, not authority for literal Tongan translation.

### E04M — Meaning before memory

**Setting / cast:** St Paul’s church grounds — coordination; relative, player. Reuse current area edge; no sacred or ceremonial performance at church or sports ground. Relative or cousin speaks privately.

**Objective:** Connect the third approved movement to its meaning.

**Conflict:** Memory of a shape can become detached from meaning.

**Interaction:** M3 model in a private teaching context; no impromptu performance in church grounds.

**Feedback / outcome:** Simple approved model and acknowledgment.

**Character beat:** Mele asks what a movement means instead of copying its surface.

**Learning:** `dance`. Exact first exposures, successful uses and retrieval IDs appear in Learning Matrix and its CSVs.

**Transition:** Sports ground F01.

**Review:** [DR L.V.S REVIEW REQUIRED]. Expert-dependent slot text and ordering must be supplied before production.

### E04S — Order matters

**Setting / cast:** St Paul’s church grounds — coordination; relative, player. Reuse current area edge; no sacred or ceremonial performance at church or sports ground. Relative or cousin speaks privately.

**Objective:** Try the next two approved acknowledgement fragments.

**Conflict:** Respect involves sequence as well as vocabulary.

**Interaction:** S3 and S4 introductions; no claim about which recipient comes first until approval.

**Feedback / outcome:** Relative models one fragment at a time.

**Character beat:** Sione works on speaking without rushing.

**Learning:** `speech`. Exact first exposures, successful uses and retrieval IDs appear in Learning Matrix and its CSVs.

**Transition:** Sports ground F01.

**Review:** [DR L.V.S REVIEW REQUIRED]. Expert-dependent slot text and ordering must be supplied before production.

### F01 — An invitation without an errand

**Setting / cast:** Teufaiva sports ground — youth; cousin, player. Teufaiva simplified pitch edge, one ball; no dexterity or sports scoring. Cousin is already present independent of optional earlier contact.

**Objective:** Accept an invitation and follow everyday motion language.

**Conflict:** Cousin expects another errand.

**Interaction:** Choose visiting or playing; point to ball; ask for a model before trying.

**Feedback / outcome:** Ball moves only after choice; cousin leads.

**Character beat:** Cousin leads here; player follows instead of recruiting them.

**Learning:** `motion`. Exact first exposures, successful uses and retrieval IDs appear in Learning Matrix and its CSVs.

**Transition:** One more pass F02.

**Review:** [DR L.V.S REVIEW REQUIRED]. English is a narrative intent, not authority for literal Tongan translation.

### F02 — Try again is allowed

**Setting / cast:** Teufaiva sports ground — youth; cousin, player. Ball rolls a small distance on selection; cousin retrieves it on repair. No timing inputs.

**Objective:** Respond to come/let’s play without a study screen.

**Conflict:** A first attempt goes astray.

**Interaction:** Try again, ask for a model, request rest or continue. A requested rest shortens the pass distance.

**Feedback / outcome:** Ball comes closer on tired branch; both reach a rest naturally.

**Character beat:** Player’s imperfect attempt gives cousin permission to be imperfect.

**Learning:** `motion`. Exact first exposures, successful uses and retrieval IDs appear in Learning Matrix and its CSVs.

**Transition:** Optional bench conversation F03.

**Review:** [DR L.V.S REVIEW REQUIRED]. English is a narrative intent, not authority for literal Tongan translation.

### F03 — Not a project to fix

**Setting / cast:** Teufaiva sports ground — youth; cousin, player. Same pitch bench; ball still. Cousin turns toward player; no forced confession.

**Objective:** Listen without turning cousin into a problem to solve.

**Conflict:** Cousin says people answer before they can speak.

**Interaction:** Wait, share uncertainty, or leave conversation for later. Invitation to rehearsal arises only on conversation route.

**Feedback / outcome:** Cousin offers a small role. Skipping does not remove them from later family events.

**Character beat:** Cousin fears being corrected publicly; player offers company, not a lecture about identity.

**Learning:** `motion`. Exact first exposures, successful uses and retrieval IDs appear in Learning Matrix and its CSVs.

**Transition:** Always F04S/M; never bypass required language practice.

**Review:** [DR L.V.S REVIEW REQUIRED]. English is a narrative intent, not authority for literal Tongan translation.

### F04M — Someone to practise beside

**Setting / cast:** Teufaiva sports ground — youth; cousin, player. Reuse current area edge; no sacred or ceremonial performance at church or sports ground. Relative or cousin speaks privately.

**Objective:** Practise final movement/meaning pair with someone nearby.

**Conflict:** Being watched can make practice feel exposed.

**Interaction:** M4 model; cousin can watch, no demand to perform for sports crowd.

**Feedback / outcome:** Cousin gives player space.

**Character beat:** Mele asks what a movement means instead of copying its surface.

**Learning:** `dance`. Exact first exposures, successful uses and retrieval IDs appear in Learning Matrix and its CSVs.

**Transition:** Wedding eve G01.

**Review:** [DR L.V.S REVIEW REQUIRED]. Expert-dependent slot text and ordering must be supplied before production.

### F04S — A small audience

**Setting / cast:** Teufaiva sports ground — youth; cousin, player. Reuse current area edge; no sacred or ceremonial performance at church or sports ground. Relative or cousin speaks privately.

**Objective:** Practise final speech fragments with a small audience.

**Conflict:** Public speaking feels like a leap.

**Interaction:** S5 and S6 models; cousin offers to listen. No new formal order introduced.

**Feedback / outcome:** Cousin waits until response finishes.

**Character beat:** Sione works on speaking without rushing.

**Learning:** `speech`. Exact first exposures, successful uses and retrieval IDs appear in Learning Matrix and its CSVs.

**Transition:** Wedding eve G01.

**Review:** [DR L.V.S REVIEW REQUIRED]. Expert-dependent slot text and ordering must be supplied before production.

### G01 — Tomorrow has a shape

**Setting / cast:** Popua house — wedding eve; elder, relative, player. Popua evening light; bundles visible, seats arranged. Outfit remains mid-game until wedding cut.

**Objective:** Recall time and quantities while preparation becomes visible.

**Conflict:** Several earlier errands now need to connect.

**Interaction:** Confirm ten; retrieve request for two bundles and three drinks.

**Feedback / outcome:** Prepared supplies and arranged seats replace earlier clutter.

**Character beat:** Player sees earlier choices contribute to a functioning family event.

**Learning:** `ceremonial`. Exact first exposures, successful uses and retrieval IDs appear in Learning Matrix and its CSVs.

**Transition:** Cousin at doorway G02.

**Review:** [DR L.V.S REVIEW REQUIRED]. English is a narrative intent, not authority for literal Tongan translation.

### G02 — A voice at the same table

**Setting / cast:** Popua house — wedding eve; cousin, relative, player. Cousin at doorway, not mandatory stage joiner. Optional extra practice branches back to core.

**Objective:** Choose active support or a quiet listener.

**Conflict:** Cousin wants to help without being put on display.

**Interaction:** Ask cousin to stay or simply listen; both are voluntary contributions.

**Feedback / outcome:** Chair beside player or farther back. No eligibility flag gates climax.

**Character beat:** Cousin volunteers; the player does not announce their progress to the family.

**Learning:** `ceremonial`. Exact first exposures, successful uses and retrieval IDs appear in Learning Matrix and its CSVs.

**Transition:** General rehearsal G03.

**Review:** [DR L.V.S REVIEW REQUIRED]. English is a narrative intent, not authority for literal Tongan translation.

### G03 — Before the room fills

**Setting / cast:** Popua house — wedding eve; elder, relative, player. Elder, relative, cousin; minimal hand or face reactions. No abstract readiness score.

**Objective:** Use general greeting, thanks and love before role sequence.

**Conflict:** Anxiety may make a simple line disappear.

**Interaction:** Repeat modelled Hello everyone and I give thanks; ask again freely.

**Feedback / outcome:** Relative responds calmly; elder remains beside family.

**Character beat:** Player can ask for repetition while retaining dignity.

**Learning:** `ceremonial`. Exact first exposures, successful uses and retrieval IDs appear in Learning Matrix and its CSVs.

**Transition:** Path rehearsal G04S/M.

**Review:** [DR L.V.S REVIEW REQUIRED]. English is a narrative intent, not authority for literal Tongan translation.

### G04M — The whole contribution, slowly

**Setting / cast:** Popua house — wedding eve; elder, relative, player, player. Same family room; relative models on request.

**Objective:** Retrieve all four approved movement/meaning pairs.

**Conflict:** Knowing movements separately does not ensure a coherent sequence.

**Interaction:** M1–M4 in approved sequence; ask for model. General thanks closes rehearsal, not an invented dance convention.

**Feedback / outcome:** dance_rehearsed on productive exit.

**Character beat:** Player uses help without surrendering the contribution.

**Learning:** `dance`. Exact first exposures, successful uses and retrieval IDs appear in Learning Matrix and its CSVs.

**Transition:** Wedding morning H01.

**Review:** [DR L.V.S REVIEW REQUIRED]. Expert-dependent slot text and ordering must be supplied before production.

### G04S — The whole contribution, slowly

**Setting / cast:** Popua house — wedding eve; elder, relative, player, player. Same family room; relative models on request.

**Objective:** Retrieve the entire approved speech plan.

**Conflict:** Fragments must now connect.

**Interaction:** Use S1–S6 in approved order; request a model at any point; final opening-thanks retrieval marks rehearsed.

**Feedback / outcome:** No audience or penalty; speech_rehearsed on productive exit.

**Character beat:** Player uses help without surrendering the contribution.

**Learning:** `speech`. Exact first exposures, successful uses and retrieval IDs appear in Learning Matrix and its CSVs.

**Transition:** Wedding morning H01.

**Review:** [DR L.V.S REVIEW REQUIRED]. Expert-dependent slot text and ordering must be supplied before production.

### H01 — The work becomes a wedding

**Setting / cast:** Haʻatafu — wedding celebration; cousin, elder, relative, player. Haʻatafu coastal canopy. Supplies visible; family seated. Wedding outfits follow vault; wedding couple are silent background figures, not new speaking roles.

**Objective:** Arrive and take your place in the celebration.

**Conflict:** Player is tempted to treat the contribution as an exam.

**Interaction:** Ask for water using known request; greet; accept relative nearby.

**Feedback / outcome:** Earlier supplies appear on tables; family already celebrating.

**Character beat:** The returnee is a participant among many; no claim that a language error invalidates the marriage.

**Learning:** `ceremonial`. Exact first exposures, successful uses and retrieval IDs appear in Learning Matrix and its CSVs.

**Transition:** H03S or H03M begins; H02 occurs only after success.

**Review:** [DR L.V.S REVIEW REQUIRED]. English is a narrative intent, not authority for literal Tongan translation.

### H02 — After the contribution

**Setting / cast:** Haʻatafu — wedding celebration; cousin, elder, relative, player. Elder nods; relative makes room beside family; cousin meets player’s eye. Return here after either successful climax only.

**Objective:** Receive recognition and rejoin family.

**Conflict:** Player might miss cousin’s quieter participation.

**Interaction:** Thank elder, accept food, acknowledge cousin’s single line without exaggerating.

**Feedback / outcome:** Place opened beside family; cousin speaks without an adult prompting.

**Character beat:** Player receives warmth; cousin offers a sentence unprompted.

**Learning:** `ceremonial`. Exact first exposures, successful uses and retrieval IDs appear in Learning Matrix and its CSVs.

**Transition:** Departure cut I01.

**Review:** [DR L.V.S REVIEW REQUIRED]. English is a narrative intent, not authority for literal Tongan translation.

### H03M — The first movement

**Setting / cast:** Haʻatafu — wedding celebration; elder, relative, player, guests, player. Four preplaced guest sprites; provisional threshold three.

**Objective:** Select next approved movement and matching reason.

**Conflict:** Sequence and meaning must stay connected.

**Interaction:** Four binary pair choices; successful pair adds a guest. Provisional minimum three of four; below threshold restarts dance only.

**Feedback / outcome:** Preplaced guests join; a miss adds none. No money throwing, timers or dance scoring overlay.

**Character beat:** Player can recover in the same room.

**Learning:** `dance`. Exact first exposures, successful uses and retrieval IDs appear in Learning Matrix and its CSVs.

**Transition:** Success H02; failure back to H03M start.

**Review:** [DR L.V.S REVIEW REQUIRED]. Expert-dependent slot text and ordering must be supplied before production.

### H03S — The microphone

**Setting / cast:** Haʻatafu — wedding celebration; elder, relative, player, guests, player. Microphone and elder reactions.

**Objective:** Deliver short approved speech sequence.

**Conflict:** Mild public pressure makes order harder to retrieve.

**Interaction:** Six binary slots. Correct nods and advances. Wrong causes confused pause and retries same slot; third error restarts only speech.

**Feedback / outcome:** Relative takes microphone briefly on third error, then hands it back. No area restart or ceremony failure.

**Character beat:** Player can recover in the same room.

**Learning:** `speech`. Exact first exposures, successful uses and retrieval IDs appear in Learning Matrix and its CSVs.

**Transition:** Success H02; failure back to H03S start.

**Review:** [DR L.V.S REVIEW REQUIRED]. Expert-dependent slot text and ordering must be supplied before production.

### I01 — The same forecourt

**Setting / cast:** Fuaʻamotu Airport — departure; driver, elder, relative, player. Reuse airport exterior. Player end-game outfit; cousin casual. Driver indicates departure direction.

**Objective:** Use farewell in the actual leaving/staying relationship.

**Conflict:** Leaving gives familiar words new weight.

**Interaction:** Model both leave-taking directions; ask for a model; retrieve requests, family thanks and love.

**Feedback / outcome:** Driver waits; family stays on forecourt.

**Character beat:** Departure remains bittersweet; growth is a small capacity to continue.

**Learning:** `farewell`. Exact first exposures, successful uses and retrieval IDs appear in Learning Matrix and its CSVs.

**Transition:** Cousin steps forward I02.

**Review:** [DR L.V.S REVIEW REQUIRED]. English is a narrative intent, not authority for literal Tongan translation.

### I02 — One line next time

**Setting / cast:** Fuaʻamotu Airport — departure; cousin, player. Cousin steps forward; phone remains a prop, no account or actual messaging integration.

**Objective:** Let cousin choose a next step.

**Conflict:** A warm goodbye need not promise a transformed life.

**Interaction:** Agree to message in story; wait while cousin tries greeting first. No actual messaging integration.

**Feedback / outcome:** Cousin meets player’s eye and claims the first hello next time.

**Character beat:** Cousin asks to continue the relationship and volunteers one greeting next time.

**Learning:** `farewell`. Exact first exposures, successful uses and retrieval IDs appear in Learning Matrix and its CSVs.

**Transition:** Final boarding I03.

**Review:** [DR L.V.S REVIEW REQUIRED]. English is a narrative intent, not authority for literal Tongan translation.

### I03 — A way to return

**Setting / cast:** Fuaʻamotu Airport — departure; driver, elder, relative, player. Driver waits by transport exit; elder and cousin remain on forecourt. End card after response, no proficiency badge.

**Objective:** Choose farewell addressed to those remaining.

**Conflict:** Similar English glosses hide different Tongan addressees.

**Interaction:** Use approved leave-taking formula, promise return or thanks. No new language inside final check.

**Feedback / outcome:** Transport exit opens; family waves; end card.

**Character beat:** Player leaves with a relationship and a usable sentence, not a completed identity.

**Learning:** `farewell`. Exact first exposures, successful uses and retrieval IDs appear in Learning Matrix and its CSVs.

**Transition:** End; second path remains optional linguistic replay.

**Review:** [DR L.V.S REVIEW REQUIRED]. English is a narrative intent, not authority for literal Tongan translation.

## Climax design boundary

S1–S6 are **sequence positions**, not approved recipients or order of thanks. The repository’s older six-line English speech is an intent bank only. DR L.V.S must map approved acknowledgement fragments into these positions; their mid-game introductions, rehearsal and climax must change together. If authentic order needs a different number of positions, request a content decision and rebudget; do not silently treat six as cultural truth.

M1–M4 are **sequence positions**, not invented dance steps. No authentic movement, meaning, terminology or order is asserted. Each binary answer combines movement and reason, so the frozen choice schema stays intact. DR L.V.S supplies the four approved pairs, matching visual models and plausible already-taught distractors. Four stages with minimum three joiners is a clearly labelled authoring proposal, not a locked repository number or cultural rule. Existing joiner mechanic is preserved.

The optional third path mentioned in vault/15 is not enabled: it is optional and requires a specific family role, which the repository does not establish. This pack delivers Sione’s and Mele’s required paths without adding another route.


## Approved exploration refresh — current repository source

The 7 November visual approval is part of the source, not a new proposal in this pack. Exploration uses top-down 2D orthographic maps, visible roofs/front doors and four-direction chibi movement. Conversations use larger expressive characters/portraits and cream/terracotta panels. The car ride remains exterior side-on. Sky/horizon belong to conversation/travel plates, never overhead ground maps. Match `assets/style-reference.md`, including distinct character identities and costume progression; concept screenshots are not production collision maps.

| Existing area | Walkable narrative staging | Exit and optional language focus |
|---|---|---|
| 1 Airport | Terminal forecourt → driver/pickup position → car. Identity resolves before walking onward. | Car interaction enters mandatory side-on road sequence. Optional directional sign after “This way” has been heard. Keep whole onboarding ≤10 minutes. |
| 2 Road | Mandatory external vehicle sequence, not an overhead driving map. | Stop at Popua gate; no driving controls, interior camera or detour. |
| 3 Popua dinner | Open gate → veranda/elder → readable room/table entrance. Cousin sits within the same small social space. | Leave house and follow visible gate/path; nearby links are walked, long journey compressed by explicit travel. Inspect a coconut tree only after its car-ride model. |
| 4 Market | Enter readable aisle → produce stall → drinks → shared exit; all within existing market footprint. | Compressed town route points toward church. Optional produce display repeats two/three/enough; no extra shopping objective. |
| 5 Church | Gate/path → minister at front entrance → grounds-edge private practice. | Clear exit toward sports area using a compressed route or explicit transition; never imply exact real distance. Optional church sign repeats pointing. |
| 6 Sports | Pitch-edge entrance → cousin/ball → quiet bench within same area. | Walk out by visible path; return journey to Popua uses existing area link. Optional stationary ball repeats look/ball/come, no minigame. |
| 7 Wedding eve | Reused Popua gate/veranda/table and nearer/farther rehearsal chair, evening lighting. | Long-distance travel link to Haʻatafu, not a forced cross-island walk. Optional table inspection recalls time/supplies. |
| 8 Wedding | Arrival path → family tables → performance space → family seat. | Local success opens social return, then explicit departure travel. Optional coast view reuses sea pointing after the contribution only. |
| 9 Departure | Car drop-off → family farewell cluster → clear terminal entrance. | Boarding is the final required retrieval; no obligatory object hunt. Airport art reused with departure outfit and presence. |

Route footprints belong to the nine areas; they are not a tenth chapter or an expanded open world. Optional inspection nodes are entered through the existing interact trigger, resolve without rewards or mandatory flags, then return to the same world position. They never overwrite the next required story entry or restart onboarding. Environmental objects do not add a gardener or any newly named speaking cast. See `content/area-bindings.json` and the optional encounter pack for exact entries, learned-language prerequisites and return behaviour. Planned route time is already inside the 254-minute budget; optional inspections are outside required completion time.
