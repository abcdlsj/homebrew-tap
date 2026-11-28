# typed: strict
# frozen_string_literal: true

cask "gauge" do
  version "0.9.2"
  sha256 "265729a8b000c37580f3ac446d83ffa0aaf21cb4649f091635951985de8f0f87"

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
