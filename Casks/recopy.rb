cask "recopy" do
  arch arm: "aarch64", intel: "x64"

  version "1.5.1"
  sha256 arm:   "5a46b8717e7c11c9221878e356554fa76e0eb6297510401f31894ca0be4574de",
         intel: "bdb4facf830cab56cf172f98c2d321edd65af8b3bd50ff15d1154096284ed399"

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
