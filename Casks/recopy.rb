cask "recopy" do
  arch arm: "aarch64", intel: "x64"

  version "1.3.1"
  sha256 arm:   "deae6610515242766afbe0a570bf6d01e06b2a44a17839b6d11234600ad7c8ac",
         intel: "6fb1d2e570442a527e8138a5e037aec92e5c7ed15a19fb267edf0e5d5bc2307b"

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
