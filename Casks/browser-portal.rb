cask "browser-portal" do
  version "0.1.2"
  sha256 "607ca9f8e90e1388f02c94a495633d8f0c6e7fafb47b0e3247f298d242ae57bd"

  url "https://github.com/kunalpowar/browser-portal/releases/download/v0.1.2/Browser.Portal-v0.1.2.zip"
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
