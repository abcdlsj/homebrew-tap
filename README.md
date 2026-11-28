# homebrew-tap

Personal Homebrew tap for `abcdlsj`'s apps: GUI apps as **casks**, single-binary
command line tools as **formulae**.

## Usage

```sh
brew tap abcdlsj/tap
brew trust abcdlsj/tap            # Homebrew refuses to load casks from an untrusted third-party tap

brew install --cask kip           # GUI app  -> Casks/<name>.rb
brew install drun                 # CLI tool  -> Formula/<name>.rb

brew upgrade                      # formulae
brew upgrade --cask               # casks
```

## What's in the tap

<!-- table:start -->
| Name | Kind | Version | Description |
|---|---|---|---|
| `cupola` | formula | 1.8.0 | Self-hosted Linux fleet monitoring with a PWA and AI-agent visibility |
| `drun` | formula | 0.5.0 | Refresh a Docker container with the latest image, keeping its runtime config |
| `ember` | formula | 0.1.0 | Terminal-first Emby client with mpv playback and remote sync |
| `weft` | formula | 0.7.4 | Single-binary ingress that fronts your local services behind one port |
| `eave` | cask | 0.3.0 | Native menu bar manager with Notch integration |
| `gauge` | cask | 0.9.2 | Menu bar dashboard for Gemini and Google Cloud quota and spend |
| `gaze` | cask | 0.2.6 | Fast screenshot, scrolling capture and annotation for macOS and Windows |
| `hark` | cask | 0.2.1 | Local-first API workbench for humans and agents |
| `kip` | cask | 0.2.18 | Quiet, cross-platform desktop coding agent built with Electrobun and Pi |
| `sumi` | cask | 6.0.8 | Self-hosted team chat where AI agents work as teammates |
| `warren` | cask | 0.45.0 | Workbench that stays running on your machine, reachable from any client |
<!-- table:end -->

## Layout

```
Casks/      GUI apps (.app / .dmg / .zip), installed into /Applications
Formula/    command line tools, installed into the Homebrew prefix and linked onto PATH
scripts/    readme-table.sh regenerates the table above from the .rb files
```

A single tap holds any number of casks and formulae: add `Casks/<name>.rb` or
`Formula/<name>.rb` for a new app, no extra repository needed.

## Where the files come from

Release workflows publish `v*` tags and, for every release, attach a generated cask next to
the dmgs where the project has one: [abcdlsj/kip](https://github.com/abcdlsj/kip) computes
the sha256 of both architecture dmgs for `kip.rb`, and
[abcdlsj/hark](https://github.com/abcdlsj/hark) / [abcdlsj/eave](https://github.com/abcdlsj/eave) /
[abcdlsj/gaze](https://github.com/abcdlsj/gaze) pin their universal dmgs.

`gauge.rb` and `warren.rb` are written by hand because those repos do not publish a cask:
[gauge](https://github.com/abcdlsj/gauge) ships `Gauge-<version>-macos-universal.dmg`, and
[warren](https://github.com/abcdlsj/warren) ships an arm64-only `Warren-<version>.dmg`.
Update the version, sha256 and url together when either releases.

The formulae pin the darwin tarballs published by each release (checksums come from the
release's `checksums.txt`): update url, sha256 and the version baked into the url together
when a tool releases.

## Signing

The dmgs are currently unsigned and not notarized. Homebrew downloads do not carry the
`com.apple.quarantine` attribute, so `brew install` yields an app that launches normally;
a dmg downloaded through a browser is blocked by Gatekeeper instead.
