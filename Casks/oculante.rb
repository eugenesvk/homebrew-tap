cask "oculante" do
  version "0.8.4"
  sha256 "6190e7e3775a3529e47d96a95eb0a086197d3d1d180cc25a93021b31013c8330"

  url "https://github.com/woelper/oculante/releases/download/#{version}/oculante_mac.zip"
  name "oculante"
  desc "Minimalistic crossplatform image viewer written in Rust"
  homepage "https://github.com/woelper/oculante"

  livecheck do
    url :stable
    regex(/^(\d{1,3}\.\d{1,3}\.\d{1,3})$/i)
    strategy :git do |tags, regex|
      tags.map { |tag| tag[regex, 1]&.gsub(/v/, "") }.compact
    end
  end

  app "oculante.app"

  zap trash: [
    "~/Library/Saved Application State/com.github.woelper.oculante.savedState",
  ]
end
