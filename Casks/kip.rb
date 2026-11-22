# typed: strict
# frozen_string_literal: true

cask "kip" do
  version "0.2.12"

  on_arm do
    sha256 "7873db3606a1e56713ff527d9829b23a55296d8e98597d6474b2485acd40d778"

    url "https://github.com/abcdlsj/kip/releases/download/v#{version}/stable-macos-arm64-Kip.dmg"
  end
  on_intel do
    sha256 "1c207eb9fbe8226822be7fa1063a1b1886d8690243322bf000aff669154e591d"

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
