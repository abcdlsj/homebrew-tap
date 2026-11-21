# typed: strict
# frozen_string_literal: true

cask "kip" do
  version "0.2.5"

  on_arm do
    sha256 "cf7e49f6c161aea80a46ce56bc42f197baff5dc05fb374a7ea48cea0aed782e9"

    url "https://github.com/abcdlsj/kip/releases/download/v#{version}/stable-macos-arm64-Kip.dmg"
  end
  on_intel do
    sha256 "b37d093f0e3fc05a5b178d462eefc4e4f5ebaf8ef7ba1613a1c7219e352b101d"

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
