# typed: strict
# frozen_string_literal: true

cask "kip" do
  version "0.2.18"

  on_arm do
    sha256 "ec9bcebb9412fb780afe28782b00b6c874522b116126bff4f62047cae426610f"

    url "https://github.com/abcdlsj/kip/releases/download/v#{version}/stable-macos-arm64-Kip.dmg"
  end
  on_intel do
    sha256 "b16ab943b10c408c3a5b365bc28957e3419ae14da77cffc006e9e68db4a5ce39"

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
