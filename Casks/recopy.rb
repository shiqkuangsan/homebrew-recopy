cask "recopy" do
  arch arm: "aarch64", intel: "x64"

  version "1.9.0"
  sha256 arm:   "7806e2a52344761224acea33e7045247134068fa38a849a2bb744bec98f2e61b",
         intel: "ca80df1c51b68fc3136bc66a4bf247e57ee0cab650891b40015d3fb22be8a689"

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
