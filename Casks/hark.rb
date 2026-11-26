# typed: strict
# frozen_string_literal: true

cask "hark" do
  version "0.2.0"
  sha256 "276c83c9ce103b684597a1d61c717e6d7a14d11f66d3fec67d418c77a85a3abc"

  url "https://github.com/abcdlsj/hark/releases/download/v#{version}/hark_#{version}_darwin_universal.dmg"
  name "Hark"
  desc "Local-first API workbench for humans and agents"
  homepage "https://github.com/abcdlsj/hark"

  depends_on macos: :monterey

  app "Hark.app"

  zap trash: [
    "~/Library/Application Support/com.abcdlsj.hark",
    "~/Library/Caches/com.abcdlsj.hark",
    "~/Library/HTTPStorages/com.abcdlsj.hark",
    "~/Library/Preferences/com.abcdlsj.hark.plist",
    "~/Library/Saved Application State/com.abcdlsj.hark.savedState",
    "~/Library/WebKit/com.abcdlsj.hark",
  ]
end
