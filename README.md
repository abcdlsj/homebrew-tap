# homebrew-tap

Personal Homebrew tap for `abcdlsj`'s apps (casks).

## Usage

```sh
brew tap abcdlsj/tap
brew trust abcdlsj/tap  # Homebrew refuses to load casks from an untrusted third-party tap
brew install --cask kip  # or any other cask under Casks/
brew install --cask hark
brew install --cask eave
brew upgrade --cask      # upgrade
```

## Layout

```
Casks/
  kip.rb      # https://github.com/abcdlsj/kip
  hark.rb     # https://github.com/abcdlsj/hark
  eave.rb     # https://github.com/abcdlsj/eave
```

A single tap holds any number of casks: add `Casks/<name>.rb` for a new app, no extra
repository needed.

## Where the casks come from

All three release workflows publish `v*` tags and, for every release, attach a generated cask
next to the dmgs: [abcdlsj/kip](https://github.com/abcdlsj/kip) computes the sha256 of both
architecture dmgs for `kip.rb`, [abcdlsj/hark](https://github.com/abcdlsj/hark) and
[abcdlsj/eave](https://github.com/abcdlsj/eave) pin their universal dmgs for `hark.rb` and
`eave.rb`. Copy that file to `Casks/<name>.rb` after a release instead of transcribing
checksums by hand.

## Signing

The dmgs are currently unsigned and not notarized. Homebrew downloads do not carry the
`com.apple.quarantine` attribute, so `brew install` yields an app that launches normally;
a dmg downloaded through a browser is blocked by Gatekeeper instead.
