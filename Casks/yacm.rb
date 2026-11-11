cask "yacm" do
  version "0.9.2"
  sha256 "928c0c3cf84514f59830e3923d66ca869f05b4289954ef62e4536fdeaa6a1680"

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
