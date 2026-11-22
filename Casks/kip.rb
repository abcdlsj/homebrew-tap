# typed: strict
# frozen_string_literal: true

cask "kip" do
  version "0.2.10"

  on_arm do
    sha256 "d230a7a83977a5861c31766cca1c6fb550ba90095ae333c286e1fb9e2a100bb4"

    url "https://github.com/abcdlsj/kip/releases/download/v#{version}/stable-macos-arm64-Kip.dmg"
  end
  on_intel do
    sha256 "6b0b4b9c31ebcb47c4fd4487aca37c985dad4e31a934509fab92af7d4708ec3a"

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
