# homebrew-tap

Personal Homebrew tap for `abcdlsj`'s apps (casks).

## Usage

```sh
brew tap abcdlsj/tap
brew trust abcdlsj/tap  # Homebrew refuses to load casks from an untrusted third-party tap
brew install --cask kip  # or any other cask under Casks/
brew install --cask hark
brew install --cask eave
brew install --cask gaze
brew install --cask gauge
brew install --cask warren
brew upgrade --cask      # upgrade
```

## Layout

```
Casks/
  kip.rb      # https://github.com/abcdlsj/kip
  hark.rb     # https://github.com/abcdlsj/hark
  eave.rb     # https://github.com/abcdlsj/eave
  gaze.rb     # https://github.com/abcdlsj/gaze
  gauge.rb    # https://github.com/abcdlsj/gauge
  warren.rb   # https://github.com/abcdlsj/warren (arm64 dmg only)
```

A single tap holds any number of casks: add `Casks/<name>.rb` for a new app, no extra
repository needed.

## Where the casks come from

Release workflows publish `v*` tags and, for every release, attach a generated cask next to
the dmgs where the project has one: [abcdlsj/kip](https://github.com/abcdlsj/kip) computes
the sha256 of both architecture dmgs for `kip.rb`, and
[abcdlsj/hark](https://github.com/abcdlsj/hark) / [abcdlsj/eave](https://github.com/abcdlsj/eave) /
[abcdlsj/gaze](https://github.com/abcdlsj/gaze) pin their universal dmgs. Copy that file to
`Casks/<name>.rb` after a release instead of transcribing checksums by hand.

`gauge.rb` and `warren.rb` are written by hand because those repos do not publish a cask:
[gauge](https://github.com/abcdlsj/gauge) ships `Gauge-<version>-macos-universal.dmg`, and
[warren](https://github.com/abcdlsj/warren) ships an arm64-only `Warren-<version>.dmg`.
Update the version, sha256 and url together when either releases.

## Signing

The dmgs are currently unsigned and not notarized. Homebrew downloads do not carry the
`com.apple.quarantine` attribute, so `brew install` yields an app that launches normally;
a dmg downloaded through a browser is blocked by Gatekeeper instead.
