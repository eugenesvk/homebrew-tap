cask "oculante" do
  version "0.9.1"
  sha256 arm:   "c3a59da9254c4b0912662c8fa6f0670551500481ee904270602149a33fdbd292",
         intel: "f16c8464805e79bc814997040ee19bb4a26c2248f74d47f19fa332da14e68819"
  arch arm: "silicon", intel: "universal"

  url "https://github.com/woelper/oculante/releases/download/#{version}/oculante_mac_#{arch}.zip"
  name "oculante"
  desc "Minimalistic crossplatform image viewer written in Rust"
  homepage "https://github.com/woelper/oculante"

  livecheck do
    url :url
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
