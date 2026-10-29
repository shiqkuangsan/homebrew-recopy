cask "recopy" do
  arch arm: "aarch64", intel: "x64"

  version "1.12.2"
  sha256 arm:   "2efbcad156ad5533ff9b09958c09e269f9ee88069d1b4cf52f8c45d7160d7d7f",
         intel: "7e5585178a0a8e5395c1266763d54cc3f130539ab05098d74b97a8244ef1defe"

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
