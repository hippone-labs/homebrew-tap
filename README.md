# hippone-labs/homebrew-tap

Official Homebrew Cask tap for **[Assetboard](https://github.com/hippone-labs/assetboard)** — a free, open-source (GPL-3.0), local-first macOS command board for domains, servers, AI plan quotas, and subscriptions.

## Install

```sh
brew install --cask hippone-labs/tap/assetboard
```

This installs `/Applications/Assetboard.app` (macOS 15+, Apple Silicon) and links `assetboard-cli` into your `PATH`.

## Try Demo Mode

Explore with fictional data (touches no files, no network):

```sh
open /Applications/Assetboard.app --args --demo
```

## Connect Claude Code via MCP

```sh
claude mcp add assetboard -- assetboard-cli mcp
```

## Upgrade & Uninstall

Assetboard updates itself inside the app, or you can upgrade via Homebrew:

```sh
brew upgrade --cask hippone-labs/tap/assetboard
```

Uninstall (add `--zap` to also remove local data and preferences):

```sh
brew uninstall --cask assetboard
```
