cask "recopy" do
  arch arm: "aarch64", intel: "x64"

  version "1.12.0"
  sha256 arm:   "9b678daa2e0bae47b89f39ae11f346889be2206cea489d3d8bfd08e6612bbb41",
         intel: "e88929819e75d1997456ab3a9db094605a654e8c0616cabd7e0739d6ebe96e3f"

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
