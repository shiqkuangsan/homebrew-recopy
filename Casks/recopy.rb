cask "recopy" do
  arch arm: "aarch64", intel: "x64"

  version "1.10.0"
  sha256 arm:   "8f4540720cd89ebf306be9211387bede9478a51f595aaed281fc323ae07338e9",
         intel: "d62de3e4e1211698db14cc251d12315c5c63413437cc7203fa4cf373571101d2"

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
