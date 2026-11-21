# typed: strict
# frozen_string_literal: true

cask "kip" do
  version "0.2.3"

  on_arm do
    sha256 "44d00ee82bfe920018ec3ee623c9cff641d49793168daed405b04e2131b34740"

    url "https://github.com/abcdlsj/kip/releases/download/v#{version}/stable-macos-arm64-Kip.dmg"
  end
  on_intel do
    sha256 "85b7ab20c740bea9c720fb15c6f9e46b1c2cc8b4b8261a3bfde55535d63a294f"

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
