cask "oculante" do
  version "0.6.65"
  sha256 "163f5a77416b53d313a4af79b5aeadddd40445bccf5005b9c1afee7df47d5aaf"

  url "https://github.com/woelper/oculante/releases/download/#{version}/oculante_mac.zip"
  name "oculante"
  desc "Minimalistic crossplatform image viewer written in Rust"
  homepage "https://github.com/woelper/oculante"

  app "oculante.app"

  zap trash: [
    "~/Library/Saved Application State/com.github.woelper.oculante.savedState",
  ]
end
