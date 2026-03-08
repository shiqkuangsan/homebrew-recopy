cask "recopy" do
  arch arm: "aarch64", intel: "x64"

  version "1.2.0"
  sha256 arm:   "078f0c337d96fc1f270cd16ac8c013c9fd8fca6a2be07a5a318b680a37b800a9",
         intel: "eef39616c65f4af6da2eb07a54b73085b6404e3092cef5ce44e2bc0b8e84357e"

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
