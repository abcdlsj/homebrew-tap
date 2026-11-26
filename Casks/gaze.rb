# typed: strict
# frozen_string_literal: true

cask "gaze" do
  version "0.2.1"
  sha256 "825269d19ef45e51ae54f6e6cbd567f93cadb8a1e3e63e725023314966cb7970"

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
