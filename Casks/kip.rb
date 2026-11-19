# typed: strict
# frozen_string_literal: true

cask "kip" do
  version "0.2.2"

  on_arm do
    sha256 "a33cdc3456e37de6f8a336d6a95c7a1dcf4c5df66666121918ad70356ba26571"

    url "https://github.com/abcdlsj/kip/releases/download/v#{version}/stable-macos-arm64-Kip.dmg"
  end
  on_intel do
    sha256 "c7eda3be14ba0ef2d9febd83e8389c8efc3ae442c29562aecd2cc42c373e15c3"

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
