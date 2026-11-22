# typed: strict
# frozen_string_literal: true

cask "kip" do
  version "0.2.11"

  on_arm do
    sha256 "d1eed186bdd9a43815b6ce91e3a8528d21ee3b7436b54b77694d99e917dc72de"

    url "https://github.com/abcdlsj/kip/releases/download/v#{version}/stable-macos-arm64-Kip.dmg"
  end
  on_intel do
    sha256 "8642c517abbfddd390257b538f9623efa815e0571ccfbdbec87035fcbe2f54a2"

    url "https://github.com/abcdlsj/kip/releases/download/v#{version}/stable-macos-x64-Kip.dmg"
  end

  name "Kip"
  desc "Quiet, cross-platform desktop coding agent built with Electrobun and Pi"
  homepage "https://github.com/abcdlsj/kip"

  depends_on macos: :monterey

  app "Kip.app"

  zap trash: [
    "~/Library/Application Support/ai.kip.desktop",
    "~/Library/Caches/ai.kip.desktop",
    "~/Library/Preferences/ai.kip.desktop.plist",
  ]
end
