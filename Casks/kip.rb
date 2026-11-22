# typed: strict
# frozen_string_literal: true

cask "kip" do
  version "0.2.8"

  on_arm do
    sha256 "4b91b24e1b48f7cc0345b2914c3eb1d268b81e4ef241d35aa3f94697fddf262b"

    url "https://github.com/abcdlsj/kip/releases/download/v#{version}/stable-macos-arm64-Kip.dmg"
  end
  on_intel do
    sha256 "76baa2cfc6563ea0f7bec9e8316906523ed543cbdd1489d2cbe439e61f19d678"

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
