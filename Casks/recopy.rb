cask "recopy" do
  arch arm: "aarch64", intel: "x64"

  version "1.5.0"
  sha256 arm:   "08145e21b8e75c630f8ddacda1701cf37bd524f87a664e976ef92f7955a37f04",
         intel: "951dd5e8b2a4d6f8da9baddd155507349eaa433e73ab1e020aaaf98d90c35b43"

  url "https://github.com/shiqkuangsan/Recopy/releases/download/v#{version}/Recopy_#{version}_#{arch}.dmg",
      verified: "github.com/shiqkuangsan/Recopy/"
  name "Recopy"
  desc "Clipboard history manager"
  homepage "https://recopy.pages.dev"

  depends_on macos: ">= :ventura"

  app "Recopy.app"

  zap trash: [
    "~/Library/Application Support/com.recopy.app",
    "~/Library/Caches/com.recopy.app",
    "~/Library/Preferences/com.recopy.app.plist",
    "~/Library/Saved Application State/com.recopy.app.savedState",
  ]
end
