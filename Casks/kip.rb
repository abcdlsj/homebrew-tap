# typed: strict
# frozen_string_literal: true

cask "kip" do
  version "0.2.4"

  on_arm do
    sha256 "2e4ebfa3cf334da77ff1f9f5e15e3fba10c4d9938a5153264a044351da4328c8"

    url "https://github.com/abcdlsj/kip/releases/download/v#{version}/stable-macos-arm64-Kip.dmg"
  end
  on_intel do
    sha256 "88a6531e46b1aff9c1d28ce2939f290501fbf4de08274cfae0bc54bd6b473e04"

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
