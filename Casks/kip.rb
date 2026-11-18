# typed: strict
# frozen_string_literal: true

cask "kip" do
  version "1.0.0"

  on_arm do
    sha256 "a606f4d69c563789b34ff0547994796a7a050c3cf06ce02c966b22720947da59"

    url "https://github.com/abcdlsj/kip/releases/download/v#{version}/stable-macos-arm64-Kip.dmg"
  end
  on_intel do
    sha256 "6967cfb79603d13a61ee100780af42e6c7a4aed4a1cd9692352f059f3a29e469"

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
