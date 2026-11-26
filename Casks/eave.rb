# typed: strict
# frozen_string_literal: true

cask "eave" do
  version "0.2.0"
  sha256 "c752a650af39aa1c74f2f2b6f6f00d2eb3b79882eff29014fc2455f3ce613421"

  url "https://github.com/abcdlsj/eave/releases/download/v#{version}/eave_#{version}_darwin_universal.dmg"
  name "Eave"
  desc "Native menu bar manager with Notch integration"
  homepage "https://github.com/abcdlsj/eave"

  depends_on macos: :sequoia

  app "Eave.app"

  zap trash: [
    "~/Library/Caches/com.abcdlsj.eave",
    "~/Library/HTTPStorages/com.abcdlsj.eave",
    "~/Library/Preferences/com.abcdlsj.eave.plist",
    "~/Library/Saved Application State/com.abcdlsj.eave.savedState",
  ]

  caveats <<~EOS
    Eave manages other apps' menu bar items, so it needs Accessibility access:
    System Settings → Privacy & Security → Accessibility → enable Eave.
  EOS
end
