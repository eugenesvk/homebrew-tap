cask "oculante" do
  version "0.8.19"
  sha256 "0e30a5fe26744cd39755acab00ad4ed802709b8f51f05ad7f962d4254dbbb5e6"

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
