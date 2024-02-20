cask "oculante" do
  version "0.8.8"
  sha256 "92507e2d38bc8c9cd1c7cf836c2b936e2fe6d70d0c70ce3d899dee032fcbfaef"

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
