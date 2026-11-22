# typed: strict
# frozen_string_literal: true

cask "kip" do
  version "0.2.7"

  on_arm do
    sha256 "fff1e54b0ffd8ccaf52cd700d71eab3cf18123e4023ab0d25ce016defc088b5b"

    url "https://github.com/abcdlsj/kip/releases/download/v#{version}/stable-macos-arm64-Kip.dmg"
  end
  on_intel do
    sha256 "46bbbb6fb277a7b159730ceb96e97cf1283e00137aed3a41829435a22972188b"

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
