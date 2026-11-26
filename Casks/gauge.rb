# typed: strict
# frozen_string_literal: true

cask "gauge" do
  version "0.9.1"
  sha256 "250de0e2f2c1e9de3d07d6c8932a0165e45e2f4a23048319f14aacef7d3e18fa"

  url "https://github.com/abcdlsj/gauge/releases/download/v#{version}/Gauge-#{version}-macos-universal.dmg"
  name "Gauge"
  desc "Menu bar dashboard for Gemini and Google Cloud quota and spend"
  homepage "https://github.com/abcdlsj/gauge"

  depends_on macos: :ventura

  app "Gauge.app"

  zap trash: [
    "~/Library/Application Support/Gauge",
    "~/Library/Caches/Gauge",
    "~/Library/Preferences/com.abcdlsj.gauge.plist",
    "~/Library/Saved Application State/com.abcdlsj.gauge.savedState",
  ]
end
