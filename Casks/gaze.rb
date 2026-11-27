# typed: strict
# frozen_string_literal: true

cask "gaze" do
  version "0.2.5"
  sha256 "9d47af84e15d3b5bad52da308c43cfc8fb7e542b592267243ff05dd5e33ffa0c"

  url "https://github.com/abcdlsj/gaze/releases/download/v#{version}/gaze_#{version}_darwin_universal.dmg"
  name "Gaze"
  desc "Fast screenshot, scrolling capture and annotation tool"
  homepage "https://github.com/abcdlsj/gaze"

  depends_on macos: :monterey

  app "Gaze.app"

  zap trash: [
    "~/Library/Application Support/dev.abcdlsj.gaze",
    "~/Library/Caches/dev.abcdlsj.gaze",
    "~/Library/HTTPStorages/dev.abcdlsj.gaze",
    "~/Library/Preferences/dev.abcdlsj.gaze.plist",
    "~/Library/Saved Application State/dev.abcdlsj.gaze.savedState",
    "~/Library/WebKit/dev.abcdlsj.gaze",
  ]
end
