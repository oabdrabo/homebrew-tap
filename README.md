<div align="center">

# 🍺 oabdrabo/homebrew-tap

**Homebrew tap for [DisplayDisabler](https://github.com/oabdrabo/DisplayDisabler)** — a tiny macOS menu-bar app for total control of your Mac's displays.

[![Update cask](https://github.com/oabdrabo/homebrew-tap/actions/workflows/update-cask.yml/badge.svg)](https://github.com/oabdrabo/homebrew-tap/actions/workflows/update-cask.yml)
[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/oabdrabo/DisplayDisabler/blob/main/LICENSE)

</div>

---

## Install

```sh
brew install --cask oabdrabo/tap/displaydisabler
```

That's it — no separate `brew tap` step needed; the `oabdrabo/tap/…` shorthand taps and installs in one go. The cask downloads the latest signed release, installs `DisplayDisabler.app` to `/Applications`, and strips the Gatekeeper quarantine flag so it opens cleanly.

## Update

```sh
brew upgrade --cask displaydisabler
```

## Uninstall

```sh
brew uninstall --cask displaydisabler      # quits the app and removes it
brew untap oabdrabo/tap                     # optional: remove the tap
```

`brew uninstall --cask --zap displaydisabler` additionally clears the app's preferences and saved state.

## What's in here

| Path | Purpose |
|---|---|
| [`Casks/displaydisabler.rb`](Casks/displaydisabler.rb) | The cask definition — version, checksum, install / uninstall / zap logic. |
| [`.github/workflows/update-cask.yml`](.github/workflows/update-cask.yml) | CI that auto-bumps the cask's version + `sha256` whenever a new DisplayDisabler release is published. |

## Automation

The cask keeps itself in sync with upstream releases — a scheduled GitHub Actions workflow checks for a newer [DisplayDisabler release](https://github.com/oabdrabo/DisplayDisabler/releases), recomputes the artifact checksum, and commits the bump. No manual editing required.

## About DisplayDisabler

Disable & enable screens · Force HiDPI · brightness with EDR boost · color warmth · window transparency, blur, keep-on-top & picture-in-picture · keep-awake — a free, lightweight alternative to the big commercial display utilities. See the [main repository](https://github.com/oabdrabo/DisplayDisabler) for full documentation and screenshots.

## License

MIT — see the [main repository](https://github.com/oabdrabo/DisplayDisabler/blob/main/LICENSE).
