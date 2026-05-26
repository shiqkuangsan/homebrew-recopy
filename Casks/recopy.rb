cask "recopy" do
  arch arm: "aarch64", intel: "x64"

  version "1.7.0"
  sha256 arm:   "4f0493ac6c55958743135be5f1984312a463e285717f98a15bec5182e154ab47",
         intel: "239a9d3d34b53e28a088a22eb8002388283b5f07381d485f0fd7a005eb3b1ce0"

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
