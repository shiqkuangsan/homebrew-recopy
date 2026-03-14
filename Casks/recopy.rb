cask "recopy" do
  arch arm: "aarch64", intel: "x64"

  version "1.4.0"
  sha256 arm:   "40bef8e2cf55058367f8d9c2d17ec1a5e8ade119890dd34fa788c130f7023555",
         intel: "79a34c0e232a39e9912d23d4f19bb596eed0362459f58c90c5db1e24a85bb4cc"

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
