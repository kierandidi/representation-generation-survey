# Figure sources and Excalidraw plan

The paper keeps the hand-drawn visual language of the companion article. The 18 PNGs in `excalidraw-originals/` are the author's original teaching diagrams from the post. The two publication overview figures are distributed as SVG/PDF renderings and as native, editable Excalidraw scenes in `editable/`.

## Editing

1. Open <https://excalidraw.com/>.
2. Choose **Open** and select either `editable/taxonomy_2026.excalidraw` or `editable/gradient_paths_2026.excalidraw`.
3. Preserve the semantic color system when editing: blue/teal for representation or encoder paths, orange/coral for prior or generative paths, green for decoders, and ochre for external or target representations.
4. Export SVG for the website and PDF for LaTeX. Keep text as text, use a transparent background for individual architecture diagrams, and use a 16:9 or approximately 3:2 canvas for full-page overview figures.

The editable scenes are intentionally made from native rectangles, text, and arrows. They are not flattened SVG imports, so every label and card can be moved or rewritten in Excalidraw.

## How the next diagrams should look

### 1. The latent-interface contract

Use one large latent node in the center. Put **encoder / representation** on the left, **learned prior** above-right, and **decoder** below-right. Draw three thick colored arrows into the latent node:

- blue: information selected by the encoder;
- orange: pressure from prior modelability and rate;
- green: pressure from reconstruction and robustness.

Around the outside, place the six diagnostics as small callouts: fidelity, semantics, rate, modelability, geometry/spectrum, and decoder robustness. Add three red failure tags exactly where they occur: information collapse at the encoder, off-manifold trajectories at the prior, and error amplification at the decoder. This should be the conceptual centerpiece after the mathematical setup.

### 2. Self-conditioning vs. recycling vs. recurrence

Use four horizontal lanes with the same base glyph: a shared block applied repeatedly. Vary only the state and the iteration axis:

- diffusion self-conditioning: cached previous clean prediction, iterated over noise time;
- AlphaFold/ESMFold recycling: structure plus single/pair state, iterated over refinement passes;
- looped Transformer: hidden state, iterated over depth with finite BPTT;
- DEQ: equilibrium hidden state, iterated by a root solver with implicit differentiation.

Put the mathematical update under each lane and a small badge for its backward pass: `stop-gradient`, `BPTT`, `truncated BPTT`, or `implicit`. Do not place all four methods on a vague circular-arrow icon; the purpose is to show why the feedback motif is shared while the semantics are not.

### 3. Representation use across domains

Use columns for images, language, molecules, and proteins, and rows for **pretrained feature**, **aggregation**, **alignment/generation**, and **decoder or prediction head**. Keep the same arrow grammar in every column. This makes transfer and non-transfer visible: image and language systems often tolerate global pooling, while molecular/protein systems must preserve equivariance, chirality, and local geometry.

## Rights

Original diagram layers are CC BY 4.0. A few teaching composites contain small adapted panels, result crops, or scientific renderings from cited sources. Those embedded third-party elements remain under their source owners' terms and are excluded from the repository's CC BY license; captions identify the affected composites.
