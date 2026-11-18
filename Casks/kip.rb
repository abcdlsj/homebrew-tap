# typed: strict
# frozen_string_literal: true

cask "kip" do
  version "0.1.0"

  on_arm do
    sha256 "4fc749af201b1ea3c12bbd258c22c0b2fc5e9647ad2c3ab2e1d9b82952ed0485"

    url "https://github.com/abcdlsj/kip/releases/download/v#{version}/stable-macos-arm64-Kip.dmg"
  end
  on_intel do
    sha256 "232a4cc9de380678032e3955be0694880205f7dd3b40435bec929367edb27b3f"

    url "https://github.com/abcdlsj/kip/releases/download/v#{version}/stable-macos-x64-Kip.dmg"
  end

  name "Kip"
  desc "Quiet, cross-platform desktop coding agent built with Electrobun and Pi"
  homepage "https://github.com/abcdlsj/kip"

  depends_on :macos

  app "Kip.app"

  zap trash: [
    "~/Library/Application Support/ai.kip.desktop",
    "~/Library/Caches/ai.kip.desktop",
    "~/Library/Preferences/ai.kip.desktop.plist",
  ]
end
