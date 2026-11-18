# homebrew-tap

Personal Homebrew tap for `abcdlsj`'s apps (casks).

## Usage

```sh
brew tap abcdlsj/tap
brew install --cask kip     # or any other cask under Casks/
brew upgrade --cask         # upgrade
```

## Layout

```
Casks/
  kip.rb      # https://github.com/abcdlsj/kip
```

A single tap holds any number of casks: add `Casks/<name>.rb` for a new app, no extra
repository needed.

## Where the kip cask comes from

The release workflow in [abcdlsj/kip](https://github.com/abcdlsj/kip) publishes `v*` tags and,
for every release, computes the sha256 of both architecture dmgs and attaches a generated
`kip.rb` to the release assets. Copy that file to `Casks/kip.rb` after a release instead of
transcribing checksums by hand.

## Signing

Kip's dmgs are currently unsigned and not notarized. Homebrew downloads do not carry the
`com.apple.quarantine` attribute, so `brew install` yields an app that launches normally;
a dmg downloaded through a browser is blocked by Gatekeeper instead.
