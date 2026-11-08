cask "frame-player" do
  version "1.44.3"
  sha256 "d555dd3e6ede5ccd8c39712268a504cace3c5819d02095fcc2cf5d92d4ad763d"

  url "https://github.com/risenxxx/frame-player/releases/download/v#{version}/FramePlayer_#{version}_aarch64.dmg"
  name "Frame Player"
  desc "Video player built on libmpv: files, links and live torrent streaming"
  homepage "https://github.com/risenxxx/frame-player"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :big_sur

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
