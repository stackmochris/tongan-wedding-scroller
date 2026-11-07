# Tongan Wedding Scroller — Dialogue Master

English-first complete node script • source `0f4051ea05b14f0c6bcc06538f7c3ef7e5350e6c` • [DR L.V.S REVIEW REQUIRED]

Read this with Scene Bible. `content/dialogue-ENGLISH-REVIEW-ONLY.json` contains precisely these node lines and options in the frozen schema for an isolated English review. It is not Tongan and must never ship as Tongan. `content/dialogue-draft.json` contains translation tokens. No token is approved language.

The per-path duplication is deliberate: exact `next` links guarantee path continuity even though the current reader ignores `requires_path`. Shared exchanges are identical except name. Alternative response nodes show local consequences. Nodes described as environment are staging text, not NPC speech; their speaker field remains a renderer label until integration. “Continue” advances the review script only.

## Contribution intent bank — not an approved speech order

The six provisional English lines used in S1–S6 reproduce the candidate sequence in vault/11: **Hello, everyone. / Thank you for coming. / I am happy to be with my family. / Thank you to the elders. / God bless this wedding. / Thank you.** DR L.V.S may change, combine or reject them. Their candidate mapping to S1–S6 is provided for concrete English review only; neither mapping nor order is approved. DR L.V.S must replace or reorder it across all introductions, rehearsal and climax together. English “I give thanks” and “I love my family” are practised conversational material; not automatic permission to insert them into the formal speech.

For Mele, M1–M4 English wording is intentionally unsupplied because movements and their reasons are not in the source. Slots must receive the expert’s actual English explanation and Tongan wording. The narrative before/after dance is fully written; the authentic choreography and its selectable explanations are approval-blocked.

## Opener

#### `airport_greeting`

**driver:** Hello. Who are you?

1. **I am Sione.** → `sione_a01_02`. Flag: `path_sione`.
2. **I am Mele.** → `mele_a01_02`. Flag: `path_mele`.

## Sione path

### A01 — A name at the gate

#### `sione_a01_02`

**driver:** Welcome. I am your family’s driver today. How are you?

1. **Good, thank you.** → `sione_a01_02_response_0`.
2. **A little tired.** → `sione_a01_02_response_1`.

#### `sione_a01_03`

**driver:** A long flight. Your family is waiting.

1. **I am happy to be here.** → `sione_a01_04`.
2. **Thank you for coming.** → `sione_a01_04`.

#### `sione_a01_04`

**driver:** One more time, so I have your name right. Who are you?

1. **I am Sione.** → `sione_a02_01`. Flag: `identity_confirmed`.
2. **You are Sione.** → `sione_a01_04_repair`.

#### `sione_a01_04_repair`

**driver:** I am the driver. You are Sione.

1. **I am Sione.** → `sione_a02_01`. Flag: `identity_confirmed`.

#### `sione_a01_02_response_0`

**driver:** Good. Let’s get you home.

*Stage cue:* Driver lifts the bag.

1. **Continue.** → `sione_a01_03`.

#### `sione_a01_02_response_1`

**driver:** We can take it slowly.

*Stage cue:* Driver sets the bag in the car and waits.

1. **Continue.** → `sione_a01_03`.

### A02 — One small journey

#### `sione_a02_01`

**driver:** Your return flight is after the wedding. A short visit.

1. **Yes. I want to help.** → `sione_a02_02`.
2. **Yes. I want to see everyone.** → `sione_a02_02`.

#### `sione_a02_02`

**driver:** Are you ready? We can go now.

1. **Yes. Let’s go.** → `sione_a02_03`.
2. **Please, say it again.** → `sione_a02_02_repair`.

#### `sione_a02_02_repair`

**driver:** Are you ready? Let’s go.

1. **Yes. Let’s go.** → `sione_a02_03`.

#### `sione_a02_03`

**driver:** This way.

1. **Thank you.** → `sione_b01_01`.
2. **Let’s go.** → `sione_b01_01`.

### B01 — Looking together

#### `sione_b01_01`

**driver:** Look. That is a coconut tree.

1. **That is a coconut tree.** → `sione_b01_02`.
2. **Look.** → `sione_b01_02`.

#### `sione_b01_02`

**driver:** Look ahead. That is a church.

1. **That is a church.** → `sione_b01_03`.
2. **That is a coconut tree.** → `sione_b01_02_repair`.

#### `sione_b01_02_repair`

**driver:** Look ahead. The church is there.

1. **That is a church.** → `sione_b01_03`.

#### `sione_b01_03`

**driver:** That is the village. We are going this way.

1. **That is the village.** → `sione_b01_04`.
2. **This way.** → `sione_b01_04`.

#### `sione_b01_04`

**driver:** Look. There is the sea.

1. **That is the sea.** → `sione_b02_01`.
2. **Look at the sea.** → `sione_b02_01`.

### B02 — The last turn

#### `sione_b02_01`

**driver:** Look ahead. What is that?

1. **That is a church.** → `sione_b02_02`.
2. **That is the sea.** → `sione_b02_01_repair`.

#### `sione_b02_01_repair`

**driver:** Look again. That is a church.

1. **That is a church.** → `sione_b02_02`.

#### `sione_b02_02`

**driver:** Good. We are almost there. Your family’s house is ahead.

1. **That is the house.** → `sione_c01_01`. Flag: `onboarding_complete`.
2. **We are almost there.** → `sione_c01_01`. Flag: `onboarding_complete`.

### C01 — A seat is waiting

#### `sione_c01_01`

**elder:** Hello. You have arrived.

1. **Hello. I am Sione.** → `sione_c01_02`.
2. **Hello. Thank you.** → `sione_c01_02`.

#### `sione_c01_02`

**elder:** I am your grandmother. Come and sit with me.

1. **Hello, Grandmother.** → `sione_c01_03`.
2. **Thank you, Grandmother.** → `sione_c01_03`.

#### `sione_c01_03`

**elder:** Come in. Sit here.

1. **Thank you.** → `sione_c01_04`.
2. **Here?** → `sione_c01_04`.

#### `sione_c01_04`

**elder:** Yes, here. How are you?

1. **Good, thank you.** → `sione_c01_05`.
2. **A little tired.** → `sione_c01_05`.

#### `sione_c01_05`

**relative:** The wedding is soon. We are glad you came.

1. **I am glad to be here.** → `sione_c01_06`.
2. **Thank you for having me.** → `sione_c01_06`.

#### `sione_c01_06`

**elder:** This is your family. There is a place for you.

1. **Thank you.** → `sione_c02_01`.
2. **I am happy to be with my family.** → `sione_c02_01`.

### C02 — Passing the bowl

#### `sione_c02_01`

**relative:** This is your cousin.

1. **Hello. I am Sione.** → `sione_c02_02`.
2. **Hello. How are you?** → `sione_c02_02`.

#### `sione_c02_02`

**cousin:** Hello.

1. **Good to see you.** → `sione_c02_03`.
2. **Hello.** → `sione_c02_03`.

#### `sione_c02_03`

**elder:** Are you hungry? Here is rice.

1. **Yes, please. Thank you.** → `sione_c02_03_response_0`.
2. **No, thank you.** → `sione_c02_03_response_1`.

#### `sione_c02_04`

**relative:** Here is fish. Here is taro.

1. **I would like fish, please.** → `sione_c02_04_response_0`.
2. **I would like taro, please.** → `sione_c02_04_response_1`.

#### `sione_c02_05`

**relative:** Would you like water?

1. **Yes, please.** → `sione_c02_05_response_0`.
2. **No, thank you.** → `sione_c02_05_response_1`.

#### `sione_c02_06`

**elder:** There is more food. Would you like some?

1. **Yes, thank you.** → `sione_c02_06_response_0`.
2. **No, thank you.** → `sione_c02_06_response_1`.

#### `sione_c02_07`

**relative:** Those two are brother and sister. They are helping too.

1. **Your brother and sister?** → `sione_c03_01`.
2. **Brother and sister.** → `sione_c03_01`.

#### `sione_c02_03_response_0`

**elder:** Here you are.

*Stage cue:* Elder serves a small portion of rice.

1. **Continue.** → `sione_c02_04`.

#### `sione_c02_03_response_1`

**elder:** All right. It is here if you want it later.

*Stage cue:* Elder leaves the bowl within reach without serving player.

1. **Continue.** → `sione_c02_04`.

#### `sione_c02_04_response_0`

**relative:** Here is the fish.

*Stage cue:* Relative passes the fish dish.

1. **Continue.** → `sione_c02_05`.

#### `sione_c02_04_response_1`

**relative:** Here is the taro.

*Stage cue:* Relative passes the taro dish.

1. **Continue.** → `sione_c02_05`.

#### `sione_c02_05_response_0`

**relative:** Here is water.

*Stage cue:* Relative fills the player’s cup.

1. **Continue.** → `sione_c02_06`.

#### `sione_c02_05_response_1`

**relative:** All right.

*Stage cue:* Jug remains on table; cup stays empty.

1. **Continue.** → `sione_c02_06`.

#### `sione_c02_06_response_0`

**elder:** Of course.

*Stage cue:* Serve another small portion.

1. **Continue.** → `sione_c02_07`.

#### `sione_c02_06_response_1`

**elder:** Of course.

*Stage cue:* Leave the bowl; elder accepts the refusal warmly.

1. **Continue.** → `sione_c02_07`.

### C03 — Beside the quiet cousin

#### `sione_c03_01`

**relative:** Your cousin can show you around.

1. **Only if you want to.** → `sione_c03_02`.
2. **We can go together later.** → `sione_c03_02`.
3. **Let’s go. We can talk later.** → `sione_c04_01`.

#### `sione_c03_02`

**cousin:** Everyone asks me to show people around.

1. **We can just eat.** → `sione_c03_02_response_0`.
2. **You can say no.** → `sione_c03_02_response_1`.

#### `sione_c03_03`

**cousin:** You don’t know all the words either?

1. **No. I am learning.** → `sione_c03_04`.
2. **Some words. Not all.** → `sione_c03_04`.

#### `sione_c03_04`

**cousin:** I know what they mean. Sometimes I don’t want to say them.

1. **We can try together.** → `sione_c03_04_response_0`.
2. **I can listen.** → `sione_c03_04_response_1`.

#### `sione_c03_05`

**cousin:** Maybe later.

1. **All right.** → `sione_c04_01`.
2. **See you later.** → `sione_c04_01`.

#### `sione_c03_02_response_0`

**cousin:** Good. I am still hungry.

*Stage cue:* Cousin relaxes and takes another bite.

1. **Continue.** → `sione_c03_03`.

#### `sione_c03_02_response_1`

**cousin:** Then maybe later.

*Stage cue:* Player leaves a pause; cousin stays at table.

1. **Continue.** → `sione_c03_03`.

#### `sione_c03_04_response_0`

**cousin:** One line. Not in front of everyone.

*Stage cue:* Cousin turns a little toward player.

1. **Continue.** → `sione_c03_05`.

#### `sione_c03_04_response_1`

**cousin:** Thanks.

*Stage cue:* Player lets the silence stand.

1. **Continue.** → `sione_c03_05`.

### C04 — Needed for something real

#### `sione_c04_01`

**relative:** We need help with the wedding. Can you help?

1. **Yes. I will help.** → `sione_c04_02`.
2. **Yes. Please show me.** → `sione_c04_02`.

#### `sione_c04_02`

**relative:** We need food and drinks from the market. Two bundles of food. Three drinks.

1. **Two bundles. Three drinks.** → `sione_c04_03`.
2. **Please say it again.** → `sione_c04_02_repair`.

#### `sione_c04_02_repair`

**relative:** Two bundles of food. Three drinks.

1. **Two bundles. Three drinks.** → `sione_c04_03`.

#### `sione_c04_03`

**relative:** Then ask the minister about the time. We will go together.

1. **What time?** → `sione_c04_04`.
2. **We will go together.** → `sione_c04_04`.

#### `sione_c04_04`

**elder:** You will have a small part at the wedding, too. We will practise.

1. **I will try.** → `sione_c04_05`.
2. **Will you help me?** → `sione_c04_05`.

#### `sione_c04_05`

**relative:** Yes. First the market. One thing at a time.

1. **Thank you for your help.** → `sione_d01_01`. Flag: `will_help`.
2. **Let’s go.** → `sione_d01_01`. Flag: `will_help`.

### D01 — The right stall

#### `sione_d01_01`

**relative:** Look. That is the food stall.

1. **That is the food stall.** → `sione_d01_02`.
2. **That is the church.** → `sione_d01_01_repair`.

#### `sione_d01_01_repair`

**relative:** Look here. Food is on this table.

1. **That is the food stall.** → `sione_d01_02`.

#### `sione_d01_02`

**shopkeeper:** Hello. How are you?

1. **Good, thank you.** → `sione_d01_03`.
2. **Hello. I am Sione.** → `sione_d01_03`.

#### `sione_d01_03`

**shopkeeper:** What do you need?

1. **I need food, please.** → `sione_d01_04`.
2. **I need the sea.** → `sione_d01_03_repair`.

#### `sione_d01_03_repair`

**shopkeeper:** Food is here. What do you need?

1. **I need food, please.** → `sione_d01_04`.

#### `sione_d01_04`

**relative:** We need two bundles.

1. **Two bundles.** → `sione_d02_01`.
2. **Three bundles.** → `sione_d01_04_repair`.

#### `sione_d01_04_repair`

**relative:** Two bundles of food.

1. **Two bundles.** → `sione_d02_01`.

### D02 — Enough for the table

#### `sione_d02_01`

**shopkeeper:** How many bundles?

1. **Two, please.** → `sione_d02_02`.
2. **Three, please.** → `sione_d02_01_repair`.

#### `sione_d02_01_repair`

**shopkeeper:** The family asked for two bundles.

1. **Two, please.** → `sione_d02_02`.

#### `sione_d02_02`

**shopkeeper:** Two bundles. Is that enough?

1. **Yes. That is enough.** → `sione_d02_03`.
2. **Please show me again.** → `sione_d02_02_repair`.

#### `sione_d02_02_repair`

**shopkeeper:** Here are the two bundles.

1. **Yes. That is enough.** → `sione_d02_03`.

#### `sione_d02_03`

**relative:** We also need three drinks.

1. **I need three drinks, please.** → `sione_d02_04`.
2. **I need two drinks.** → `sione_d02_03_repair`.

#### `sione_d02_03_repair`

**relative:** Three drinks. One, two, three.

1. **I need three drinks, please.** → `sione_d02_04`.

#### `sione_d02_04`

**shopkeeper:** Two drinks?

1. **No. Three, please.** → `sione_d02_05`.
2. **Yes. Two.** → `sione_d02_04_repair`.

#### `sione_d02_04_repair`

**shopkeeper:** You asked for three. Let’s count again.

1. **No. Three, please.** → `sione_d02_05`.

#### `sione_d02_05`

**shopkeeper:** Three. Is that enough?

1. **Yes. Thank you.** → `sione_d03_01`.
2. **Three. Thank you.** → `sione_d03_01`.

### D03 — Ask in your own voice

#### `sione_d03_01`

**shopkeeper:** What do you need for the wedding?

1. **I need two bundles of food and three drinks.** → `sione_d03_02`.
2. **I need three bundles and two drinks.** → `sione_d03_01_repair`.

#### `sione_d03_01_repair`

**shopkeeper:** Two bundles of food. Three drinks.

1. **I need two bundles of food and three drinks.** → `sione_d03_02`.

#### `sione_d03_02`

**shopkeeper:** Good. Two bundles and three drinks.

1. **That is enough. Thank you.** → `sione_d03_03`.
2. **Thank you for your help.** → `sione_d03_03`.

#### `sione_d03_03`

**relative:** I will pay. You asked for what we needed.

1. **Thank you.** → `sione_d03_04`.
2. **I can carry these.** → `sione_d03_04`.

#### `sione_d03_04`

**shopkeeper:** Thank you. See you again.

1. **Thank you. Goodbye.** → `sione_d04_01`. Flag: `got_supplies`.
2. **Goodbye.** → `sione_d04_01`. Flag: `got_supplies`.

### D04 — A little room beside you

#### `sione_d04_01`

**relative:** Your cousin might come next time.

1. **I can ask.** → `sione_d04_02`.
2. **I can go with you again.** → `sione_d04_02`.

#### `sione_d04_02`

**relative:** The food is ready. What did you ask for?

1. **Two bundles of food. Three drinks.** → `sione_d04_03`.
2. **Three bundles of food.** → `sione_d04_02_repair`.

#### `sione_d04_02_repair`

**relative:** Two bundles. Three drinks.

1. **Two bundles of food. Three drinks.** → `sione_d04_03`.

#### `sione_d04_03`

**relative:** Thank you. At the wedding, speak slowly too.

1. **Slowly. I can do that.** → `sione_d05s_01`.
2. **Please help me practise.** → `sione_d05s_01`.

### D05S — Carrying the thanks

#### `sione_d05s_01`

**relative:** You will give a short speech. Not a long one.

1. **I want to thank them properly.** → `sione_d05s_02`.
2. **Please help me practise.** → `sione_d05s_02`.

#### `sione_d05s_02`

**relative:** You can ask to try again.

1. **Let’s try again.** → `sione_practice_sione_4_1`.
2. **Thank you for your help.** → `sione_practice_sione_4_1`.

#### `sione_practice_sione_4_1`

**relative:** Practise this part with me: [S1 PROVISIONAL ENGLISH: Hello, everyone.]

1. **[S1 PROVISIONAL ENGLISH: Hello, everyone.]** → `sione_practice_sione_4_2`. Flag: `sione_fragment_1_practised`.
2. **Please show me again.** → `sione_practice_sione_4_1`.

#### `sione_practice_sione_4_2`

**relative:** Practise this part with me: [S2 PROVISIONAL ENGLISH: Thank you for coming.]

1. **[S2 PROVISIONAL ENGLISH: Thank you for coming.]** → `sione_e01_01`. Flag: `sione_fragment_2_practised`.
2. **Please show me again.** → `sione_practice_sione_4_2`.

### E01 — A different kind of hello

#### `sione_e01_01`

**relative:** Here is the minister. We are here about the wedding.

1. **Hello, Minister.** → `sione_e01_02`.
2. **Hello. We are preparing the wedding.** → `sione_e01_02`.

#### `sione_e01_02`

**minister:** Hello. Welcome. How can I help?

1. **We are preparing the wedding.** → `sione_e01_03`.
2. **Thank you for your help.** → `sione_e01_03`.

#### `sione_e01_03`

**minister:** The family is getting ready. You have come a long way.

1. **I am happy to be with my family.** → `sione_e01_04`.
2. **Yes. I am here to help.** → `sione_e01_04`.

#### `sione_e01_04`

**relative:** Please ask about the time.

1. **What time does it start?** → `sione_e02_01`.
2. **What food is there?** → `sione_e01_04_repair`.

#### `sione_e01_04_repair`

**relative:** Ask about the time. What time does it start?

1. **What time does it start?** → `sione_e02_01`.

### E02 — Say the time back

#### `sione_e02_01`

**minister:** The family gathering starts at ten.

1. **At ten. Thank you.** → `sione_e02_02`.
2. **Please say it again.** → `sione_e02_01_repair`.

#### `sione_e02_01_repair`

**minister:** At ten.

1. **At ten. Thank you.** → `sione_e02_02`.

#### `sione_e02_02`

**minister:** At ten. We will see your family there.

1. **We will be there at ten.** → `sione_e02_03`.
2. **We will be there at two.** → `sione_e02_02_repair`.

#### `sione_e02_02_repair`

**minister:** At ten. Look at the clock.

1. **We will be there at ten.** → `sione_e02_03`.

#### `sione_e02_03`

**relative:** What time will we be there?

1. **At ten.** → `sione_e02_04`.
2. **At two.** → `sione_e02_03_repair`.

#### `sione_e02_03_repair`

**relative:** At ten.

1. **At ten.** → `sione_e02_04`.

#### `sione_e02_04`

**minister:** Thank you for checking.

1. **Thank you for your help.** → `sione_e03_01`. Flag: `time_confirmed`.
2. **Thank you, Minister.** → `sione_e03_01`. Flag: `time_confirmed`.

### E03 — Whose words are these?

#### `sione_e03_01`

**relative:** You thanked the minister yourself.

1. **I knew that part.** → `sione_e03_02`.
2. **I was nervous.** → `sione_e03_02`.

#### `sione_e03_02`

**relative:** That is enough for today. Your wedding part will be short.

1. **Short is good.** → `sione_e03_03`.
2. **Please practise with me.** → `sione_e03_03`.

#### `sione_e03_03`

**relative:** First understand what you want to say. Then we will practise the words.

1. **I want to thank my family.** → `sione_e03_04`.
2. **I want to say I am happy to be here.** → `sione_e03_04`.

#### `sione_e03_04`

**relative:** We will practise at home.

1. **Thank you for your help.** → `sione_e04s_01`.
2. **We will be there at ten.** → `sione_e04s_01`.

### E04S — Order matters

#### `sione_e04s_01`

**relative:** There is an order to the acknowledgements. We will use the order our elder gives us.

1. **Show me one part.** → `sione_e04s_02`.
2. **Let’s practise slowly.** → `sione_e04s_02`.

#### `sione_e04s_02`

**relative:** You can ask to try again.

1. **Let’s try again.** → `sione_practice_sione_5_1`.
2. **Thank you for your help.** → `sione_practice_sione_5_1`.

#### `sione_practice_sione_5_1`

**relative:** Practise this part with me: [S3 PROVISIONAL ENGLISH: I am happy to be with my family.]

1. **[S3 PROVISIONAL ENGLISH: I am happy to be with my family.]** → `sione_practice_sione_5_2`. Flag: `sione_fragment_3_practised`.
2. **Please show me again.** → `sione_practice_sione_5_1`.

#### `sione_practice_sione_5_2`

**relative:** Practise this part with me: [S4 PROVISIONAL ENGLISH: Thank you to the elders.]

1. **[S4 PROVISIONAL ENGLISH: Thank you to the elders.]** → `sione_f01_01`. Flag: `sione_fragment_4_practised`.
2. **Please show me again.** → `sione_practice_sione_5_2`.

### F01 — An invitation without an errand

#### `sione_f01_01`

**cousin:** You came. There is no shopping here.

1. **I came to see you.** → `sione_f01_02`.
2. **I came to play.** → `sione_f01_02`.

#### `sione_f01_02`

**cousin:** Come. Let’s play.

1. **Let’s go.** → `sione_f01_03`.
2. **Please say it again.** → `sione_f01_02_repair`.

#### `sione_f01_02_repair`

**cousin:** Come. Let’s play.

1. **Let’s go.** → `sione_f01_03`.

#### `sione_f01_03`

**cousin:** Look. The ball is there.

1. **That is the ball.** → `sione_f01_04`.
2. **That is the church.** → `sione_f01_03_repair`.

#### `sione_f01_03_repair`

**cousin:** Look here. The ball.

1. **That is the ball.** → `sione_f01_04`.

#### `sione_f01_04`

**cousin:** Kick the ball.

1. **I will try.** → `sione_f01_05`.
2. **Show me first.** → `sione_f01_05`.

#### `sione_f01_05`

**cousin:** Like this. Come on.

1. **Let’s play.** → `sione_f02_01`.
2. **I will try.** → `sione_f02_01`.

### F02 — Try again is allowed

#### `sione_f02_01`

**cousin:** That went the wrong way. Try again.

1. **I will try again.** → `sione_f02_02`.
2. **You show me.** → `sione_f02_02`.

#### `sione_f02_02`

**cousin:** You are getting better. Are you tired?

1. **Not yet. Let’s play.** → `sione_f02_02_response_0`.
2. **Yes. Let’s rest.** → `sione_f02_02_response_1`.

#### `sione_f02_03`

**cousin:** All right. One more pass, then we rest. Come.

1. **Let’s go.** → `sione_f02_04`.
2. **How many drinks?** → `sione_f02_03_repair`.

#### `sione_f02_03_repair`

**cousin:** Come. Let’s play.

1. **Let’s go.** → `sione_f02_04`.

#### `sione_f02_04`

**cousin:** Good. That is enough.

1. **This is fun.** → `sione_f03_01`.
2. **Thank you for playing.** → `sione_f03_01`.

#### `sione_f02_02_response_0`

**cousin:** One more, then a rest.

*Stage cue:* Cousin rolls the ball back.

1. **Continue.** → `sione_f02_03`.

#### `sione_f02_02_response_1`

**cousin:** All right. One last easy pass.

*Stage cue:* Cousin moves closer, reducing the distance.

1. **Continue.** → `sione_f02_03`.

### F03 — Not a project to fix

#### `sione_f03_01`

**cousin:** At home, someone always answers before I do.

1. **I can wait.** → `sione_f03_02`.
2. **That happens to me too.** → `sione_f03_02`.
3. **Let’s go. We can talk later.** → `sione_f04s_01`.

#### `sione_f03_02`

**cousin:** Then they ask why I am quiet.

1. **You can take your time.** → `sione_f03_02_response_0`.
2. **We can try one line together.** → `sione_f03_02_response_1`.

#### `sione_f03_03`

**cousin:** Will everyone look at you at the wedding?

1. **Yes. I am nervous.** → `sione_f03_04`.
2. **Yes. I will practise.** → `sione_f03_04`.

#### `sione_f03_04`

**cousin:** You still want to do it?

1. **I want to be part of it.** → `sione_f03_05`.
2. **I want to thank them.** → `sione_f03_05`.

#### `sione_f03_05`

**cousin:** Maybe I can help you practise. Just us.

1. **I would like that.** → `sione_f03_06`.
2. **Only if you want to.** → `sione_f03_06`.

#### `sione_f03_06`

**cousin:** Come. We should go back.

1. **Let’s go.** → `sione_f04s_01`. Flag: `cousin_invited`.
2. **Good. Let’s go.** → `sione_f04s_01`. Flag: `cousin_invited`.

#### `sione_f03_02_response_0`

**cousin:** Most people don’t wait.

*Stage cue:* Player stays beside cousin without prompting.

1. **Continue.** → `sione_f03_03`.

#### `sione_f03_02_response_1`

**cousin:** Just us, then.

*Stage cue:* Cousin faces player; optional rehearsal invitation is personal.

1. **Continue.** → `sione_f03_03`.

### F04S — A small audience

#### `sione_f04s_01`

**cousin:** You can practise with me. I will not interrupt.

1. **Thank you. I will try.** → `sione_f04s_02`.
2. **Please listen.** → `sione_f04s_02`.

#### `sione_f04s_02`

**cousin:** You can ask to try again.

1. **Let’s try again.** → `sione_practice_sione_6_1`.
2. **Thank you for your help.** → `sione_practice_sione_6_1`.

#### `sione_practice_sione_6_1`

**relative:** Practise this part with me: [S5 PROVISIONAL ENGLISH: God bless this wedding.]

1. **[S5 PROVISIONAL ENGLISH: God bless this wedding.]** → `sione_practice_sione_6_2`. Flag: `sione_fragment_5_practised`.
2. **Please show me again.** → `sione_practice_sione_6_1`.

#### `sione_practice_sione_6_2`

**relative:** Practise this part with me: [S6 PROVISIONAL ENGLISH: Thank you.]

1. **[S6 PROVISIONAL ENGLISH: Thank you.]** → `sione_g01_01`. Flag: `sione_fragment_6_practised`.
2. **Please show me again.** → `sione_practice_sione_6_2`.

### G01 — Tomorrow has a shape

#### `sione_g01_01`

**relative:** The supplies are here. What time tomorrow?

1. **At ten.** → `sione_g01_02`.
2. **At two.** → `sione_g01_01_repair`.

#### `sione_g01_01_repair`

**relative:** At ten. You checked with the minister.

1. **At ten.** → `sione_g01_02`.

#### `sione_g01_02`

**relative:** Two bundles of food. Three drinks. Is that enough?

1. **Yes. That is enough.** → `sione_g01_03`.
2. **Thank you for your help.** → `sione_g01_03`.

#### `sione_g01_03`

**relative:** What did you ask for at the market?

1. **I need two bundles of food and three drinks.** → `sione_g01_04`.
2. **I need three bundles and two drinks.** → `sione_g01_03_repair`.

#### `sione_g01_03_repair`

**relative:** Two bundles of food. Three drinks.

1. **I need two bundles of food and three drinks.** → `sione_g01_04`.

#### `sione_g01_04`

**elder:** Tomorrow we will ask you to take your part.

1. **I am ready to practise.** → `sione_g01_05`.
2. **Please stay near me.** → `sione_g01_05`.

#### `sione_g01_05`

**elder:** We will be near you.

1. **Thank you.** → `sione_g02_01`.
2. **I am happy to be here.** → `sione_g02_01`.

### G02 — A voice at the same table

#### `sione_g02_01`

**cousin:** Do you want me to stay?

1. **Yes, please.** → `sione_g02_01_response_0`.
2. **You can just listen.** → `sione_g02_01_response_1`.

#### `sione_g02_02`

**cousin:** If you stop, I can wait. Like you did.

1. **Thank you.** → `sione_g02_03`.
2. **Then let’s try.** → `sione_g02_03`.

#### `sione_g02_03`

**relative:** We will practise one part at a time.

1. **One part at a time.** → `sione_g03_01`.
2. **I will try.** → `sione_g03_01`.

#### `sione_g02_01_response_0`

**cousin:** I will stay.

*Stage cue:* Cousin pulls a chair beside player.

1. **Continue.** → `sione_g02_02`.

#### `sione_g02_01_response_1`

**cousin:** I can do that.

*Stage cue:* Cousin sits farther back; no performance demanded.

1. **Continue.** → `sione_g02_02`.

### G03 — Before the room fills

#### `sione_g03_01`

**relative:** Say: Hello, everyone.

1. **Hello, everyone.** → `sione_g03_02`.
2. **Goodbye, everyone.** → `sione_g03_01_repair`.

#### `sione_g03_01_repair`

**relative:** Hello, everyone.

1. **Hello, everyone.** → `sione_g03_02`.

#### `sione_g03_02`

**relative:** Say: I give thanks.

1. **I give thanks.** → `sione_g03_03`.
2. **What time?** → `sione_g03_02_repair`.

#### `sione_g03_02_repair`

**relative:** I give thanks.

1. **I give thanks.** → `sione_g03_03`.

#### `sione_g03_03`

**elder:** Your family is here.

1. **I love my family.** → `sione_g03_04`.
2. **I am happy to be with my family.** → `sione_g03_04`.

#### `sione_g03_04`

**relative:** Good. Now your own part.

1. **I am ready.** → `sione_eve_sione_1`.
2. **Let’s practise.** → `sione_eve_sione_1`.

### G04S — The whole contribution, slowly

#### `sione_eve_sione_1`

**relative:** Your next part is [S1 PROVISIONAL ENGLISH: Hello, everyone.]. Try it now.

1. **[S1 PROVISIONAL ENGLISH: Hello, everyone.]** → `sione_eve_sione_2`.
2. **Please show me again.** → `sione_eve_sione_1_model`.

#### `sione_eve_sione_1_model`

**relative:** Here is that part again: [S1 PROVISIONAL ENGLISH: Hello, everyone.]

1. **[S1 PROVISIONAL ENGLISH: Hello, everyone.]** → `sione_eve_sione_2`.

#### `sione_eve_sione_2`

**relative:** Your next part is [S2 PROVISIONAL ENGLISH: Thank you for coming.]. Try it now.

1. **[S2 PROVISIONAL ENGLISH: Thank you for coming.]** → `sione_eve_sione_3`.
2. **Please show me again.** → `sione_eve_sione_2_model`.

#### `sione_eve_sione_2_model`

**relative:** Here is that part again: [S2 PROVISIONAL ENGLISH: Thank you for coming.]

1. **[S2 PROVISIONAL ENGLISH: Thank you for coming.]** → `sione_eve_sione_3`.

#### `sione_eve_sione_3`

**relative:** Your next part is [S3 PROVISIONAL ENGLISH: I am happy to be with my family.]. Try it now.

1. **[S3 PROVISIONAL ENGLISH: I am happy to be with my family.]** → `sione_eve_sione_4`.
2. **Please show me again.** → `sione_eve_sione_3_model`.

#### `sione_eve_sione_3_model`

**relative:** Here is that part again: [S3 PROVISIONAL ENGLISH: I am happy to be with my family.]

1. **[S3 PROVISIONAL ENGLISH: I am happy to be with my family.]** → `sione_eve_sione_4`.

#### `sione_eve_sione_4`

**relative:** Your next part is [S4 PROVISIONAL ENGLISH: Thank you to the elders.]. Try it now.

1. **[S4 PROVISIONAL ENGLISH: Thank you to the elders.]** → `sione_eve_sione_5`.
2. **Please show me again.** → `sione_eve_sione_4_model`.

#### `sione_eve_sione_4_model`

**relative:** Here is that part again: [S4 PROVISIONAL ENGLISH: Thank you to the elders.]

1. **[S4 PROVISIONAL ENGLISH: Thank you to the elders.]** → `sione_eve_sione_5`.

#### `sione_eve_sione_5`

**relative:** Your next part is [S5 PROVISIONAL ENGLISH: God bless this wedding.]. Try it now.

1. **[S5 PROVISIONAL ENGLISH: God bless this wedding.]** → `sione_eve_sione_6`.
2. **Please show me again.** → `sione_eve_sione_5_model`.

#### `sione_eve_sione_5_model`

**relative:** Here is that part again: [S5 PROVISIONAL ENGLISH: God bless this wedding.]

1. **[S5 PROVISIONAL ENGLISH: God bless this wedding.]** → `sione_eve_sione_6`.

#### `sione_eve_sione_6`

**relative:** Your next part is [S6 PROVISIONAL ENGLISH: Thank you.]. Try it now.

1. **[S6 PROVISIONAL ENGLISH: Thank you.]** → `sione_eve_finish`.
2. **Please show me again.** → `sione_eve_sione_6_model`.

#### `sione_eve_sione_6_model`

**relative:** Here is that part again: [S6 PROVISIONAL ENGLISH: Thank you.]

1. **[S6 PROVISIONAL ENGLISH: Thank you.]** → `sione_eve_finish`.

#### `sione_eve_finish`

**elder:** Good. We will be there with you.

1. **I give thanks.** → `sione_h01_01`. Flag: `speech_rehearsed`.
2. **Please practise the opening again.** → `sione_eve_sione_1`.

### H01 — The work becomes a wedding

#### `sione_h01_01`

**relative:** We are here. The family is ready.

1. **I am happy to be with my family.** → `sione_h01_02`.
2. **Thank you for your help.** → `sione_h01_02`.

#### `sione_h01_02`

**relative:** There is water for the table. What do you need?

1. **I need water, please.** → `sione_h01_03`.
2. **I need the sea.** → `sione_h01_02_repair`.

#### `sione_h01_02_repair`

**relative:** Water is here. I need water, please.

1. **I need water, please.** → `sione_h01_03`.

#### `sione_h01_03`

**elder:** Hello, everyone. Thank you for coming.

1. **Hello, everyone.** → `sione_h01_04`.
2. **Thank you.** → `sione_h01_04`.

#### `sione_h01_04`

**cousin:** I will be here.

1. **Thank you.** → `sione_h01_05`.
2. **I am glad you came.** → `sione_h01_05`.

#### `sione_h01_05`

**relative:** Slowly. Just as we practised.

1. **I am ready.** → `sione_climax_sione_start`.
2. **Stay near me.** → `sione_climax_sione_start`.

### H02 — After the contribution

#### `sione_h02_01`

**elder:** Thank you. Come and sit with us.

1. **Thank you.** → `sione_h02_02`.
2. **I am happy to be here.** → `sione_h02_02`.

#### `sione_h02_02`

**relative:** You did your part. Now eat with us.

1. **Thank you for the food.** → `sione_h02_03`.
2. **Yes, please.** → `sione_h02_03`.

#### `sione_h02_03`

**cousin:** I knew that line. I said it with you.

1. **I heard you.** → `sione_h02_04`.
2. **We did it together.** → `sione_h02_04`.

#### `sione_h02_04`

**cousin:** Not all of it. Just that part.

1. **That part was enough.** → `sione_i01_01`.
2. **We can practise again.** → `sione_i01_01`.

### H03S — The microphone

#### `sione_climax_sione_start`

**elder:** Now Sione will speak.

1. **I am ready.** → `sione_speech_1_0`.

#### `sione_speech_1_0`

**elder:** The family listens.

1. **[S1 PROVISIONAL ENGLISH: Hello, everyone.]** → `sione_speech_1_0_nod`.
2. **[PROVISIONAL DISTRACTOR using S2: Thank you for coming.]** → `sione_speech_1_0_confusion`.

#### `sione_speech_1_0_nod`

**relative:** The elder nods.

*Stage cue:* Elder nods. No correct label. This is staging, not spoken dialogue.

1. **Continue.** → `sione_speech_2_0`.

#### `sione_speech_1_0_confusion`

**relative:** The elder pauses. Your relative steps closer.

*Stage cue:* Confused glance, no ridicule. Third error: relative takes microphone and returns it for restart.

1. **Try again.** → `sione_speech_1_1`.

#### `sione_speech_1_1`

**elder:** The family listens.

1. **[S1 PROVISIONAL ENGLISH: Hello, everyone.]** → `sione_speech_1_1_nod`.
2. **[PROVISIONAL DISTRACTOR using S2: Thank you for coming.]** → `sione_speech_1_1_confusion`.

#### `sione_speech_1_1_nod`

**relative:** The elder nods.

*Stage cue:* Elder nods. No correct label. This is staging, not spoken dialogue.

1. **Continue.** → `sione_speech_2_1`.

#### `sione_speech_1_1_confusion`

**relative:** The elder pauses. Your relative steps closer.

*Stage cue:* Confused glance, no ridicule. Third error: relative takes microphone and returns it for restart.

1. **Try again.** → `sione_speech_1_2`.

#### `sione_speech_1_2`

**elder:** The family listens.

1. **[S1 PROVISIONAL ENGLISH: Hello, everyone.]** → `sione_speech_1_2_nod`.
2. **[PROVISIONAL DISTRACTOR using S2: Thank you for coming.]** → `sione_speech_1_2_confusion`.

#### `sione_speech_1_2_nod`

**relative:** The elder nods.

*Stage cue:* Elder nods. No correct label. This is staging, not spoken dialogue.

1. **Continue.** → `sione_speech_2_2`.

#### `sione_speech_1_2_confusion`

**relative:** The elder pauses. Your relative steps closer.

*Stage cue:* Confused glance, no ridicule. Third error: relative takes microphone and returns it for restart.

1. **Try again.** → `sione_speech_reset`.

#### `sione_speech_2_0`

**elder:** The family listens.

1. **[S2 PROVISIONAL ENGLISH: Thank you for coming.]** → `sione_speech_2_0_nod`.
2. **[PROVISIONAL DISTRACTOR using S3: I am happy to be with my family.]** → `sione_speech_2_0_confusion`.

#### `sione_speech_2_0_nod`

**relative:** The elder nods.

*Stage cue:* Elder nods. No correct label. This is staging, not spoken dialogue.

1. **Continue.** → `sione_speech_3_0`.

#### `sione_speech_2_0_confusion`

**relative:** The elder pauses. Your relative steps closer.

*Stage cue:* Confused glance, no ridicule. Third error: relative takes microphone and returns it for restart.

1. **Try again.** → `sione_speech_2_1`.

#### `sione_speech_2_1`

**elder:** The family listens.

1. **[S2 PROVISIONAL ENGLISH: Thank you for coming.]** → `sione_speech_2_1_nod`.
2. **[PROVISIONAL DISTRACTOR using S3: I am happy to be with my family.]** → `sione_speech_2_1_confusion`.

#### `sione_speech_2_1_nod`

**relative:** The elder nods.

*Stage cue:* Elder nods. No correct label. This is staging, not spoken dialogue.

1. **Continue.** → `sione_speech_3_1`.

#### `sione_speech_2_1_confusion`

**relative:** The elder pauses. Your relative steps closer.

*Stage cue:* Confused glance, no ridicule. Third error: relative takes microphone and returns it for restart.

1. **Try again.** → `sione_speech_2_2`.

#### `sione_speech_2_2`

**elder:** The family listens.

1. **[S2 PROVISIONAL ENGLISH: Thank you for coming.]** → `sione_speech_2_2_nod`.
2. **[PROVISIONAL DISTRACTOR using S3: I am happy to be with my family.]** → `sione_speech_2_2_confusion`.

#### `sione_speech_2_2_nod`

**relative:** The elder nods.

*Stage cue:* Elder nods. No correct label. This is staging, not spoken dialogue.

1. **Continue.** → `sione_speech_3_2`.

#### `sione_speech_2_2_confusion`

**relative:** The elder pauses. Your relative steps closer.

*Stage cue:* Confused glance, no ridicule. Third error: relative takes microphone and returns it for restart.

1. **Try again.** → `sione_speech_reset`.

#### `sione_speech_3_0`

**elder:** The family listens.

1. **[S3 PROVISIONAL ENGLISH: I am happy to be with my family.]** → `sione_speech_3_0_nod`.
2. **[PROVISIONAL DISTRACTOR using S4: Thank you to the elders.]** → `sione_speech_3_0_confusion`.

#### `sione_speech_3_0_nod`

**relative:** The elder nods.

*Stage cue:* Elder nods. No correct label. This is staging, not spoken dialogue.

1. **Continue.** → `sione_speech_4_0`.

#### `sione_speech_3_0_confusion`

**relative:** The elder pauses. Your relative steps closer.

*Stage cue:* Confused glance, no ridicule. Third error: relative takes microphone and returns it for restart.

1. **Try again.** → `sione_speech_3_1`.

#### `sione_speech_3_1`

**elder:** The family listens.

1. **[S3 PROVISIONAL ENGLISH: I am happy to be with my family.]** → `sione_speech_3_1_nod`.
2. **[PROVISIONAL DISTRACTOR using S4: Thank you to the elders.]** → `sione_speech_3_1_confusion`.

#### `sione_speech_3_1_nod`

**relative:** The elder nods.

*Stage cue:* Elder nods. No correct label. This is staging, not spoken dialogue.

1. **Continue.** → `sione_speech_4_1`.

#### `sione_speech_3_1_confusion`

**relative:** The elder pauses. Your relative steps closer.

*Stage cue:* Confused glance, no ridicule. Third error: relative takes microphone and returns it for restart.

1. **Try again.** → `sione_speech_3_2`.

#### `sione_speech_3_2`

**elder:** The family listens.

1. **[S3 PROVISIONAL ENGLISH: I am happy to be with my family.]** → `sione_speech_3_2_nod`.
2. **[PROVISIONAL DISTRACTOR using S4: Thank you to the elders.]** → `sione_speech_3_2_confusion`.

#### `sione_speech_3_2_nod`

**relative:** The elder nods.

*Stage cue:* Elder nods. No correct label. This is staging, not spoken dialogue.

1. **Continue.** → `sione_speech_4_2`.

#### `sione_speech_3_2_confusion`

**relative:** The elder pauses. Your relative steps closer.

*Stage cue:* Confused glance, no ridicule. Third error: relative takes microphone and returns it for restart.

1. **Try again.** → `sione_speech_reset`.

#### `sione_speech_4_0`

**elder:** The family listens.

1. **[S4 PROVISIONAL ENGLISH: Thank you to the elders.]** → `sione_speech_4_0_nod`.
2. **[PROVISIONAL DISTRACTOR using S5: God bless this wedding.]** → `sione_speech_4_0_confusion`.

#### `sione_speech_4_0_nod`

**relative:** The elder nods.

*Stage cue:* Elder nods. No correct label. This is staging, not spoken dialogue.

1. **Continue.** → `sione_speech_5_0`.

#### `sione_speech_4_0_confusion`

**relative:** The elder pauses. Your relative steps closer.

*Stage cue:* Confused glance, no ridicule. Third error: relative takes microphone and returns it for restart.

1. **Try again.** → `sione_speech_4_1`.

#### `sione_speech_4_1`

**elder:** The family listens.

1. **[S4 PROVISIONAL ENGLISH: Thank you to the elders.]** → `sione_speech_4_1_nod`.
2. **[PROVISIONAL DISTRACTOR using S5: God bless this wedding.]** → `sione_speech_4_1_confusion`.

#### `sione_speech_4_1_nod`

**relative:** The elder nods.

*Stage cue:* Elder nods. No correct label. This is staging, not spoken dialogue.

1. **Continue.** → `sione_speech_5_1`.

#### `sione_speech_4_1_confusion`

**relative:** The elder pauses. Your relative steps closer.

*Stage cue:* Confused glance, no ridicule. Third error: relative takes microphone and returns it for restart.

1. **Try again.** → `sione_speech_4_2`.

#### `sione_speech_4_2`

**elder:** The family listens.

1. **[S4 PROVISIONAL ENGLISH: Thank you to the elders.]** → `sione_speech_4_2_nod`.
2. **[PROVISIONAL DISTRACTOR using S5: God bless this wedding.]** → `sione_speech_4_2_confusion`.

#### `sione_speech_4_2_nod`

**relative:** The elder nods.

*Stage cue:* Elder nods. No correct label. This is staging, not spoken dialogue.

1. **Continue.** → `sione_speech_5_2`.

#### `sione_speech_4_2_confusion`

**relative:** The elder pauses. Your relative steps closer.

*Stage cue:* Confused glance, no ridicule. Third error: relative takes microphone and returns it for restart.

1. **Try again.** → `sione_speech_reset`.

#### `sione_speech_5_0`

**elder:** The family listens.

1. **[S5 PROVISIONAL ENGLISH: God bless this wedding.]** → `sione_speech_5_0_nod`.
2. **[PROVISIONAL DISTRACTOR using S6: Thank you.]** → `sione_speech_5_0_confusion`.

#### `sione_speech_5_0_nod`

**relative:** The elder nods.

*Stage cue:* Elder nods. No correct label. This is staging, not spoken dialogue.

1. **Continue.** → `sione_speech_6_0`.

#### `sione_speech_5_0_confusion`

**relative:** The elder pauses. Your relative steps closer.

*Stage cue:* Confused glance, no ridicule. Third error: relative takes microphone and returns it for restart.

1. **Try again.** → `sione_speech_5_1`.

#### `sione_speech_5_1`

**elder:** The family listens.

1. **[S5 PROVISIONAL ENGLISH: God bless this wedding.]** → `sione_speech_5_1_nod`.
2. **[PROVISIONAL DISTRACTOR using S6: Thank you.]** → `sione_speech_5_1_confusion`.

#### `sione_speech_5_1_nod`

**relative:** The elder nods.

*Stage cue:* Elder nods. No correct label. This is staging, not spoken dialogue.

1. **Continue.** → `sione_speech_6_1`.

#### `sione_speech_5_1_confusion`

**relative:** The elder pauses. Your relative steps closer.

*Stage cue:* Confused glance, no ridicule. Third error: relative takes microphone and returns it for restart.

1. **Try again.** → `sione_speech_5_2`.

#### `sione_speech_5_2`

**elder:** The family listens.

1. **[S5 PROVISIONAL ENGLISH: God bless this wedding.]** → `sione_speech_5_2_nod`.
2. **[PROVISIONAL DISTRACTOR using S6: Thank you.]** → `sione_speech_5_2_confusion`.

#### `sione_speech_5_2_nod`

**relative:** The elder nods.

*Stage cue:* Elder nods. No correct label. This is staging, not spoken dialogue.

1. **Continue.** → `sione_speech_6_2`.

#### `sione_speech_5_2_confusion`

**relative:** The elder pauses. Your relative steps closer.

*Stage cue:* Confused glance, no ridicule. Third error: relative takes microphone and returns it for restart.

1. **Try again.** → `sione_speech_reset`.

#### `sione_speech_6_0`

**elder:** The family listens.

1. **[S6 PROVISIONAL ENGLISH: Thank you.]** → `sione_speech_6_0_nod`. Flag: `speech_complete`.
2. **[PROVISIONAL DISTRACTOR using S1: Hello, everyone.]** → `sione_speech_6_0_confusion`.

#### `sione_speech_6_0_nod`

**relative:** The elder nods.

*Stage cue:* Elder nods. No correct label. This is staging, not spoken dialogue.

1. **Continue.** → `sione_h02_01`.

#### `sione_speech_6_0_confusion`

**relative:** The elder pauses. Your relative steps closer.

*Stage cue:* Confused glance, no ridicule. Third error: relative takes microphone and returns it for restart.

1. **Try again.** → `sione_speech_6_1`.

#### `sione_speech_6_1`

**elder:** The family listens.

1. **[S6 PROVISIONAL ENGLISH: Thank you.]** → `sione_speech_6_1_nod`. Flag: `speech_complete`.
2. **[PROVISIONAL DISTRACTOR using S1: Hello, everyone.]** → `sione_speech_6_1_confusion`.

#### `sione_speech_6_1_nod`

**relative:** The elder nods.

*Stage cue:* Elder nods. No correct label. This is staging, not spoken dialogue.

1. **Continue.** → `sione_h02_01`.

#### `sione_speech_6_1_confusion`

**relative:** The elder pauses. Your relative steps closer.

*Stage cue:* Confused glance, no ridicule. Third error: relative takes microphone and returns it for restart.

1. **Try again.** → `sione_speech_6_2`.

#### `sione_speech_6_2`

**elder:** The family listens.

1. **[S6 PROVISIONAL ENGLISH: Thank you.]** → `sione_speech_6_2_nod`. Flag: `speech_complete`.
2. **[PROVISIONAL DISTRACTOR using S1: Hello, everyone.]** → `sione_speech_6_2_confusion`.

#### `sione_speech_6_2_nod`

**relative:** The elder nods.

*Stage cue:* Elder nods. No correct label. This is staging, not spoken dialogue.

1. **Continue.** → `sione_h02_01`.

#### `sione_speech_6_2_confusion`

**relative:** The elder pauses. Your relative steps closer.

*Stage cue:* Confused glance, no ridicule. Third error: relative takes microphone and returns it for restart.

1. **Try again.** → `sione_speech_reset`.

#### `sione_speech_reset`

**relative:** Let’s begin again. Slowly.

1. **I am ready.** → `sione_climax_sione_start`.

### I01 — The same forecourt

#### `sione_i01_01`

**driver:** Here we are again. Are you ready?

1. **Yes. Thank you.** → `sione_i01_02`.
2. **Almost.** → `sione_i01_02`.

#### `sione_i01_02`

**driver:** Would you like water before you go?

1. **I need water, please.** → `sione_i01_03`.
2. **No, thank you.** → `sione_i01_03`.

#### `sione_i01_03`

**relative:** Thank you for being with us.

1. **I give thanks to my family.** → `sione_i01_04`.
2. **I love my family.** → `sione_i01_04`.

#### `sione_i01_04`

**elder:** You are leaving. Goodbye. Travel safely.

1. **Goodbye. I will come back.** → `sione_i01_05`.
2. **Goodbye. Thank you.** → `sione_i01_05`.

#### `sione_i01_05`

**relative:** We will stay here. Say goodbye to us.

1. **Goodbye.** → `sione_i01_06`. Addressed to staying group.
2. **Please show me.** → `sione_i01_05_repair`.

#### `sione_i01_05_repair`

**relative:** You go. We stay. Goodbye to those staying.

1. **Goodbye.** → `sione_i01_06`. Addressed to staying group.

#### `sione_i01_06`

**elder:** We love you.

1. **I love you all.** → `sione_i02_01`.
2. **Thank you. I love you.** → `sione_i02_01`.

### I02 — One line next time

#### `sione_i02_01`

**cousin:** Message me when you get home.

1. **I will.** → `sione_i02_02`.
2. **You message me too.** → `sione_i02_02`.

#### `sione_i02_02`

**cousin:** Next time, let me say hello first.

1. **I will wait.** → `sione_i02_02_response_0`.
2. **We can say it together.** → `sione_i02_02_response_1`.

#### `sione_i02_03`

**cousin:** Hello. I am your cousin.

1. **Hello. I am Sione.** → `sione_i02_04`.
2. **Good to see you.** → `sione_i02_04`.

#### `sione_i02_04`

**cousin:** All right. Goodbye.

1. **Goodbye. I will come back.** → `sione_i03_01`.
2. **Goodbye. I love you.** → `sione_i03_01`.

#### `sione_i02_02_response_0`

**cousin:** Good. I will try.

*Stage cue:* Cousin meets the player’s eye.

1. **Continue.** → `sione_i02_03`.

#### `sione_i02_02_response_1`

**cousin:** Let me start. You can come after.

*Stage cue:* Cousin raises a hand, then smiles.

1. **Continue.** → `sione_i02_03`.

### I03 — A way to return

#### `sione_i03_01`

**driver:** They are staying. You are leaving.

1. **Goodbye.** → `sione_i03_02`. Addressed to staying group.
2. **Goodbye.** → `sione_i03_01_repair`. Addressed to departing person.

#### `sione_i03_01_repair`

**driver:** You are leaving. They are staying.

1. **Goodbye to those staying.** → `sione_i03_02`.

#### `sione_i03_02`

**relative:** Come back soon.

1. **I will come back.** → `sione_i03_03`.
2. **Thank you for your help.** → `sione_i03_03`.

#### `sione_i03_03`

**elder:** Goodbye. We love you.

1. **Goodbye. I love you all.** → `END`. Flag: `story_complete`.
2. **Goodbye. Thank you.** → `END`. Flag: `story_complete`.

## Mele path

### A01 — A name at the gate

#### `mele_a01_02`

**driver:** Welcome. I am your family’s driver today. How are you?

1. **Good, thank you.** → `mele_a01_02_response_0`.
2. **A little tired.** → `mele_a01_02_response_1`.

#### `mele_a01_03`

**driver:** A long flight. Your family is waiting.

1. **I am happy to be here.** → `mele_a01_04`.
2. **Thank you for coming.** → `mele_a01_04`.

#### `mele_a01_04`

**driver:** One more time, so I have your name right. Who are you?

1. **I am Mele.** → `mele_a02_01`. Flag: `identity_confirmed`.
2. **You are Mele.** → `mele_a01_04_repair`.

#### `mele_a01_04_repair`

**driver:** I am the driver. You are Mele.

1. **I am Mele.** → `mele_a02_01`. Flag: `identity_confirmed`.

#### `mele_a01_02_response_0`

**driver:** Good. Let’s get you home.

*Stage cue:* Driver lifts the bag.

1. **Continue.** → `mele_a01_03`.

#### `mele_a01_02_response_1`

**driver:** We can take it slowly.

*Stage cue:* Driver sets the bag in the car and waits.

1. **Continue.** → `mele_a01_03`.

### A02 — One small journey

#### `mele_a02_01`

**driver:** Your return flight is after the wedding. A short visit.

1. **Yes. I want to help.** → `mele_a02_02`.
2. **Yes. I want to see everyone.** → `mele_a02_02`.

#### `mele_a02_02`

**driver:** Are you ready? We can go now.

1. **Yes. Let’s go.** → `mele_a02_03`.
2. **Please, say it again.** → `mele_a02_02_repair`.

#### `mele_a02_02_repair`

**driver:** Are you ready? Let’s go.

1. **Yes. Let’s go.** → `mele_a02_03`.

#### `mele_a02_03`

**driver:** This way.

1. **Thank you.** → `mele_b01_01`.
2. **Let’s go.** → `mele_b01_01`.

### B01 — Looking together

#### `mele_b01_01`

**driver:** Look. That is a coconut tree.

1. **That is a coconut tree.** → `mele_b01_02`.
2. **Look.** → `mele_b01_02`.

#### `mele_b01_02`

**driver:** Look ahead. That is a church.

1. **That is a church.** → `mele_b01_03`.
2. **That is a coconut tree.** → `mele_b01_02_repair`.

#### `mele_b01_02_repair`

**driver:** Look ahead. The church is there.

1. **That is a church.** → `mele_b01_03`.

#### `mele_b01_03`

**driver:** That is the village. We are going this way.

1. **That is the village.** → `mele_b01_04`.
2. **This way.** → `mele_b01_04`.

#### `mele_b01_04`

**driver:** Look. There is the sea.

1. **That is the sea.** → `mele_b02_01`.
2. **Look at the sea.** → `mele_b02_01`.

### B02 — The last turn

#### `mele_b02_01`

**driver:** Look ahead. What is that?

1. **That is a church.** → `mele_b02_02`.
2. **That is the sea.** → `mele_b02_01_repair`.

#### `mele_b02_01_repair`

**driver:** Look again. That is a church.

1. **That is a church.** → `mele_b02_02`.

#### `mele_b02_02`

**driver:** Good. We are almost there. Your family’s house is ahead.

1. **That is the house.** → `mele_c01_01`. Flag: `onboarding_complete`.
2. **We are almost there.** → `mele_c01_01`. Flag: `onboarding_complete`.

### C01 — A seat is waiting

#### `mele_c01_01`

**elder:** Hello. You have arrived.

1. **Hello. I am Mele.** → `mele_c01_02`.
2. **Hello. Thank you.** → `mele_c01_02`.

#### `mele_c01_02`

**elder:** I am your grandmother. Come and sit with me.

1. **Hello, Grandmother.** → `mele_c01_03`.
2. **Thank you, Grandmother.** → `mele_c01_03`.

#### `mele_c01_03`

**elder:** Come in. Sit here.

1. **Thank you.** → `mele_c01_04`.
2. **Here?** → `mele_c01_04`.

#### `mele_c01_04`

**elder:** Yes, here. How are you?

1. **Good, thank you.** → `mele_c01_05`.
2. **A little tired.** → `mele_c01_05`.

#### `mele_c01_05`

**relative:** The wedding is soon. We are glad you came.

1. **I am glad to be here.** → `mele_c01_06`.
2. **Thank you for having me.** → `mele_c01_06`.

#### `mele_c01_06`

**elder:** This is your family. There is a place for you.

1. **Thank you.** → `mele_c02_01`.
2. **I am happy to be with my family.** → `mele_c02_01`.

### C02 — Passing the bowl

#### `mele_c02_01`

**relative:** This is your cousin.

1. **Hello. I am Mele.** → `mele_c02_02`.
2. **Hello. How are you?** → `mele_c02_02`.

#### `mele_c02_02`

**cousin:** Hello.

1. **Good to see you.** → `mele_c02_03`.
2. **Hello.** → `mele_c02_03`.

#### `mele_c02_03`

**elder:** Are you hungry? Here is rice.

1. **Yes, please. Thank you.** → `mele_c02_03_response_0`.
2. **No, thank you.** → `mele_c02_03_response_1`.

#### `mele_c02_04`

**relative:** Here is fish. Here is taro.

1. **I would like fish, please.** → `mele_c02_04_response_0`.
2. **I would like taro, please.** → `mele_c02_04_response_1`.

#### `mele_c02_05`

**relative:** Would you like water?

1. **Yes, please.** → `mele_c02_05_response_0`.
2. **No, thank you.** → `mele_c02_05_response_1`.

#### `mele_c02_06`

**elder:** There is more food. Would you like some?

1. **Yes, thank you.** → `mele_c02_06_response_0`.
2. **No, thank you.** → `mele_c02_06_response_1`.

#### `mele_c02_07`

**relative:** Those two are brother and sister. They are helping too.

1. **Your brother and sister?** → `mele_c03_01`.
2. **Brother and sister.** → `mele_c03_01`.

#### `mele_c02_03_response_0`

**elder:** Here you are.

*Stage cue:* Elder serves a small portion of rice.

1. **Continue.** → `mele_c02_04`.

#### `mele_c02_03_response_1`

**elder:** All right. It is here if you want it later.

*Stage cue:* Elder leaves the bowl within reach without serving player.

1. **Continue.** → `mele_c02_04`.

#### `mele_c02_04_response_0`

**relative:** Here is the fish.

*Stage cue:* Relative passes the fish dish.

1. **Continue.** → `mele_c02_05`.

#### `mele_c02_04_response_1`

**relative:** Here is the taro.

*Stage cue:* Relative passes the taro dish.

1. **Continue.** → `mele_c02_05`.

#### `mele_c02_05_response_0`

**relative:** Here is water.

*Stage cue:* Relative fills the player’s cup.

1. **Continue.** → `mele_c02_06`.

#### `mele_c02_05_response_1`

**relative:** All right.

*Stage cue:* Jug remains on table; cup stays empty.

1. **Continue.** → `mele_c02_06`.

#### `mele_c02_06_response_0`

**elder:** Of course.

*Stage cue:* Serve another small portion.

1. **Continue.** → `mele_c02_07`.

#### `mele_c02_06_response_1`

**elder:** Of course.

*Stage cue:* Leave the bowl; elder accepts the refusal warmly.

1. **Continue.** → `mele_c02_07`.

### C03 — Beside the quiet cousin

#### `mele_c03_01`

**relative:** Your cousin can show you around.

1. **Only if you want to.** → `mele_c03_02`.
2. **We can go together later.** → `mele_c03_02`.
3. **Let’s go. We can talk later.** → `mele_c04_01`.

#### `mele_c03_02`

**cousin:** Everyone asks me to show people around.

1. **We can just eat.** → `mele_c03_02_response_0`.
2. **You can say no.** → `mele_c03_02_response_1`.

#### `mele_c03_03`

**cousin:** You don’t know all the words either?

1. **No. I am learning.** → `mele_c03_04`.
2. **Some words. Not all.** → `mele_c03_04`.

#### `mele_c03_04`

**cousin:** I know what they mean. Sometimes I don’t want to say them.

1. **We can try together.** → `mele_c03_04_response_0`.
2. **I can listen.** → `mele_c03_04_response_1`.

#### `mele_c03_05`

**cousin:** Maybe later.

1. **All right.** → `mele_c04_01`.
2. **See you later.** → `mele_c04_01`.

#### `mele_c03_02_response_0`

**cousin:** Good. I am still hungry.

*Stage cue:* Cousin relaxes and takes another bite.

1. **Continue.** → `mele_c03_03`.

#### `mele_c03_02_response_1`

**cousin:** Then maybe later.

*Stage cue:* Player leaves a pause; cousin stays at table.

1. **Continue.** → `mele_c03_03`.

#### `mele_c03_04_response_0`

**cousin:** One line. Not in front of everyone.

*Stage cue:* Cousin turns a little toward player.

1. **Continue.** → `mele_c03_05`.

#### `mele_c03_04_response_1`

**cousin:** Thanks.

*Stage cue:* Player lets the silence stand.

1. **Continue.** → `mele_c03_05`.

### C04 — Needed for something real

#### `mele_c04_01`

**relative:** We need help with the wedding. Can you help?

1. **Yes. I will help.** → `mele_c04_02`.
2. **Yes. Please show me.** → `mele_c04_02`.

#### `mele_c04_02`

**relative:** We need food and drinks from the market. Two bundles of food. Three drinks.

1. **Two bundles. Three drinks.** → `mele_c04_03`.
2. **Please say it again.** → `mele_c04_02_repair`.

#### `mele_c04_02_repair`

**relative:** Two bundles of food. Three drinks.

1. **Two bundles. Three drinks.** → `mele_c04_03`.

#### `mele_c04_03`

**relative:** Then ask the minister about the time. We will go together.

1. **What time?** → `mele_c04_04`.
2. **We will go together.** → `mele_c04_04`.

#### `mele_c04_04`

**elder:** You will have a small part at the wedding, too. We will practise.

1. **I will try.** → `mele_c04_05`.
2. **Will you help me?** → `mele_c04_05`.

#### `mele_c04_05`

**relative:** Yes. First the market. One thing at a time.

1. **Thank you for your help.** → `mele_d01_01`. Flag: `will_help`.
2. **Let’s go.** → `mele_d01_01`. Flag: `will_help`.

### D01 — The right stall

#### `mele_d01_01`

**relative:** Look. That is the food stall.

1. **That is the food stall.** → `mele_d01_02`.
2. **That is the church.** → `mele_d01_01_repair`.

#### `mele_d01_01_repair`

**relative:** Look here. Food is on this table.

1. **That is the food stall.** → `mele_d01_02`.

#### `mele_d01_02`

**shopkeeper:** Hello. How are you?

1. **Good, thank you.** → `mele_d01_03`.
2. **Hello. I am Mele.** → `mele_d01_03`.

#### `mele_d01_03`

**shopkeeper:** What do you need?

1. **I need food, please.** → `mele_d01_04`.
2. **I need the sea.** → `mele_d01_03_repair`.

#### `mele_d01_03_repair`

**shopkeeper:** Food is here. What do you need?

1. **I need food, please.** → `mele_d01_04`.

#### `mele_d01_04`

**relative:** We need two bundles.

1. **Two bundles.** → `mele_d02_01`.
2. **Three bundles.** → `mele_d01_04_repair`.

#### `mele_d01_04_repair`

**relative:** Two bundles of food.

1. **Two bundles.** → `mele_d02_01`.

### D02 — Enough for the table

#### `mele_d02_01`

**shopkeeper:** How many bundles?

1. **Two, please.** → `mele_d02_02`.
2. **Three, please.** → `mele_d02_01_repair`.

#### `mele_d02_01_repair`

**shopkeeper:** The family asked for two bundles.

1. **Two, please.** → `mele_d02_02`.

#### `mele_d02_02`

**shopkeeper:** Two bundles. Is that enough?

1. **Yes. That is enough.** → `mele_d02_03`.
2. **Please show me again.** → `mele_d02_02_repair`.

#### `mele_d02_02_repair`

**shopkeeper:** Here are the two bundles.

1. **Yes. That is enough.** → `mele_d02_03`.

#### `mele_d02_03`

**relative:** We also need three drinks.

1. **I need three drinks, please.** → `mele_d02_04`.
2. **I need two drinks.** → `mele_d02_03_repair`.

#### `mele_d02_03_repair`

**relative:** Three drinks. One, two, three.

1. **I need three drinks, please.** → `mele_d02_04`.

#### `mele_d02_04`

**shopkeeper:** Two drinks?

1. **No. Three, please.** → `mele_d02_05`.
2. **Yes. Two.** → `mele_d02_04_repair`.

#### `mele_d02_04_repair`

**shopkeeper:** You asked for three. Let’s count again.

1. **No. Three, please.** → `mele_d02_05`.

#### `mele_d02_05`

**shopkeeper:** Three. Is that enough?

1. **Yes. Thank you.** → `mele_d03_01`.
2. **Three. Thank you.** → `mele_d03_01`.

### D03 — Ask in your own voice

#### `mele_d03_01`

**shopkeeper:** What do you need for the wedding?

1. **I need two bundles of food and three drinks.** → `mele_d03_02`.
2. **I need three bundles and two drinks.** → `mele_d03_01_repair`.

#### `mele_d03_01_repair`

**shopkeeper:** Two bundles of food. Three drinks.

1. **I need two bundles of food and three drinks.** → `mele_d03_02`.

#### `mele_d03_02`

**shopkeeper:** Good. Two bundles and three drinks.

1. **That is enough. Thank you.** → `mele_d03_03`.
2. **Thank you for your help.** → `mele_d03_03`.

#### `mele_d03_03`

**relative:** I will pay. You asked for what we needed.

1. **Thank you.** → `mele_d03_04`.
2. **I can carry these.** → `mele_d03_04`.

#### `mele_d03_04`

**shopkeeper:** Thank you. See you again.

1. **Thank you. Goodbye.** → `mele_d04_01`. Flag: `got_supplies`.
2. **Goodbye.** → `mele_d04_01`. Flag: `got_supplies`.

### D04 — A little room beside you

#### `mele_d04_01`

**relative:** Your cousin might come next time.

1. **I can ask.** → `mele_d04_02`.
2. **I can go with you again.** → `mele_d04_02`.

#### `mele_d04_02`

**relative:** The food is ready. What did you ask for?

1. **Two bundles of food. Three drinks.** → `mele_d04_03`.
2. **Three bundles of food.** → `mele_d04_02_repair`.

#### `mele_d04_02_repair`

**relative:** Two bundles. Three drinks.

1. **Two bundles of food. Three drinks.** → `mele_d04_03`.

#### `mele_d04_03`

**relative:** Thank you. At the wedding, speak slowly too.

1. **Slowly. I can do that.** → `mele_d05m_01`.
2. **Please help me practise.** → `mele_d05m_01`.

### D05M — A part in the celebration

#### `mele_d05m_01`

**relative:** You will dance. We will practise each movement and what it means.

1. **Please show me.** → `mele_d05m_02`.
2. **I want to understand it.** → `mele_d05m_02`.

#### `mele_d05m_02`

**relative:** You can ask to try again.

1. **Let’s try again.** → `mele_practice_mele_4_1`.
2. **Thank you for your help.** → `mele_practice_mele_4_1`.

#### `mele_practice_mele_4_1`

**relative:** Practise this part with me: [APPROVAL SLOT M1: elder-supplied movement + reason pair]

1. **[APPROVAL SLOT M1: elder-supplied movement + reason pair]** → `mele_practice_mele_4_2`. Flag: `mele_fragment_1_practised`.
2. **Please show me again.** → `mele_practice_mele_4_1`.

#### `mele_practice_mele_4_2`

**relative:** Practise this part with me: [APPROVAL SLOT M2: elder-supplied movement + reason pair]

1. **[APPROVAL SLOT M2: elder-supplied movement + reason pair]** → `mele_e01_01`. Flag: `mele_fragment_2_practised`.
2. **Please show me again.** → `mele_practice_mele_4_2`.

### E01 — A different kind of hello

#### `mele_e01_01`

**relative:** Here is the minister. We are here about the wedding.

1. **Hello, Minister.** → `mele_e01_02`.
2. **Hello. We are preparing the wedding.** → `mele_e01_02`.

#### `mele_e01_02`

**minister:** Hello. Welcome. How can I help?

1. **We are preparing the wedding.** → `mele_e01_03`.
2. **Thank you for your help.** → `mele_e01_03`.

#### `mele_e01_03`

**minister:** The family is getting ready. You have come a long way.

1. **I am happy to be with my family.** → `mele_e01_04`.
2. **Yes. I am here to help.** → `mele_e01_04`.

#### `mele_e01_04`

**relative:** Please ask about the time.

1. **What time does it start?** → `mele_e02_01`.
2. **What food is there?** → `mele_e01_04_repair`.

#### `mele_e01_04_repair`

**relative:** Ask about the time. What time does it start?

1. **What time does it start?** → `mele_e02_01`.

### E02 — Say the time back

#### `mele_e02_01`

**minister:** The family gathering starts at ten.

1. **At ten. Thank you.** → `mele_e02_02`.
2. **Please say it again.** → `mele_e02_01_repair`.

#### `mele_e02_01_repair`

**minister:** At ten.

1. **At ten. Thank you.** → `mele_e02_02`.

#### `mele_e02_02`

**minister:** At ten. We will see your family there.

1. **We will be there at ten.** → `mele_e02_03`.
2. **We will be there at two.** → `mele_e02_02_repair`.

#### `mele_e02_02_repair`

**minister:** At ten. Look at the clock.

1. **We will be there at ten.** → `mele_e02_03`.

#### `mele_e02_03`

**relative:** What time will we be there?

1. **At ten.** → `mele_e02_04`.
2. **At two.** → `mele_e02_03_repair`.

#### `mele_e02_03_repair`

**relative:** At ten.

1. **At ten.** → `mele_e02_04`.

#### `mele_e02_04`

**minister:** Thank you for checking.

1. **Thank you for your help.** → `mele_e03_01`. Flag: `time_confirmed`.
2. **Thank you, Minister.** → `mele_e03_01`. Flag: `time_confirmed`.

### E03 — Whose words are these?

#### `mele_e03_01`

**relative:** You thanked the minister yourself.

1. **I knew that part.** → `mele_e03_02`.
2. **I was nervous.** → `mele_e03_02`.

#### `mele_e03_02`

**relative:** That is enough for today. Your wedding part will be short.

1. **Short is good.** → `mele_e03_03`.
2. **Please practise with me.** → `mele_e03_03`.

#### `mele_e03_03`

**relative:** First understand what you want to say. Then we will practise the words.

1. **I want to thank my family.** → `mele_e03_04`.
2. **I want to say I am happy to be here.** → `mele_e03_04`.

#### `mele_e03_04`

**relative:** We will practise at home.

1. **Thank you for your help.** → `mele_e04m_01`.
2. **We will be there at ten.** → `mele_e04m_01`.

### E04M — Meaning before memory

#### `mele_e04m_01`

**relative:** We will use the movements our elder teaches. Do not guess at their meaning.

1. **Show me one pair.** → `mele_e04m_02`.
2. **Let’s practise slowly.** → `mele_e04m_02`.

#### `mele_e04m_02`

**relative:** You can ask to try again.

1. **Let’s try again.** → `mele_practice_mele_5_1`.
2. **Thank you for your help.** → `mele_practice_mele_5_1`.

#### `mele_practice_mele_5_1`

**relative:** Practise this part with me: [APPROVAL SLOT M3: elder-supplied movement + reason pair]

1. **[APPROVAL SLOT M3: elder-supplied movement + reason pair]** → `mele_f01_01`. Flag: `mele_fragment_3_practised`.
2. **Please show me again.** → `mele_practice_mele_5_1`.

### F01 — An invitation without an errand

#### `mele_f01_01`

**cousin:** You came. There is no shopping here.

1. **I came to see you.** → `mele_f01_02`.
2. **I came to play.** → `mele_f01_02`.

#### `mele_f01_02`

**cousin:** Come. Let’s play.

1. **Let’s go.** → `mele_f01_03`.
2. **Please say it again.** → `mele_f01_02_repair`.

#### `mele_f01_02_repair`

**cousin:** Come. Let’s play.

1. **Let’s go.** → `mele_f01_03`.

#### `mele_f01_03`

**cousin:** Look. The ball is there.

1. **That is the ball.** → `mele_f01_04`.
2. **That is the church.** → `mele_f01_03_repair`.

#### `mele_f01_03_repair`

**cousin:** Look here. The ball.

1. **That is the ball.** → `mele_f01_04`.

#### `mele_f01_04`

**cousin:** Kick the ball.

1. **I will try.** → `mele_f01_05`.
2. **Show me first.** → `mele_f01_05`.

#### `mele_f01_05`

**cousin:** Like this. Come on.

1. **Let’s play.** → `mele_f02_01`.
2. **I will try.** → `mele_f02_01`.

### F02 — Try again is allowed

#### `mele_f02_01`

**cousin:** That went the wrong way. Try again.

1. **I will try again.** → `mele_f02_02`.
2. **You show me.** → `mele_f02_02`.

#### `mele_f02_02`

**cousin:** You are getting better. Are you tired?

1. **Not yet. Let’s play.** → `mele_f02_02_response_0`.
2. **Yes. Let’s rest.** → `mele_f02_02_response_1`.

#### `mele_f02_03`

**cousin:** All right. One more pass, then we rest. Come.

1. **Let’s go.** → `mele_f02_04`.
2. **How many drinks?** → `mele_f02_03_repair`.

#### `mele_f02_03_repair`

**cousin:** Come. Let’s play.

1. **Let’s go.** → `mele_f02_04`.

#### `mele_f02_04`

**cousin:** Good. That is enough.

1. **This is fun.** → `mele_f03_01`.
2. **Thank you for playing.** → `mele_f03_01`.

#### `mele_f02_02_response_0`

**cousin:** One more, then a rest.

*Stage cue:* Cousin rolls the ball back.

1. **Continue.** → `mele_f02_03`.

#### `mele_f02_02_response_1`

**cousin:** All right. One last easy pass.

*Stage cue:* Cousin moves closer, reducing the distance.

1. **Continue.** → `mele_f02_03`.

### F03 — Not a project to fix

#### `mele_f03_01`

**cousin:** At home, someone always answers before I do.

1. **I can wait.** → `mele_f03_02`.
2. **That happens to me too.** → `mele_f03_02`.
3. **Let’s go. We can talk later.** → `mele_f04m_01`.

#### `mele_f03_02`

**cousin:** Then they ask why I am quiet.

1. **You can take your time.** → `mele_f03_02_response_0`.
2. **We can try one line together.** → `mele_f03_02_response_1`.

#### `mele_f03_03`

**cousin:** Will everyone look at you at the wedding?

1. **Yes. I am nervous.** → `mele_f03_04`.
2. **Yes. I will practise.** → `mele_f03_04`.

#### `mele_f03_04`

**cousin:** You still want to do it?

1. **I want to be part of it.** → `mele_f03_05`.
2. **I want to thank them.** → `mele_f03_05`.

#### `mele_f03_05`

**cousin:** Maybe I can help you practise. Just us.

1. **I would like that.** → `mele_f03_06`.
2. **Only if you want to.** → `mele_f03_06`.

#### `mele_f03_06`

**cousin:** Come. We should go back.

1. **Let’s go.** → `mele_f04m_01`. Flag: `cousin_invited`.
2. **Good. Let’s go.** → `mele_f04m_01`. Flag: `cousin_invited`.

#### `mele_f03_02_response_0`

**cousin:** Most people don’t wait.

*Stage cue:* Player stays beside cousin without prompting.

1. **Continue.** → `mele_f03_03`.

#### `mele_f03_02_response_1`

**cousin:** Just us, then.

*Stage cue:* Cousin faces player; optional rehearsal invitation is personal.

1. **Continue.** → `mele_f03_03`.

### F04M — Someone to practise beside

#### `mele_f04m_01`

**cousin:** You can practise here. I can watch if you want.

1. **Yes, please.** → `mele_f04m_02`.
2. **Please wait while I try.** → `mele_f04m_02`.

#### `mele_f04m_02`

**cousin:** You can ask to try again.

1. **Let’s try again.** → `mele_practice_mele_6_1`.
2. **Thank you for your help.** → `mele_practice_mele_6_1`.

#### `mele_practice_mele_6_1`

**relative:** Practise this part with me: [APPROVAL SLOT M4: elder-supplied movement + reason pair]

1. **[APPROVAL SLOT M4: elder-supplied movement + reason pair]** → `mele_g01_01`. Flag: `mele_fragment_4_practised`.
2. **Please show me again.** → `mele_practice_mele_6_1`.

### G01 — Tomorrow has a shape

#### `mele_g01_01`

**relative:** The supplies are here. What time tomorrow?

1. **At ten.** → `mele_g01_02`.
2. **At two.** → `mele_g01_01_repair`.

#### `mele_g01_01_repair`

**relative:** At ten. You checked with the minister.

1. **At ten.** → `mele_g01_02`.

#### `mele_g01_02`

**relative:** Two bundles of food. Three drinks. Is that enough?

1. **Yes. That is enough.** → `mele_g01_03`.
2. **Thank you for your help.** → `mele_g01_03`.

#### `mele_g01_03`

**relative:** What did you ask for at the market?

1. **I need two bundles of food and three drinks.** → `mele_g01_04`.
2. **I need three bundles and two drinks.** → `mele_g01_03_repair`.

#### `mele_g01_03_repair`

**relative:** Two bundles of food. Three drinks.

1. **I need two bundles of food and three drinks.** → `mele_g01_04`.

#### `mele_g01_04`

**elder:** Tomorrow we will ask you to take your part.

1. **I am ready to practise.** → `mele_g01_05`.
2. **Please stay near me.** → `mele_g01_05`.

#### `mele_g01_05`

**elder:** We will be near you.

1. **Thank you.** → `mele_g02_01`.
2. **I am happy to be here.** → `mele_g02_01`.

### G02 — A voice at the same table

#### `mele_g02_01`

**cousin:** Do you want me to stay?

1. **Yes, please.** → `mele_g02_01_response_0`.
2. **You can just listen.** → `mele_g02_01_response_1`.

#### `mele_g02_02`

**cousin:** If you stop, I can wait. Like you did.

1. **Thank you.** → `mele_g02_03`.
2. **Then let’s try.** → `mele_g02_03`.

#### `mele_g02_03`

**relative:** We will practise one part at a time.

1. **One part at a time.** → `mele_g03_01`.
2. **I will try.** → `mele_g03_01`.

#### `mele_g02_01_response_0`

**cousin:** I will stay.

*Stage cue:* Cousin pulls a chair beside player.

1. **Continue.** → `mele_g02_02`.

#### `mele_g02_01_response_1`

**cousin:** I can do that.

*Stage cue:* Cousin sits farther back; no performance demanded.

1. **Continue.** → `mele_g02_02`.

### G03 — Before the room fills

#### `mele_g03_01`

**relative:** Say: Hello, everyone.

1. **Hello, everyone.** → `mele_g03_02`.
2. **Goodbye, everyone.** → `mele_g03_01_repair`.

#### `mele_g03_01_repair`

**relative:** Hello, everyone.

1. **Hello, everyone.** → `mele_g03_02`.

#### `mele_g03_02`

**relative:** Say: I give thanks.

1. **I give thanks.** → `mele_g03_03`.
2. **What time?** → `mele_g03_02_repair`.

#### `mele_g03_02_repair`

**relative:** I give thanks.

1. **I give thanks.** → `mele_g03_03`.

#### `mele_g03_03`

**elder:** Your family is here.

1. **I love my family.** → `mele_g03_04`.
2. **I am happy to be with my family.** → `mele_g03_04`.

#### `mele_g03_04`

**relative:** Good. Now your own part.

1. **I am ready.** → `mele_eve_mele_1`.
2. **Let’s practise.** → `mele_eve_mele_1`.

### G04M — The whole contribution, slowly

#### `mele_eve_mele_1`

**relative:** Your next part is [APPROVAL SLOT M1]. Try it now.

1. **[APPROVAL SLOT M1]** → `mele_eve_mele_2`.
2. **Please show me again.** → `mele_eve_mele_1_model`.

#### `mele_eve_mele_1_model`

**relative:** Here is that part again: [APPROVAL SLOT M1]

1. **[APPROVAL SLOT M1]** → `mele_eve_mele_2`.

#### `mele_eve_mele_2`

**relative:** Your next part is [APPROVAL SLOT M2]. Try it now.

1. **[APPROVAL SLOT M2]** → `mele_eve_mele_3`.
2. **Please show me again.** → `mele_eve_mele_2_model`.

#### `mele_eve_mele_2_model`

**relative:** Here is that part again: [APPROVAL SLOT M2]

1. **[APPROVAL SLOT M2]** → `mele_eve_mele_3`.

#### `mele_eve_mele_3`

**relative:** Your next part is [APPROVAL SLOT M3]. Try it now.

1. **[APPROVAL SLOT M3]** → `mele_eve_mele_4`.
2. **Please show me again.** → `mele_eve_mele_3_model`.

#### `mele_eve_mele_3_model`

**relative:** Here is that part again: [APPROVAL SLOT M3]

1. **[APPROVAL SLOT M3]** → `mele_eve_mele_4`.

#### `mele_eve_mele_4`

**relative:** Your next part is [APPROVAL SLOT M4]. Try it now.

1. **[APPROVAL SLOT M4]** → `mele_eve_finish`.
2. **Please show me again.** → `mele_eve_mele_4_model`.

#### `mele_eve_mele_4_model`

**relative:** Here is that part again: [APPROVAL SLOT M4]

1. **[APPROVAL SLOT M4]** → `mele_eve_finish`.

#### `mele_eve_finish`

**elder:** Good. We will be there with you.

1. **I give thanks.** → `mele_h01_01`. Flag: `dance_rehearsed`.
2. **Please practise the opening again.** → `mele_eve_mele_1`.

### H01 — The work becomes a wedding

#### `mele_h01_01`

**relative:** We are here. The family is ready.

1. **I am happy to be with my family.** → `mele_h01_02`.
2. **Thank you for your help.** → `mele_h01_02`.

#### `mele_h01_02`

**relative:** There is water for the table. What do you need?

1. **I need water, please.** → `mele_h01_03`.
2. **I need the sea.** → `mele_h01_02_repair`.

#### `mele_h01_02_repair`

**relative:** Water is here. I need water, please.

1. **I need water, please.** → `mele_h01_03`.

#### `mele_h01_03`

**elder:** Hello, everyone. Thank you for coming.

1. **Hello, everyone.** → `mele_h01_04`.
2. **Thank you.** → `mele_h01_04`.

#### `mele_h01_04`

**cousin:** I will be here.

1. **Thank you.** → `mele_h01_05`.
2. **I am glad you came.** → `mele_h01_05`.

#### `mele_h01_05`

**relative:** Slowly. Just as we practised.

1. **I am ready.** → `mele_climax_mele_start`.
2. **Stay near me.** → `mele_climax_mele_start`.

### H02 — After the contribution

#### `mele_h02_01`

**elder:** Thank you. Come and sit with us.

1. **Thank you.** → `mele_h02_02`.
2. **I am happy to be here.** → `mele_h02_02`.

#### `mele_h02_02`

**relative:** You did your part. Now eat with us.

1. **Thank you for the food.** → `mele_h02_03`.
2. **Yes, please.** → `mele_h02_03`.

#### `mele_h02_03`

**cousin:** I said hello with you.

1. **I heard you.** → `mele_h02_04`.
2. **We did it together.** → `mele_h02_04`.

#### `mele_h02_04`

**cousin:** Not all of it. Just that part.

1. **That part was enough.** → `mele_i01_01`.
2. **We can practise again.** → `mele_i01_01`.

### H03M — The first movement

#### `mele_climax_mele_start`

**elder:** Now Mele will dance.

1. **I am ready.** → `mele_dance_1_0`.

#### `mele_dance_1_0`

**relative:** The next part of the dance.

1. **[APPROVAL SLOT M1: next movement + matching reason]** → `mele_dance_1_0_join`. Add one joiner.
2. **[APPROVAL DISTRACTOR M1: practised movement + nonmatching practised reason]** → `mele_dance_1_0_wait`.

#### `mele_dance_1_0_join`

**relative:** A guest joins the dancers.

*Stage cue:* Show 1 preplaced joiners, up to four. No money throwing.

1. **Continue.** → `mele_dance_2_1`.

#### `mele_dance_1_0_wait`

**relative:** The guests keep watching.

*Stage cue:* Keep 0 joiners. No loss of guests or public ridicule.

1. **Continue.** → `mele_dance_2_0`.

#### `mele_dance_2_0`

**relative:** The next part of the dance.

1. **[APPROVAL SLOT M2: next movement + matching reason]** → `mele_dance_2_0_join`. Add one joiner.
2. **[APPROVAL DISTRACTOR M2: practised movement + nonmatching practised reason]** → `mele_dance_2_0_wait`.

#### `mele_dance_2_0_join`

**relative:** A guest joins the dancers.

*Stage cue:* Show 1 preplaced joiners, up to four. No money throwing.

1. **Continue.** → `mele_dance_3_1`.

#### `mele_dance_2_0_wait`

**relative:** The guests keep watching.

*Stage cue:* Keep 0 joiners. No loss of guests or public ridicule.

1. **Continue.** → `mele_dance_3_0`.

#### `mele_dance_2_1`

**relative:** The next part of the dance.

1. **[APPROVAL SLOT M2: next movement + matching reason]** → `mele_dance_2_1_join`. Add one joiner.
2. **[APPROVAL DISTRACTOR M2: practised movement + nonmatching practised reason]** → `mele_dance_2_1_wait`.

#### `mele_dance_2_1_join`

**relative:** A guest joins the dancers.

*Stage cue:* Show 2 preplaced joiners, up to four. No money throwing.

1. **Continue.** → `mele_dance_3_2`.

#### `mele_dance_2_1_wait`

**relative:** The guests keep watching.

*Stage cue:* Keep 1 joiners. No loss of guests or public ridicule.

1. **Continue.** → `mele_dance_3_1`.

#### `mele_dance_3_0`

**relative:** The next part of the dance.

1. **[APPROVAL SLOT M3: next movement + matching reason]** → `mele_dance_3_0_join`. Add one joiner.
2. **[APPROVAL DISTRACTOR M3: practised movement + nonmatching practised reason]** → `mele_dance_3_0_wait`.

#### `mele_dance_3_0_join`

**relative:** A guest joins the dancers.

*Stage cue:* Show 1 preplaced joiners, up to four. No money throwing.

1. **Continue.** → `mele_dance_4_1`.

#### `mele_dance_3_0_wait`

**relative:** The guests keep watching.

*Stage cue:* Keep 0 joiners. No loss of guests or public ridicule.

1. **Continue.** → `mele_dance_4_0`.

#### `mele_dance_3_1`

**relative:** The next part of the dance.

1. **[APPROVAL SLOT M3: next movement + matching reason]** → `mele_dance_3_1_join`. Add one joiner.
2. **[APPROVAL DISTRACTOR M3: practised movement + nonmatching practised reason]** → `mele_dance_3_1_wait`.

#### `mele_dance_3_1_join`

**relative:** A guest joins the dancers.

*Stage cue:* Show 2 preplaced joiners, up to four. No money throwing.

1. **Continue.** → `mele_dance_4_2`.

#### `mele_dance_3_1_wait`

**relative:** The guests keep watching.

*Stage cue:* Keep 1 joiners. No loss of guests or public ridicule.

1. **Continue.** → `mele_dance_4_1`.

#### `mele_dance_3_2`

**relative:** The next part of the dance.

1. **[APPROVAL SLOT M3: next movement + matching reason]** → `mele_dance_3_2_join`. Add one joiner.
2. **[APPROVAL DISTRACTOR M3: practised movement + nonmatching practised reason]** → `mele_dance_3_2_wait`.

#### `mele_dance_3_2_join`

**relative:** A guest joins the dancers.

*Stage cue:* Show 3 preplaced joiners, up to four. No money throwing.

1. **Continue.** → `mele_dance_4_3`.

#### `mele_dance_3_2_wait`

**relative:** The guests keep watching.

*Stage cue:* Keep 2 joiners. No loss of guests or public ridicule.

1. **Continue.** → `mele_dance_4_2`.

#### `mele_dance_4_0`

**relative:** The next part of the dance.

1. **[APPROVAL SLOT M4: next movement + matching reason]** → `mele_dance_4_0_join`. Add one joiner.
2. **[APPROVAL DISTRACTOR M4: practised movement + nonmatching practised reason]** → `mele_dance_4_0_wait`.

#### `mele_dance_4_0_join`

**relative:** A guest joins the dancers.

*Stage cue:* Show 1 preplaced joiners, up to four. No money throwing.

1. **Continue.** → `mele_dance_reset`.

#### `mele_dance_4_0_wait`

**relative:** The guests keep watching.

*Stage cue:* Keep 0 joiners. No loss of guests or public ridicule.

1. **Continue.** → `mele_dance_reset`.

#### `mele_dance_4_1`

**relative:** The next part of the dance.

1. **[APPROVAL SLOT M4: next movement + matching reason]** → `mele_dance_4_1_join`. Add one joiner.
2. **[APPROVAL DISTRACTOR M4: practised movement + nonmatching practised reason]** → `mele_dance_4_1_wait`.

#### `mele_dance_4_1_join`

**relative:** A guest joins the dancers.

*Stage cue:* Show 2 preplaced joiners, up to four. No money throwing.

1. **Continue.** → `mele_dance_reset`.

#### `mele_dance_4_1_wait`

**relative:** The guests keep watching.

*Stage cue:* Keep 1 joiners. No loss of guests or public ridicule.

1. **Continue.** → `mele_dance_reset`.

#### `mele_dance_4_2`

**relative:** The next part of the dance.

1. **[APPROVAL SLOT M4: next movement + matching reason]** → `mele_dance_4_2_join`. Flag: `dance_complete`. Add one joiner.
2. **[APPROVAL DISTRACTOR M4: practised movement + nonmatching practised reason]** → `mele_dance_4_2_wait`.

#### `mele_dance_4_2_join`

**relative:** A guest joins the dancers.

*Stage cue:* Show 3 preplaced joiners, up to four. No money throwing.

1. **Continue.** → `mele_dance_success`.

#### `mele_dance_4_2_wait`

**relative:** The guests keep watching.

*Stage cue:* Keep 2 joiners. No loss of guests or public ridicule.

1. **Continue.** → `mele_dance_reset`.

#### `mele_dance_4_3`

**relative:** The next part of the dance.

1. **[APPROVAL SLOT M4: next movement + matching reason]** → `mele_dance_4_3_join`. Flag: `dance_complete`. Add one joiner.
2. **[APPROVAL DISTRACTOR M4: practised movement + nonmatching practised reason]** → `mele_dance_4_3_wait`.

#### `mele_dance_4_3_join`

**relative:** A guest joins the dancers.

*Stage cue:* Show 4 preplaced joiners, up to four. No money throwing.

1. **Continue.** → `mele_dance_success`.

#### `mele_dance_4_3_wait`

**relative:** The guests keep watching.

*Stage cue:* Keep 3 joiners. No loss of guests or public ridicule.

1. **Continue.** → `mele_dance_success`.

#### `mele_dance_reset`

**relative:** Let’s begin again. I am here.

1. **I am ready.** → `mele_climax_mele_start`.

#### `mele_dance_success`

**elder:** Thank you. Come and sit with us.

1. **Thank you.** → `mele_h02_01`. Flag: `dance_complete`.

### I01 — The same forecourt

#### `mele_i01_01`

**driver:** Here we are again. Are you ready?

1. **Yes. Thank you.** → `mele_i01_02`.
2. **Almost.** → `mele_i01_02`.

#### `mele_i01_02`

**driver:** Would you like water before you go?

1. **I need water, please.** → `mele_i01_03`.
2. **No, thank you.** → `mele_i01_03`.

#### `mele_i01_03`

**relative:** Thank you for being with us.

1. **I give thanks to my family.** → `mele_i01_04`.
2. **I love my family.** → `mele_i01_04`.

#### `mele_i01_04`

**elder:** You are leaving. Goodbye. Travel safely.

1. **Goodbye. I will come back.** → `mele_i01_05`.
2. **Goodbye. Thank you.** → `mele_i01_05`.

#### `mele_i01_05`

**relative:** We will stay here. Say goodbye to us.

1. **Goodbye.** → `mele_i01_06`. Addressed to staying group.
2. **Please show me.** → `mele_i01_05_repair`.

#### `mele_i01_05_repair`

**relative:** You go. We stay. Goodbye to those staying.

1. **Goodbye.** → `mele_i01_06`. Addressed to staying group.

#### `mele_i01_06`

**elder:** We love you.

1. **I love you all.** → `mele_i02_01`.
2. **Thank you. I love you.** → `mele_i02_01`.

### I02 — One line next time

#### `mele_i02_01`

**cousin:** Message me when you get home.

1. **I will.** → `mele_i02_02`.
2. **You message me too.** → `mele_i02_02`.

#### `mele_i02_02`

**cousin:** Next time, let me say hello first.

1. **I will wait.** → `mele_i02_02_response_0`.
2. **We can say it together.** → `mele_i02_02_response_1`.

#### `mele_i02_03`

**cousin:** Hello. I am your cousin.

1. **Hello. I am Mele.** → `mele_i02_04`.
2. **Good to see you.** → `mele_i02_04`.

#### `mele_i02_04`

**cousin:** All right. Goodbye.

1. **Goodbye. I will come back.** → `mele_i03_01`.
2. **Goodbye. I love you.** → `mele_i03_01`.

#### `mele_i02_02_response_0`

**cousin:** Good. I will try.

*Stage cue:* Cousin meets the player’s eye.

1. **Continue.** → `mele_i02_03`.

#### `mele_i02_02_response_1`

**cousin:** Let me start. You can come after.

*Stage cue:* Cousin raises a hand, then smiles.

1. **Continue.** → `mele_i02_03`.

### I03 — A way to return

#### `mele_i03_01`

**driver:** They are staying. You are leaving.

1. **Goodbye.** → `mele_i03_02`. Addressed to staying group.
2. **Goodbye.** → `mele_i03_01_repair`. Addressed to departing person.

#### `mele_i03_01_repair`

**driver:** You are leaving. They are staying.

1. **Goodbye to those staying.** → `mele_i03_02`.

#### `mele_i03_02`

**relative:** Come back soon.

1. **I will come back.** → `mele_i03_03`.
2. **Thank you for your help.** → `mele_i03_03`.

#### `mele_i03_03`

**elder:** Goodbye. We love you.

1. **Goodbye. I love you all.** → `END`. Flag: `story_complete`.
2. **Goodbye. Thank you.** → `END`. Flag: `story_complete`.


## Optional language along the walkable routes

These are optional interactions within existing areas, not additional scenes or critical-path gates. They use the separate frozen-schema `overworld-dialogue-draft.json` dictionary. They terminate locally to return to the same position; `next: null` here never means the main story is complete. Their English is available in `overworld-ENGLISH-REVIEW-ONLY.json`. All Tongan and sign/object cultural content is [DR L.V.S REVIEW REQUIRED].

### airport_direction — area 1

**When:** A02 after driver has said This way. **Staging:** Small directional sign on forecourt, immediately beside the existing route; no required detour.

`optional_airport_direction` — **Environmental text:** This way.

1. **This way.** → `optional_airport_direction_response`.
2. **Let’s go.** → `RETURN TO WORLD`.

`optional_airport_direction_response` — **Environmental text:** Good.

1. **Let’s go.** → `RETURN TO WORLD`.

### popua_coconut — area 3

**When:** B01 complete; available after C01 before dinner. **Staging:** One palm at open gate; subtle outline only within interaction reach.

`optional_popua_coconut` — **Environmental text:** Look. That is a coconut tree.

1. **That is a coconut tree.** → `optional_popua_coconut_response`.
2. **Let’s go.** → `RETURN TO WORLD`.

`optional_popua_coconut_response` — **Environmental text:** Look.

1. **Let’s go.** → `RETURN TO WORLD`.

### market_display — area 4

**When:** D02 complete; available beside stall before departure. **Staging:** Highlight the same purchased display, no additional buy/collect interaction.

`optional_market_display` — **Environmental text:** Two bundles. Three drinks.

1. **That is enough.** → `optional_market_display_response`.
2. **Let’s go.** → `RETURN TO WORLD`.

`optional_market_display_response` — **Environmental text:** Good.

1. **Let’s go.** → `RETURN TO WORLD`.

### church_sign — area 5

**When:** B01 church choice complete; local church entry reached. **Staging:** Sign/entrance repeats an already-seen landmark; approved text separate from art.

`optional_church_sign` — **Environmental text:** That is the church.

1. **That is the church.** → `optional_church_sign_response`.
2. **Let’s go.** → `RETURN TO WORLD`.

`optional_church_sign_response` — **Environmental text:** Look.

1. **Let’s go.** → `RETURN TO WORLD`.

### sports_ball — area 6

**When:** F01 ball model complete. **Staging:** Stationary spare ball at pitch edge; no new noun, passing task or dexterity challenge.

`optional_sports_ball` — **Environmental text:** Look. The ball is there.

1. **That is the ball.** → `optional_sports_ball_response`.
2. **Let’s go.** → `RETURN TO WORLD`.

`optional_sports_ball_response` — **Environmental text:** Good.

1. **Let’s go.** → `RETURN TO WORLD`.

### eve_table — area 7

**When:** G01 supplies recall complete. **Staging:** Prepared table reflects successful errand; reuse existing supply props.

`optional_eve_table` — **Environmental text:** Two bundles of food. Three drinks.

1. **That is enough.** → `optional_eve_table_response`.
2. **Let’s go.** → `RETURN TO WORLD`.

`optional_eve_table_response` — **Environmental text:** Good.

1. **Let’s go.** → `RETURN TO WORLD`.

### wedding_sea — area 8

**When:** B01 sea model complete; show only after H02 success. **Staging:** Coastline glimpse from existing venue path; no new beach map or mandatory conversation.

`optional_wedding_sea` — **Environmental text:** Look. That is the sea.

1. **That is the sea.** → `optional_wedding_sea_response`.
2. **Let’s go.** → `RETURN TO WORLD`.

`optional_wedding_sea_response` — **Environmental text:** Look.

1. **Let’s go.** → `RETURN TO WORLD`.

### departure_route — area 9

**When:** I02 complete; do not intercept final farewell check. **Staging:** Terminal entrance direction marker; bypassing it never prevents boarding.

`optional_departure_route` — **Environmental text:** This way.

1. **Let’s go.** → `optional_departure_route_response`.
2. **Let’s go.** → `RETURN TO WORLD`.

`optional_departure_route_response` — **Environmental text:** Good.

1. **Let’s go.** → `RETURN TO WORLD`.
