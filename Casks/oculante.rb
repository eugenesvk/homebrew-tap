cask "oculante" do
  version "0.8.22"
  sha256 "6fd938d337387d1bcafef47d38f23bae858cf82a75b8aa8cb481e5eb0871547f"

  url "https://github.com/woelper/oculante/releases/download/#{version}/oculante_mac.zip"
  name "oculante"
  desc "Minimalistic crossplatform image viewer written in Rust"
  homepage "https://github.com/woelper/oculante"

  livecheck do
    url :stable
    regex(/^(\d{1,3}\.\d{1,3}\.\d{1,3})$/i)
    strategy :git do |tags, regex|
      tags.filter_map { |tag| tag[regex, 1]&.delete("v") }
    end
  end

  app "oculante.app"

  zap trash: [
    "~/Library/Application Support/oculante",
    "~/Library/Saved Application State/com.github.woelper.oculante.savedState",
  ]
end
