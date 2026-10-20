cask "recopy" do
  arch arm: "aarch64", intel: "x64"

  version "1.11.0"
  sha256 arm:   "81fd5a6624001b391bc1b6421c3f87b93da0d016db7b6969fdfe1cfb8481a0e4",
         intel: "fd8797f9796bb0f709da39f33667ecc53371fb276c19207ad7238bf1b06d606f"

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
