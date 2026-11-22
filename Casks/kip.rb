# typed: strict
# frozen_string_literal: true

cask "kip" do
  version "0.2.13"

  on_arm do
    sha256 "c30f65dd36b3fa75412b1dcc9acad09f5d45eccdc107ef7e79929f0539e09b7f"

    url "https://github.com/abcdlsj/kip/releases/download/v#{version}/stable-macos-arm64-Kip.dmg"
  end
  on_intel do
    sha256 "bdc9eb2224c6a60bec4081cc26c6485d137a381d30cfadf86f81351a73a6b379"

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
