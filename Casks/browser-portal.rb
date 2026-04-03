cask "browser-portal" do
  version "0.1.5"
  sha256 "0fa34c63171464d7d83e3271070f8987dae44fb9201592cc8b802925ad703c85"

  url "https://github.com/kunalpowar/browser-portal/releases/download/v0.1.5/Browser.Portal-v0.1.5.zip"
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
