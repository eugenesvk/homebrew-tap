cask "oculante" do
  version "0.8.11"
  sha256 "3fea1cc95d4e493a4a91d6a2a06d39dbfadc3d34c376760c47f5a8663a9c2948"

  url "https://github.com/woelper/oculante/releases/download/#{version}/oculante_mac.zip"
  name "oculante"
  desc "Minimalistic crossplatform image viewer written in Rust"
  homepage "https://github.com/woelper/oculante"

  livecheck do
    url :stable
    regex(/^(\d{1,3}\.\d{1,3}\.\d{1,3})$/i)
    strategy :git do |tags, regex|
      tags.map { |tag| tag[regex, 1]&.delete("v") }.compact
    end
  end

  app "oculante.app"

  zap trash: "~/Library/Saved Application State/com.github.woelper.oculante.savedState"
end
