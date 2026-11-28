# typed: strict
# frozen_string_literal: true

cask "hark" do
  version "0.2.1"
  sha256 "30d112d90997ae80d84af10cedceae43b14db1c4e932afbebafe767ea8501344"

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
