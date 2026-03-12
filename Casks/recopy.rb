cask "recopy" do
  arch arm: "aarch64", intel: "x64"

  version "1.3.2"
  sha256 arm:   "3262b175cc35181f9b57fa4f4e970206687d32ec19842ec9d3e36f9251337e40",
         intel: "125e6febc902e120c35c5b5637827e98617639291f06ec9c0a8de94b259164cb"

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
