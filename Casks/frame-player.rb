cask "frame-player" do
  version "1.42.0"
  sha256 "51d724914494c0a75104f840f6356b7c3ebb92596a0d03bdf02294af39161069"

  url "https://github.com/risenxxx/frame-player/releases/download/v#{version}/FramePlayer_#{version}_aarch64.dmg",
      verified: "github.com/risenxxx/frame-player/"
  name "Frame Player"
  desc "Video player built on libmpv: files, links and live torrent streaming"
  homepage "https://github.com/risenxxx/frame-player"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :big_sur"

  app "Frame Player.app"

  zap trash: [
    "~/Library/Application Support/app.frameplayer",
    "~/Library/Caches/app.frameplayer",
    "~/Library/HTTPStorages/app.frameplayer",
    "~/Library/Preferences/app.frameplayer.plist",
    "~/Library/Saved Application State/app.frameplayer.savedState",
    "~/Library/WebKit/app.frameplayer",
  ]
end
