cask "browser-portal" do
  version "0.1.7"
  sha256 "260d34ec1a941c886dc4f7b52ef2ba0924912149f0a37782fb6ae0bd44fe8251"

  url "https://github.com/kunalpowar/browser-portal/releases/download/v0.1.7/Browser.Portal-v0.1.7.zip"
  name "Browser Portal"
  desc "Routes links into the right Google Chrome profile"
  homepage "https://github.com/kunalpowar/browser-portal"

  depends_on macos: ">= :ventura"

  app "Browser Portal.app"

  zap trash: [
    "~/Library/Application Support/BrowserPortal",
    "~/Library/Preferences/app.browserportal.mac.plist",
    "~/Library/Saved Application State/app.browserportal.mac.savedState",
    "~/Library/Caches/app.browserportal.mac",
    "~/Library/Logs/BrowserPortal",
  ]
end
