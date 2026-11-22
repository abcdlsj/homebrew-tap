# typed: strict
# frozen_string_literal: true

cask "kip" do
  version "0.2.15"

  on_arm do
    sha256 "d50c38731956b481c681bd9bef3878edf112a688ff71541a4fef61a54ea41931"

    url "https://github.com/abcdlsj/kip/releases/download/v#{version}/stable-macos-arm64-Kip.dmg"
  end
  on_intel do
    sha256 "4581f127bd3190347b5d3591373d9b1defe643bc38f3e0a94a7feef8f09a06ee"

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
