# typed: strict
# frozen_string_literal: true

cask "kip" do
  version "0.2.9"

  on_arm do
    sha256 "282a136b1ac65d65dbc4fdb6407fd368251e09cfc0845825d818c9d3365d1973"

    url "https://github.com/abcdlsj/kip/releases/download/v#{version}/stable-macos-arm64-Kip.dmg"
  end
  on_intel do
    sha256 "3adfec3c179f533b0f433bf709c5a633d7c84fe87e9e82d73c0fe229d656ca29"

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
