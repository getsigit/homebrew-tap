# siGit Code — Homebrew Tap

[siGit Code](https://github.com/getsigit/sigit) is an AI coding agent that runs a local LLM on your machine.

## Install

```bash
brew install getsigit/sigit/sigit
```

Pre-built binaries are downloaded — no Rust toolchain needed.

## Usage

```bash
sigit        # opens the interactive chat TUI
```

For Zed, add to `~/.config/zed/settings.json`:

```json
{
  "agent_servers": {
    "siGit Code": {
      "type": "custom",
      "command": "sigit"
    }
  }
}
```

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
| pip | `pip install sigit` |
| npm | `npm install -g @smbcloud/sigit` |
| Cargo | `cargo install sigit` |

## Requirements

- macOS 14 or later (Apple Silicon or Intel)
- ~2 GB free disk for the default model (downloaded on first run)

## License

Apache-2.0

## Copyright

2026 smbCloud (Splitfire AB).