# typed: strict
# frozen_string_literal: true

cask "kip" do
  version "0.2.6"

  on_arm do
    sha256 "8a2efcc73fd7151c3bc062946d08b4790d977bf177ddc21e2641080ba88b46a6"

    url "https://github.com/abcdlsj/kip/releases/download/v#{version}/stable-macos-arm64-Kip.dmg"
  end
  on_intel do
    sha256 "7f9b8be40212ab1fa27cb28f0416730aa0299e284725e60dc2b75d12e54534bb"

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
