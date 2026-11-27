cask "assetboard" do
  version "2026.11.27"
  sha256 "ced67841c8a47bb53452b328a8148b78cc4be4654788a276670fd7fac7d37699"

  url "https://assetboard.app/downloads/Assetboard-macOS-arm64-#{version}.dmg"
  name "Assetboard"
  desc "Local-first board for domains, servers, AI plan quotas, and subscriptions"
  homepage "https://assetboard.app/"

  livecheck do
    url "https://assetboard.app/downloads/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Assetboard.app"
  binary "#{appdir}/Assetboard.app/Contents/MacOS/assetboard-cli"

  zap trash: [
    "~/Library/Application Support/Assetboard",
    "~/Library/Caches/studio.assetboard.local",
    "~/Library/HTTPStorages/studio.assetboard.local",
    "~/Library/Preferences/studio.assetboard.local.plist",
    "~/Library/Saved Application State/studio.assetboard.local.savedState",
  ]
end
