cask "recopy" do
  arch arm: "aarch64", intel: "x64"

  version "1.8.0"
  sha256 arm:   "19802707ca24aa11ad4957198a33f216caa618b8a2752c1c738fa3a440162b48",
         intel: "9a729f4acc03662bd8794ee11c3286bf8812dd42506cb99b8fcb9bfdc383dc69"

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
