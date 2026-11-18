# typed: strict
# frozen_string_literal: true

cask "kip" do
  version "0.1.1"

  on_arm do
    sha256 "fe0f44439c920fe8f5868f6695c7198ef1c599c8f2e8c52ac57ecbf5566fba3f"

    url "https://github.com/abcdlsj/kip/releases/download/v#{version}/stable-macos-arm64-Kip.dmg"
  end
  on_intel do
    sha256 "2a22ad66730489da0dbe98f71d8945bb8e69d4ab165989ac420dc1b1ac822175"

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
