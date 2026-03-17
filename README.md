# tedski.github.io
![Deploy](https://github.com/tedski/tedski.github.io/actions/workflows/deploy.yml/badge.svg)
[![Built with Hugo](https://img.shields.io/badge/Built_with-Hugo-FF4088?logo=hugo)](https://gohugo.io)
[![Theme PaperMod](https://img.shields.io/badge/Theme-PaperMod-brightgreen)](https://github.com/adityatelange/hugo-PaperMod)
[![Hosted on GitHub Pages](https://img.shields.io/badge/Hosted_on-GitHub_Pages-222222?logo=github)](https://pages.github.com)
[![PDF via Pandoc](https://img.shields.io/badge/PDF-Pandoc_%2B_XeLaTeX-3D6117?logo=latex)](https://pandoc.org)

Source for [tedski.net](https://www.tedski.net) - a Hugo site with a PaperMod theme, auto-deployed to GitHub Pages on push to main.

## How it works

The build pipeline has three jobs:

**generate-pdf** runs in the [`pandoc/extra`](https://hub.docker.com/r/pandoc/extra) container, which ships with a full TeX Live installation. It registers the bundled OpenType fonts with fontconfig, then uses Pandoc with a custom XeLaTeX template ([`pandoc/resume-template.tex`](pandoc/resume-template.tex)) to render [`content/resume.md`](content/resume.md) into a styled PDF. A Lua filter ([`pandoc/strip-hugo-content.lua`](pandoc/strip-hugo-content.lua)) strips Hugo-specific content (the download link, name heading, and contact line) before rendering; those are handled by the LaTeX template directly via frontmatter variables defined in [`pandoc/defaults.yml`](pandoc/defaults.yml). The PDF is passed to the next job as a GitHub Actions artifact.

**build** checks out the repo, downloads the PDF artifact into `static/`, and runs `hugo --minify`. The PDF ends up at `/Resume-TedStrzalkowski.pdf` in the built site automatically.

**deploy** pushes the built site to GitHub Pages. Gated to main branch only.  Feature branches run generate-pdf and build for validation but skip deploy.

The resume is a single source of truth: one markdown file serves both the Hugo page and the PDF. Hugo-specific shortcodes are filtered out by the Lua filter at PDF build time.

---

## Runbook

**Fresh clone:**
```bash
git submodule update --init --recursive
```

**Local preview:**
```bash
hugo server -D
```

**Deploy:** push to main. Actions handles the rest.

**Add a blog post:**
```bash
hugo new blog/my-post-title.md
# write the thing, flip draft: false when ready
git add . && git commit -m "post: my-post-title" && git push
```

**GitHub Pages settings:** Settings → Pages → Source: GitHub Actions, custom domain: tedski.net.

**DNS:** A records point to GitHub's IPs (185.199.108-111.153), CNAME www → tedski.github.io. Already configured; don't touch unless migrating.

**Static files:** anything in `static/` is available at the root of the built site.
