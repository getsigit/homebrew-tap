# siGit Code Homebrew tap

[siGit Code](https://github.com/getsigit/sigit) is a local coding agent from [smbCloud](https://smbcloud.xyz/). It runs on your machine. No API keys, no cloud round-trips.

siGit Code has two modes:

- **ACP mode:** Zed or another ACP-compatible editor starts it over stdio
- **Terminal mode:** run `sigit` yourself for the interactive chat UI

This tap currently ships the macOS build.

## Install

```sh
brew tap getsigit/tap
brew install sigit
```

Homebrew downloads a prebuilt macOS binary, so you do not need a Rust toolchain.

## First run

The first time you start siGit Code, it downloads a GGUF model from Hugging Face. Expect roughly 1 to 2 GB. After that, startup is much faster because the model is already on disk.

On macOS, siGit Code shares its model cache with the desktop app through an App Group container. If the desktop app already downloaded the model, the CLI reuses it.

## Zed setup

Add this to `~/.config/zed/settings.json`:

```json
{
  "agent_servers": {
    "siGit Code": {
      "type": "custom",
      "command": "/opt/homebrew/bin/sigit"
    }
  }
}
```

Use the full absolute path. On Intel Macs, that path may be `/usr/local/bin/sigit` instead.

## Terminal mode

Run `sigit` in a terminal and it opens the interactive chat UI. It uses the same model and system prompt as the editor integration, so it is handy when you want a quick answer without opening Zed first.

## Upgrade

```sh
brew upgrade sigit
```

## Uninstall

```sh
brew uninstall sigit
brew untap getsigit/tap
```

## Other install methods

| Method | Command |
|--------|---------|
| npm | `npm install -g @smbcloud/sigit` |
| Cargo | `cargo install sigit` |
| pip | `pip install sigit-code` |

## Requirements

- macOS 14 or later
- Apple Silicon or Intel
- around 2 GB of free disk space for the default model download

## License

Apache-2.0

## Copyright

2026 smbCloud (Splitfire AB).
