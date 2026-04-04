cask "browser-portal" do
  version "0.1.6"
  sha256 "5181c874159d3c6da02cd7b7f40d820604c262c07ea37fe81b849228fe1cb174"

  url "https://github.com/kunalpowar/browser-portal/releases/download/v0.1.6/Browser.Portal-v0.1.6.zip"
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
