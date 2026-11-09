cask "yacm" do
  version "0.9.1"
  sha256 "250016d1949b2417845bff4ba55c1802f87c729be36c0484729cefca5e76905b"

  url "https://github.com/icavar/yacm/releases/download/v#{version}/YACM-#{version}-macos.dmg",
      verified: "github.com/icavar/yacm/"
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
