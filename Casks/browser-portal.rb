cask "browser-portal" do
  version "0.1.1"
  sha256 "92e04acc89fca580cbb18f97f0fa4e18d1d16b3076365fbaea609d678342370f"

  url "https://github.com/kunalpowar/browser-portal/releases/download/v0.1.1/Browser.Portal-v0.1.1.zip"
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
