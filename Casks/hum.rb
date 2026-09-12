cask "hum" do
  version "1.3.3"
  sha256 "93c08ea1b8da051715ac47eacac9b85185352a880f6d7a48b821a64194f1303b"

  url "https://github.com/rzkarsyad/Hum/releases/download/v#{version}/Hum-#{version}.dmg"
  name "Hum"
  desc "Floating karaoke lyrics for Apple Music, Spotify, and browsers"
  homepage "https://github.com/rzkarsyad/Hum"

  depends_on macos: :sequoia

  app "Hum.app"

  zap trash: [
    "~/Library/Application Support/Hum",
    "~/Library/Preferences/com.rzkarsyad.Hum.plist",
  ]
end
