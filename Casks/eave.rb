# typed: strict
# frozen_string_literal: true

cask "eave" do
  version "0.3.0"
  sha256 "3139857ade902420460c4defa449f46f454e2fe489c31ad0a4942269558e22f6"

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
