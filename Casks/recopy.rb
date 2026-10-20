cask "recopy" do
  arch arm: "aarch64", intel: "x64"

  version "1.11.1"
  sha256 arm:   "b0e06f403f4d93dfdd0b552079af58ceff9f1c6cde76c1c6106a230747706631",
         intel: "b1bcf2ad4d67a7f7e2ada6b26763c4d4cd69609a1438c8afb702a8c3502a66d7"

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
