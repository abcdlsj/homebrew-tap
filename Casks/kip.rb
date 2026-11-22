# typed: strict
# frozen_string_literal: true

cask "kip" do
  version "0.2.17"

  on_arm do
    sha256 "103b51c68181f67dcddb9d02a5307714f8b1b8cb8850908673a898fb0823055f"

    url "https://github.com/abcdlsj/kip/releases/download/v#{version}/stable-macos-arm64-Kip.dmg"
  end
  on_intel do
    sha256 "12d2a0dd98d1872f8b77c6a7028129a2b7a6f1473abd54e4f3b0f42e1a8c0ffd"

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
