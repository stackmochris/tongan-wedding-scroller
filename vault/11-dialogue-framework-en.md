# Dialogue Framework (English)

Full core-path dialogue skeleton in English. Structured by area. All lines are short, high-frequency, and tied to the story spine. Tongan translation happens later; this is the content framework only.

Path flag (Basic vs Beginner+) affects caption availability and scaffolding density, not the underlying lines.

---

## 1. Fuaʻamotu Airport — Exterior

**Greeter**  
- Hello. Who are you?  
- I am Sione. / I am Mele.  
- Welcome. Your driver is waiting.

**Driver**  
- Hello. Are you ready?  
- Yes. Let’s go.  
- This way.

---

## 2. Road — Fuaʻamotu to Popua (external view)

**Driver (pointing)**  
- Look. That is a coconut tree.  
- Look over there. That is a church.  
- This is the road to the village.  
- We are almost there.

---

## 3. Popua — Family House (Arrival & Dinner)

**Elder (grandmother or senior relative)**  
- Hello. You are Sione/Mele.  
- Come in. Sit down.  
- Are you hungry?  
- Eat.

**Parent / Aunt / Uncle**  
- This is your cousin.  
- The wedding is soon.  
- We need help.  
- Can you help us?

**Younger cousin (quiet)**  
- Hello.

**Player choices (examples)**  
- Hello. I am happy to be here.  
- Yes, I will help.  
- Thank you for the food.

---

## 4. Nukuʻalofa — Market / Shops

**Shopkeeper**  
- Hello. What do you need?  
- How many?  
- That is enough. / That is not enough.  
- Thank you.

**Player choices**  
- I need fabric.  
- I need food.  
- Two. / Three. / Enough.  
- Thank you.

**Relative (if present)**  
- Ask for the decorations.  
- We also need drinks.

---

## 5. Church — St Paul’s Anglican (Nukuʻalofa)  
*(or village church if grandma framing is chosen)*

**Minister / Elder**  
- Hello. Welcome.  
- The wedding is on [day].  
- What time?  
- Thank you for your help.  
- Pray for the family.

**Player choices**  
- Hello. We are preparing the wedding.  
- What time does it start?  
- Thank you.  
- We will be there.

---

## 6. Teufaiva Stadium (or community ground)

**Cousin / Youth**  
- Come. Let’s play.  
- Kick the ball.  
- You are good. / Try again.  
- Are you tired?

**Player choices**  
- Let’s go.  
- I will try.  
- This is fun.  
- Not yet.

**Older relative (optional check-in)**  
- Are you finished?  
- Come back for dinner.

---

## 7. Popua — Family House (Wedding Eve)

**Supportive relative**  
- Tomorrow you will speak.  
- Say this: Hello everyone.  
- Say this: Thank you for coming.  
- Say this: I love my family.  
- Good. You are ready.

**Player (rehearsal choices)**  
- Hello everyone.  
- Thank you.  
- I am happy.  
- God bless our family.

**Younger cousin (optional)**  
- You can do it.

---

## 8. Haʻatafu — Wedding Venue

**Elder (introducing)**  
- Now Sione/Mele will speak.

**Player speech (fixed short sequence)**  
1. Hello everyone.  
2. Thank you for coming.  
3. I am happy to be with my family.  
4. Thank you to the elders.  
5. God bless this wedding.  
6. Thank you.

**Environmental reactions (no correct/incorrect text)**  
- Elders nod.  
- Family smiles.  
- Cousin watches.

**Soft fail path**  
- Relative steps forward and finishes the line.  
- Ceremony continues.

---

## 9. Fuaʻamotu Airport — Departure

**Family**  
- Goodbye.  
- Travel safely.  
- Come back soon.  
- We love you.

**Younger cousin**  
- Goodbye. Message me.

**Player choices**  
- Goodbye.  
- I will come back.  
- Thank you.  
- I love you all.

---

## Coverage Notes

These lines introduce and recycle:
- Identity & greetings
- Pointing & existence
- Family roles & food
- Requests, quantities, thanks
- Polite address
- Everyday motion & activity
- Short ceremonial phrases required for the speech

All speech lines are assembled from phrases already used in earlier areas. No new structures appear at the wedding.

## Implementation Notes
- Each block above becomes one or more dialogue nodes.
- Choices set simple flags (`helped_with_supplies`, `rehearsed_speech`, `cousin_present`, etc.).
- Captions are optional and path-dependent; the English here is the source for those captions.
- Repeatable optional beats reuse the Market, Stadium, and House nodes with variation flags only.

Last updated: 2026-10-24
