cask "netpulse" do
  version "1.0.1"
  sha256 "5468e78d8b7d67f74650d1697c6280e19ad7762d25bb2672ef421f0d5502c72f"

  url "https://github.com/anujhabuild/netpulse/releases/download/v#{version}/NetPulse.zip"
  name "NetPulse"
  desc "Lightweight menu bar bandwidth monitor with zero network overhead"
  homepage "https://github.com/anujhabuild/netpulse"

  depends_on macos: :ventura

  app "NetPulse.app"

  zap trash: "~/Library/Preferences/com.anujsingh.netpulse.plist"

  caveats do
    <<~EOS
      NetPulse is not yet code-signed/notarized. On first launch, macOS
      Gatekeeper will block it — right-click NetPulse.app in
      /Applications and choose "Open" once to allow it.
    EOS
  end
end
