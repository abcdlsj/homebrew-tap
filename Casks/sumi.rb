# typed: strict
# frozen_string_literal: true

cask "sumi" do
  version "6.0.6"

  on_arm do
    sha256 "4d35a98d062c4b184da6ef2f1bbcf96bd91614ad8ffc513b5e159e663f1df66b"

    url "https://github.com/abcdlsj/sumi/releases/download/v#{version}/Sumi-#{version}-aarch64-apple-darwin.app.zip"
  end
  on_intel do
    sha256 "c1fd6f5aa203cd385f5cd20d69499afe9b60f0270c95711875ddc20d9feb0b86"

    url "https://github.com/abcdlsj/sumi/releases/download/v#{version}/Sumi-#{version}-x86_64-apple-darwin.app.zip"
  end

  name "Sumi"
  desc "Self-hosted team chat where AI agents work as teammates"
  homepage "https://github.com/abcdlsj/sumi"

  depends_on :macos

  app "Sumi.app"

  zap trash: [
    "~/.sumi",
    "~/Library/Application Support/com.sumi.desktop",
    "~/Library/Caches/com.sumi.desktop",
    "~/Library/Preferences/com.sumi.desktop.plist",
    "~/Library/Saved Application State/com.sumi.desktop.savedState",
  ]
end
