cask "recopy" do
  arch arm: "aarch64", intel: "x64"

  version "1.12.1"
  sha256 arm:   "1c4362bd852a6e8658113179d7130afdaf7d1dc5f227c1405cba8b77af4ed04f",
         intel: "26d0024bdfd411d023160e99c9633cb3e433a5abe64a224a70b18ae231addf3c"

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
