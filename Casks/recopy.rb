cask "recopy" do
  arch arm: "aarch64", intel: "x64"

  version "1.6.0"
  sha256 arm:   "92ee1bc1012d7aa4a50072cbd0d3e1194239a21de7bb364e114fd051c8ba36aa",
         intel: "d65006cb2e5d43a92684e5ca7f8ca21be6d983dab2e3905313c75ac201fa9fae"

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
