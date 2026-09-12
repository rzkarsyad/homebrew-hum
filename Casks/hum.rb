cask "hum" do
  version "1.3.1"
  sha256 "2bb207e880701b13af6306a91bbf2e0555dbfb34c1dab79b3616ac3ce641063e"

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
