cask "slido-switcher" do
  version "1.5.0,6315,220321124807"
  sha256 "e5c0170e368bc437bbbaf8b58589e8f1cb380a60e608dff66f1172edaa81b803"

  url "https://download.slido.com/switcher-mac/#{version.csv.third}_#{version.csv.first}.#{version.csv.second}/Slido%20Switcher%20#{version.csv.first}.#{version.csv.second}.dmg",
      verified: "download.slido.com/switcher-mac/"
  name "Slido Switcher"
  desc "Switch between Slido and your presentation using your smartphone"
  homepage "https://www.sli.do/switcher"

  depends_on macos: ">= :mojave"

  app "Slido Switcher.app"

  zap trash: [
    "~/Library/Caches/com.slido.switcher",
    "~/Library/Cookies/com.slido.switcher.binarycookies",
    "~/Library/Logs/Slido/Switcher",
    "~/Library/Preferences/com.slido.switcher.plist",
    "~/Library/Saved Application State/com.slido.switcher.savedState",
    "~/Library/WebKit/com.slido.switcher",
  ]
end
