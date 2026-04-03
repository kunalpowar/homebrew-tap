cask "browser-portal" do
  version "0.1.3"
  sha256 "99948ee7405e1d5591fe49e390cc74c0792f0330825886e1cb9c9b0928d2ab1d"

  url "https://github.com/kunalpowar/browser-portal/releases/download/v0.1.3/Browser.Portal-v0.1.3.zip"
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
