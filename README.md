# siGit Code

[siGit Code](https://github.com/setoelkahfi/sigit) is an AI coding agent that runs a local LLM on your machine. No cloud, no API key.

## Install

```bash
brew tap setoelkahfi/sigit https://github.com/setoelkahfi/sigit-homebrew-tap
brew install --HEAD sigit
```

The first install builds from source, so expect a few minutes while Cargo pulls the world. Grab a coffee.

## Usage

```bash
sigit        # opens the interactive chat TUI
```

For Zed, add this to `~/.config/zed/settings.json` and it just works:

```json
{
  "agent_servers": {
    "siGit": {
      "command": "sigit",
      "args": []
    }
  }
}
```

## Upgrade

```bash
brew upgrade --fetch-HEAD sigit
```

## Uninstall

```bash
brew uninstall sigit
brew untap setoelkahfi/sigit
```

## Requirements

- macOS 14 or later
- ~2 GB free disk for the default model — downloaded on first run, not at install time

## Notes

No tagged releases yet, so `--HEAD` is required. Once versions are cut the formula will get a stable `url` and `sha256` and you won't need the flag.

## License

MIT OR Apache-2.0