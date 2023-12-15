cask "oculante" do
  version "0.8.5"
  sha256 "2b7a9714d3314acd44d471d3deb47a1533d8541e23a27131a3c9beb63d3964c7"

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

  zap trash: [
    "~/Library/Saved Application State/com.github.woelper.oculante.savedState",
  ]
end
