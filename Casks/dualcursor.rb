cask "dualcursor" do
  version "1.0"
  sha256 "f16d86094391de7f2f3c7c67740ccb7ba6d99b8a79eac84e658222e0eea41507"

  url "https://github.com/vepkenez/DualCursor/releases/download/v#{version}/DualCursor-#{version}.dmg"
  name "DualCursor"
  desc "Gives each pointing device its own remembered cursor position"
  homepage "https://github.com/vepkenez/DualCursor"

  depends_on macos: :ventura

  app "DualCursor.app"

  uninstall quit: "local.dualcursor"

  caveats <<~EOS
    DualCursor is not notarized, so macOS blocks it the first time you open it.
    Open it once, click "Done", then go to System Settings → Privacy & Security
    and click "Open Anyway".

    It then needs two permissions under Privacy & Security:
      • Input Monitoring (to tell which device you moved)
      • Accessibility (to move the cursor)

    Guide: https://github.com/vepkenez/DualCursor/blob/main/INSTALL.md
  EOS
end
