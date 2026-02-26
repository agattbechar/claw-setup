# Viora Avatar — Production System

**Tool Stack:**
- **Frames:** ChatGPT (DALL-E) — generate start/end frames
- **Video:** Kling 3.0 Pro — animate between frames
- **Assets:** This file — store prompts, references, workflows

---

## Character Reference (The "Seed")

**METHOD: Visual Reference (Better than text prompts)**

ChatGPT has saved two reference images:
1. **Portrait** — Her face/base appearance
2. **Store** — Her standing in Viora store

**New Workflow:**
- Upload BOTH reference images to ChatGPT
- Say: "Create [scene description], using these as character reference"
- ChatGPT maintains consistency via visual reference, not text

**Fallback (if references fail):**
Use the master text prompt in [Appendix A] below.

---

## Frame Generation Prompts (Visual Reference Method)

### The Formula:

1. **Upload both reference images** (portrait + store)
2. **Type:**
```
Using the woman in these reference images, create a new scene:

SCENE: [describe the setting]
ACTION: [what she's doing]
EXPRESSION: [mood/emotion]
CAMERA: [framing, angle]

Maintain exact same woman: face, skin tone, melhfa style, overall look.
```

### Example — Start Frame (Morning Routine):
```
[Upload reference images]

Using the woman in these reference images, create a new scene:

SCENE: Modern bathroom counter, soft morning light from window, white marble
ACTION: Looking in mirror, applying sunscreen to face
EXPRESSION: Peaceful morning routine, focused
CAMERA: Chest-up, slight side angle
```

### Example — End Frame (At Viora Store):
```
[Upload reference images]

Using the woman in these reference images, create a new scene:

SCENE: Viora store interior, product shelves visible, bright lighting
ACTION: Holding product, smiling at camera (recommending it)
EXPRESSION: Confident, satisfied, trustworthy
CAMERA: Slightly wider to show store environment
```

### Example — Product Showcase:
```
[Upload reference images]

Using the woman in these reference images, create a new scene:

SCENE: Soft neutral background (cream/beige), product photography style
ACTION: Holding [PRODUCT] toward camera, presenting it
EXPRESSION: Warm, genuine recommendation
CAMERA: Product and face both visible
```

---

## Frame Generation Prompts

### How to Build Frames (The Formula):

**START with the MASTER PROMPT above**

**THEN add these variables at the END:**
```
...
[Master prompt continues]
...

VARIATION:
- Setting: [describe the specific location]
- Action: [what is she doing in this moment]
- Expression: [mood/emotion for this scene]
- Camera angle: [if different from chest-up portrait]
```

### Example — Start Frame (Morning Routine):
```
[MASTER PROMPT — copy entire block above]

VARIATION:
- Setting: Modern bathroom counter, soft morning light from window, clean white marble aesthetic
- Action: Looking in mirror while applying La Roche Posay sunscreen to her face
- Expression: Fresh, focused on her routine, peaceful morning mood
- Camera angle: Slight side angle, still chest-up
```

### Example — End Frame (At Viora Store):
```
[MASTER PROMPT — copy entire block above]

VARIATION:
- Setting: Viora store interior, shelves stocked with skincare products in background, bright clean lighting
- Action: Examining a product on the shelf, holding it up to read the label
- Expression: Satisfied, confident, knowledgeable about skincare
- Camera angle: Slightly wider to show store environment
```

### Example — Product Showcase Frame:
```
[MASTER PROMPT — copy entire block above]

VARIATION:
- Setting: Soft neutral background (cream/beige), product photography style
- Action: Holding [PRODUCT NAME] toward camera, presenting it
- Expression: Warm, genuine recommendation, trustworthy
- Camera angle: Straight on, product and face both visible
```

---

## Kling Prompts

### Template:
```
[Character] moves from [location A] to [location B] while [action].
Smooth, natural movement. Cinematic lighting. Professional quality.
```

### Example:
```
Mauritanian woman in blue melahfa walks from her bathroom to the Viora store.
She confidently selects skincare products. Smooth, natural movement. 
Warm lighting, professional cinematography.
```

---

## Content Bank (Ideas Ready to Produce)

| # | Concept | Start Frame | End Frame | Kling Prompt | Status |
|---|---------|-------------|-----------|--------------|--------|
| 1 | In-store product discovery → Recommendation | In Viora store holding product (warm, natural expression) | Deeper in store, gesturing/confident | Walking through store engaging with camera | 🔄 IN PROGRESS |
| 2 | Product recommendation | Close-up with product | Happy with results | Show transformation/confidence | ☐ |
| 3 | Trend-jack (dance/audio) | Ready position | Dance move | Smooth dance transition | ☐ |
| 4 | Day in Nouakchott | Tea at home | Shopping at Viora | Walking through neighborhood | ☐ |
| 5 | | | | | ☐ |

**Legend:**
- ☐ Not started
- 🔄 In progress
- ✅ Done

---

## Current Session Status (2026-02-26 02:00)

**What We Did:**
- Refined character consistency method: Visual reference (upload 3 images: portrait + store interior + character in store)
- Video #1 concept: Avatar discovers product in Viora store → walks deeper → recommends it
- Tested start frame expressions: First too exaggerated, second (warmer/natural) approved
- Created detailed prompts for Start Frame, End Frame, and Kling motion

**Where We Are:**
- Start frame expression: ✅ Approved (warm, natural, genuine smile)
- Start frame generation: ⏳ Pending final generation with approved expression
- End frame: ⏳ Not generated yet (needs: same character, deeper in store, more confident pose)
- Kling video: ⏳ Waiting for both frames
- Voiceover decision: ⏳ Pending (French? Hassaniya? Text only?)

**Next Steps When You Return:**
1. Generate Start Frame with final approved expression (reference image saved)
2. Generate End Frame (character deeper in store, gesturing, confident)
3. Upload both to Kling 3.0 Pro
4. Generate video
5. Decide voiceover approach
6. Edit and post

---

## Workflow (Each Video) — Visual Reference Method

1. **Pick concept** from Content Bank
2. **Upload reference images** to ChatGPT (portrait + store)
3. **Generate Start Frame** — Describe scene, ChatGPT uses visual reference
4. **Generate End Frame** — Same process, different scene
5. **Download both frames**
6. **Upload to Kling** — Start + End + Motion prompt
7. **Download video**
8. **Edit** — Add voiceover/text, music, Viora branding
9. **Post** — TikTok/Snap/Insta with CTA

---

## Voiceover/Language Strategy

**Options:**
- A) French voiceover (widely understood, professional)
- B) Hassaniya Arabic (local connection)
- C) Text overlays only (safest, no accent issues)
- D) Music + product shots (no voice, trend-jacking)

**Decision:** [ ] 

---

## Successful Prompts Log

**Working combo #1:**
- Start: [description]
- End: [description]
- Kling: [prompt]
- Result: [notes]

**Working combo #2:**
- ...

---

## Appendix A: Master Text Prompt (Fallback)

**Use this only if visual reference method fails:**

```
Ultra-realistic commercial photography of a Mauritanian–Maghrebi–Sahrawi woman in her early to mid 30s.

Bright light skin tone.
Neutral undertone (not warm, not golden, not orange).
Natural skin texture with visible pores.
No airbrushing. No smoothing. No artificial glow.

Lovable, pretty, naturally attractive presence.
Soft, balanced facial harmony.
No exaggerated symmetry.
No influencer beauty standards.

Calm, intelligent, trustworthy expression.
Subtle natural smile.
Gentle eye contact with camera.

She is wearing a traditional Mauritanian melhfa.
Authentically draped.
Soft flowing fabric wrapped around head and shoulders.
Luxury neutral tone (cream, soft ivory, pale sand).
Clearly a Mauritanian melhfa — not a generic scarf.
Hair fully covered.

Setting: softly blurred luxury parapharmacy interior.
Premium clinical-beauty environment.
Warm-neutral clinical lighting (not golden).

Camera:
Chest-up framing.
Static camera.
Portrait composition.
85mm lens look.

Lighting:
Soft diffused studio lighting.
Bright but natural exposure.
No dramatic shadows.
No glamour lighting.

Style:
High-end dermatology campaign realism.
Studio-quality natural photography.
No fashion editorial look.
No influencer styling.

VARIATION:
- Setting: [your scene]
- Action: [what she's doing]
- Expression: [mood]
- Camera angle: [if different]
```

---

*Update this file as you find what works.*
