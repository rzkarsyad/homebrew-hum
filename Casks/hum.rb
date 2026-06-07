cask "hum" do
  version "1.2.0"
  sha256 "fb28c979035f82ea96b487c42f3b44da14390bd085812c4d4d04f0be8db54e6d"

  url "https://github.com/rzkarsyad/Hum/releases/download/v#{version}/Hum-#{version}.dmg"
  name "Hum"
  desc "Floating karaoke lyrics for Apple Music, Spotify, and browsers"
  homepage "https://github.com/rzkarsyad/Hum"

  depends_on macos: ">= :sequoia"

  app "Hum.app"

  zap trash: [
    "~/Library/Preferences/com.rzkarsyad.Hum.plist",
  ]

  caveats <<~EOS
    Hum is not notarized by Apple. If macOS blocks it on first launch:

      brew install --cask --no-quarantine rzkarsyad/hum/hum

    Or go to: System Settings → Privacy & Security → Open Anyway
  EOS
end
