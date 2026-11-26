# typed: strict
# frozen_string_literal: true

cask "warren" do
  version "0.44.0"
  sha256 "0e02a400d605248850cd3d5ce30544e043d6faad6a5b436779e9bb03e0b9c612"

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
