cask "recopy" do
  arch arm: "aarch64", intel: "x64"

  version "1.1.0"
  sha256 arm:   "286f9c9b90c46b6074aac465a4dff6770dd88d30b0d48586179de702ed9bb416",
         intel: "7147b58d68b80f8b68ec36a0b4eb062772d0a92fb79bb8b0fa82bf222500cc93"

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
