# tedski.github.io

Hugo site for [tedski.net](https://www.tedski.net). PaperMod theme, auto-deployed to GitHub Pages via Actions on every push to main.

## First-time setup notes (for future me)

Submodule needs initializing after a fresh clone:
```bash
git submodule update --init --recursive
```

GitHub Pages settings: Settings → Pages → Source: GitHub Actions, custom domain: tedski.net.

DNS A records point to GitHub's IPs (185.199.108-111.153), CNAME www → tedski.github.io. Already set — don't touch unless migrating.

## Day to day

Local preview:
```bash
hugo server -D
```

Deploy: just push to main. Actions handles the build.

## Adding a post
```bash
hugo new blog/my-post-title.md
# write the thing
# flip draft: false when ready
git add . && git commit -m "post: my-post-title" && git push
```

## Hosting static files

Drop anything into `static/` and it's available at the root.
