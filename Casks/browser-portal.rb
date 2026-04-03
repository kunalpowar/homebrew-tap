cask "browser-portal" do
  version "0.1.4"
  sha256 "09d313bddf72166a371a7dcb22aeefb61a6fc7d7d0c300da05ef0fef0c4e4af5"

  url "https://github.com/kunalpowar/browser-portal/releases/download/v0.1.4/Browser.Portal-v0.1.4.zip"
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
