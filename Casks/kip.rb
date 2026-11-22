# typed: strict
# frozen_string_literal: true

cask "kip" do
  version "0.2.16"

  on_arm do
    sha256 "8b9af0f5eb5a566d24cdafe5f319d4e3acef162745493b1ebac39d4804fc7cbd"

    url "https://github.com/abcdlsj/kip/releases/download/v#{version}/stable-macos-arm64-Kip.dmg"
  end
  on_intel do
    sha256 "5956620166a2c13469552a5ee71a39818700c68072a383e20dbad8930239014e"

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
