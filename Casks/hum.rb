cask "hum" do
  version "1.0.0"
  sha256 "cc342c69eca6c6eee83065d0e86a0bae2633f7de820cc69a068da13c0dbb512e"

  url "https://github.com/rzkarsyad/Hum/releases/download/v#{version}/Hum-#{version}.dmg"
  name "Hum"
  desc "Floating karaoke lyrics for Apple Music"
  homepage "https://github.com/rzkarsyad/Hum"

  depends_on macos: ">= :sequoia"

  app "Hum.app"

  zap trash: [
    "~/Library/Preferences/com.rzkarsyad.Hum.plist",
  ]
end
