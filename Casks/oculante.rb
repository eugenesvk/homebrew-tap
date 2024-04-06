cask "oculante" do
  version "0.8.18"
  sha256 "bf92f9ab30f903dbc8d93f1b8f48312ca4d47af79dd3627a3a0c261026fc4ccb"

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

  zap trash: "~/Library/Saved Application State/com.github.woelper.oculante.savedState"
end
