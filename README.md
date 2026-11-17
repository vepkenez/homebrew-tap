# vepkenez/homebrew-tap

Homebrew casks for my apps.

Homebrew only loads casks from taps you've chosen to trust, so trust this tap once, then install:

```bash
brew tap vepkenez/tap
brew trust --tap vepkenez/tap
brew install --cask dualcursor
```

| Cask | App |
| --- | --- |
| `dualcursor` | [DualCursor](https://github.com/vepkenez/DualCursor): each pointing device remembers its own cursor position |

## Releasing a new DualCursor version

1. Raise the version in DualCursor's `Info.plist`, run `./package.sh`, and attach
   `dist/DualCursor-<version>.dmg` to a GitHub release tagged `v<version>`.
2. In `Casks/dualcursor.rb`, set `version` and `sha256` (`shasum -a 256 dist/DualCursor-<version>.dmg`).
3. Commit and push this repo. People get it with `brew upgrade --cask dualcursor`.

Never replace the DMG on an existing release (for example `gh release upload --clobber`).
Every rebuild changes its checksum, so the cask's `sha256` stops matching and
`brew install` fails until the cask is updated. Ship a new version instead.

## License

MIT. See [LICENSE](LICENSE).
