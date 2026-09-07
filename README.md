# Representations for Generation

Source for the survey preprint **Representations for Generation: A Survey of the Convergence of Visual Representation Learning and Generative Modeling**.

The manuscript is a curated, mechanism-first survey of how learned representations enter modern generative systems. It covers representation alignment, aligned tokenizers, representation autoencoders, jointly learned latents, pixel/native-space alternatives, unified multimodal systems, and concise language and molecular case studies. The literature cutoff is 7 September 2026.

## Build

The source uses the official NeurIPS 2026 style in preprint mode.

```bash
make check
make
make arxiv
```

Outputs:

- `paper.pdf`: compiled manuscript
- `dist/representation-generation-survey-arxiv.tar.gz`: upload-ready source bundle

A TeX Live installation with `latexmk` is required. The manuscript deliberately retains the visual essay structure of the companion post: all 18 author-created Excalidraw teaching diagrams are included alongside two new overview figures.

## Figures

- `figures/excalidraw-originals/` contains the diagrams used in the original article.
- `figures/editable/` contains native Excalidraw source scenes for the new taxonomy and gradient-routing figures. Open them directly at <https://excalidraw.com/>.
- `figures/README.md` documents the visual grammar and detailed storyboards for the next latent-contract, recurrence, and cross-domain diagrams.

The main paper captions distinguish fully original diagrams from teaching composites that contain small adapted source-paper panels or scientific renderings.

## Scope and evidence

This is a curated survey rather than a systematic review. Conference papers, preprints, product announcements, and social-media commentary are labeled by evidence type. Headline metrics are not treated as directly comparable when compute, guidance, sampling, or evaluation protocols differ.

## Website companion

The shorter living article is available at <https://kdidi.netlify.app/blog/ml/2025-12-31-r4g/>.

## License

The manuscript text, bibliography, and original diagram layers are licensed under [CC BY 4.0](LICENSE). Embedded third-party panels or renderings in explicitly credited composites remain under their source owners' terms and are excluded from that license; see [NOTICE.md](NOTICE.md). The bundled `neurips_2026.sty` and `checklist.tex` originate from the NeurIPS 2026 author kit and remain subject to their upstream terms.
