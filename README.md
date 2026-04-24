# siGit Code — Homebrew Tap

[siGit Code](https://github.com/getsigit/sigit) is a coding agent for [smbCloud](https://smbcloud.xyz/) that runs entirely on your machine. No API keys. No cloud round-trips. The model lives in your local HuggingFace cache.

siGit has two modes:

- ACP mode, where Zed or another ACP-compatible editor starts it over stdio
- an interactive terminal chat when you run `sigit` yourself

Current platform support through this tap:

- macOS: ACP mode and interactive terminal mode

## Install

```bash
brew install getsigit/sigit/sigit
```

Homebrew downloads a pre-built macOS binary, so you do not need a Rust toolchain.

## First run

The first time siGit starts, it downloads a GGUF model (~1–2 GB) from HuggingFace. After that, startup is much faster because the model is already on disk.

On macOS, siGit shares its model cache with the siGit desktop app through an App Group container. If the desktop app already downloaded the model, the CLI will reuse it.

## Zed setup

Add to `~/.config/zed/settings.json`:

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

Use the full absolute path. If you are on Intel macOS, that path may be `/usr/local/bin/sigit` instead.

## Terminal mode

If you run `sigit` directly in a terminal, it opens an interactive chat UI. It uses the same model and system prompt as the editor integration, so it is useful for quick questions when you do not want to open Zed first.

## Upgrade

```bash
brew upgrade sigit
```

## Uninstall

```bash
brew uninstall sigit
brew untap getsigit/sigit
```

## Other install methods

| Method | Command |
|--------|---------|
| npm | `npm install -g @smbcloud/sigit` |
| Cargo | `cargo install sigit` |

## Requirements

- macOS 14 or later
- Apple Silicon or Intel
- ~2 GB free disk for the default model download

## License

Apache-2.0

## Copyright

2026 smbCloud (Splitfire AB).