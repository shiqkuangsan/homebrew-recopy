cask "recopy" do
  arch arm: "aarch64", intel: "x64"

  version "1.3.0"
  sha256 arm:   "5ea7d53a7ca16bde3fd9fe682c0c28b243b96b72d622c0082a497d683e6ccef9",
         intel: "69965ef828630d2160d2a76e5070f612a2279116982f43e6797087cf11aac452"

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
