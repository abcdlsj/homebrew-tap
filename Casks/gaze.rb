# typed: strict
# frozen_string_literal: true

cask "gaze" do
  version "0.2.6"

  sha256 "c2360027cd6486ba1770d525dda8aea79266ee333cc6ae4514157d884824a5ab"

  url "https://github.com/abcdlsj/gaze/releases/download/v#{version}/gaze_#{version}_darwin_universal.dmg"
  name "Gaze"
  desc "Fast screenshot, scrolling capture and annotation for macOS and Windows"
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
