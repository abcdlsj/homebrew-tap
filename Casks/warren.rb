# typed: strict
# frozen_string_literal: true

cask "warren" do
  version "0.45.0"
  sha256 "a2f68e6e837cf614760ee10e9beb180ff210cad8ffe50992758a9d86abbce3a4"

  url "https://github.com/abcdlsj/warren/releases/download/v#{version}/Warren-#{version}.dmg"
  name "Warren"
  desc "Workbench that stays running on your machine, reachable from any client"
  homepage "https://github.com/abcdlsj/warren"

  # The published dmg only carries an arm64 slice.
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Warren.app"

  zap trash: [
    "~/.warren",
    "~/Library/Caches/com.abcdlsj.warren",
    "~/Library/HTTPStorages/com.abcdlsj.warren",
    "~/Library/Preferences/com.abcdlsj.warren.plist",
    "~/Library/Saved Application State/com.abcdlsj.warren.savedState",
  ]
end
