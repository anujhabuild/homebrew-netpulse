cask "netpulse" do
  version "1.0.0"
  sha256 "198db714a779b2cf5d4300317f6b244d52d839088be9c0e0d97b3213f8984fc3"

  url "https://github.com/anujhabuild/netpulse/releases/download/v#{version}/NetPulse.zip"
  name "NetPulse"
  desc "Menu bar network bandwidth monitor showing live upload/download speed"
  homepage "https://github.com/anujhabuild/netpulse"

  depends_on macos: ">= :ventura"

  app "NetPulse.app"

  zap trash: [
    "~/Library/Preferences/com.anujsingh.netpulse.plist",
  ]

  caveats do
    <<~EOS
      NetPulse is not yet code-signed/notarized. On first launch, macOS
      Gatekeeper will block it — right-click NetPulse.app in
      /Applications and choose "Open" once to allow it.
    EOS
  end
end
