cask "recopy" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.2"
  sha256 arm:   "fdabe69e508e797ed57b2dbcfc12e2f3bd9804fc7726e41ea04867e4f560964e",
         intel: "7043d07d6710a913d83614532a3eb95b756baa237a1bf44d07f6ac74a1c32fb3"

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
