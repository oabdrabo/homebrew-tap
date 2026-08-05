<div align="center">

# 🍺 pyxis3-ai/homebrew-tap

**Homebrew tap for [DisplayDeck](https://github.com/pyxis3-ai/displaydeck)** - a tiny macOS menu-bar app for total control of your Mac's displays.

[![Update cask](https://github.com/pyxis3-ai/homebrew-tap/actions/workflows/update-cask.yml/badge.svg)](https://github.com/pyxis3-ai/homebrew-tap/actions/workflows/update-cask.yml)
[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)](https://github.com/pyxis3-ai/displaydeck/blob/main/LICENSE)

</div>

---

## Install

```sh
brew install --cask pyxis3-ai/tap/displaydeck
```

That's it - no separate `brew tap` step needed; the `pyxis3-ai/tap/…` shorthand taps and installs in one go. The cask downloads the latest signed release, installs `DisplayDeck.app` to `/Applications`, and strips the Gatekeeper quarantine flag so it opens cleanly.

## Update

```sh
brew upgrade --cask displaydeck
```

## Uninstall

```sh
brew uninstall --cask displaydeck      # quits the app and removes it
brew untap pyxis3-ai/tap                     # optional: remove the tap
```

`brew uninstall --cask --zap displaydeck` additionally clears the app's preferences and saved state.

## What's in here

| Path                                                                     | Purpose                                                                                                                                                                                       |
| ------------------------------------------------------------------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [`Casks/displaydeck.rb`](Casks/displaydeck.rb)                           | The cask definition - version, checksum, install / uninstall / zap logic.                                                                                                                     |
| [`.github/workflows/update-cask.yml`](.github/workflows/update-cask.yml) | Scheduled CI that auto-bumps the cask's version + `sha256` whenever a new [DisplayDeck release](https://github.com/pyxis3-ai/displaydeck/releases) is published - no manual editing required. |

## About DisplayDeck

Disable & enable screens, Force HiDPI, brightness with EDR boost, color warmth, window transparency, blur, keep-on-top & picture-in-picture, keep-awake - a free, lightweight alternative to the big commercial display utilities. See the [main repository](https://github.com/pyxis3-ai/displaydeck) for full documentation and screenshots.

## License

MIT - see the [main repository](https://github.com/pyxis3-ai/displaydeck/blob/main/LICENSE).
