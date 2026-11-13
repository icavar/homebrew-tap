cask "yacm" do
  version "0.9.3"
  sha256 "840ba6881c9e79562b90b34995923a6991c22a5862745448e5e7ebbdccbaee9a"

  url "https://github.com/yacm-app/yacm/releases/download/v#{version}/YACM-#{version}-macos.dmg",
      verified: "github.com/yacm-app/yacm/"
  name "YACM"
  desc "Connection manager for SSH, telnet and serial consoles"
  homepage "https://yacm.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "YACM.app"

  zap trash: [
    "~/Library/Application Support/YACM",
    "~/Library/Caches/app.yacm.YACM",
    "~/Library/WebKit/app.yacm.YACM",
  ]
end
