# typed: strict
# frozen_string_literal: true

cask "gaze" do
  version "0.2.2"
  sha256 "d4540f6cd1fec2c46a2094531d6a22097f0eb93bc684705cef63b4132770259f"

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
