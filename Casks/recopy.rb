cask "recopy" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.3"
  sha256 arm:   "97ff4cbe965b8ed7eaa98fd30c88c57be5469a49b39bf728cb01dc0cda7dffdb",
         intel: "d831223db9c8d654e58e6ea1f5377916d78ef725fdc9d2ad341348b151c80f56"

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
