# typed: strict
# frozen_string_literal: true

cask "kip" do
  version "0.2.1"

  on_arm do
    sha256 "570aa657cd60bd8fe6bc79a98fdb0caf9937a23031a839ecb0efb0da70d39ae9"

    url "https://github.com/abcdlsj/kip/releases/download/v#{version}/stable-macos-arm64-Kip.dmg"
  end
  on_intel do
    sha256 "20b8331f5361af01ea200596efa4c01ecaf9c251129bf68c61b2854f73f990ac"

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
