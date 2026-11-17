# vepkenez/homebrew-tap

Homebrew casks for my apps.

```bash
brew install --cask vepkenez/tap/dualcursor
```

| Cask | App |
| --- | --- |
| `dualcursor` | [DualCursor](https://github.com/vepkenez/DualCursor): each pointing device remembers its own cursor position |

## Releasing a new DualCursor version

1. Raise the version in DualCursor's `Info.plist`, run `./package.sh`, and attach
   `dist/DualCursor-<version>.dmg` to a GitHub release tagged `v<version>`.
2. In `Casks/dualcursor.rb`, set `version` and `sha256` (`shasum -a 256 dist/DualCursor-<version>.dmg`).
3. Commit and push this repo. People get it with `brew upgrade --cask dualcursor`.
