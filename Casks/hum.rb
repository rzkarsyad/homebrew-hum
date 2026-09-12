cask "hum" do
  version "1.3.2"
  sha256 "d5468652de6023f2ee800b9b47e648c8ef1434357db477007f4336ce25ba9cd6"

  url "https://github.com/rzkarsyad/Hum/releases/download/v#{version}/Hum-#{version}.dmg"
  name "Hum"
  desc "Floating karaoke lyrics for Apple Music, Spotify, and browsers"
  homepage "https://github.com/rzkarsyad/Hum"

  depends_on macos: ">= :sequoia"

  app "Hum.app"

  zap trash: [
    "~/Library/Application Support/Hum",
    "~/Library/Preferences/com.rzkarsyad.Hum.plist",
  ]
end
