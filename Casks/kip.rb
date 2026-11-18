# typed: strict
# frozen_string_literal: true

cask "kip" do
  version "0.2.0"

  on_arm do
    sha256 "21074a707aa76a0441d993bcb21c3accf23503478a65799c1d2ea9fa463c529b"

    url "https://github.com/abcdlsj/kip/releases/download/v#{version}/stable-macos-arm64-Kip.dmg"
  end
  on_intel do
    sha256 "085304a80ba46606b4d5dbae860360881002a695ed9b350b5472a56b8ce10a3a"

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
