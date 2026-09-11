cask "hum" do
  version "1.3.0"
  sha256 "c0d540c2c6a2778c636cdb78250c66d73224c9eb3c39c29e367f51f192bcf7f6"

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
