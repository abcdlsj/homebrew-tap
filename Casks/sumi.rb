# typed: strict
# frozen_string_literal: true

cask "sumi" do
  version "6.0.8"

  on_arm do
    sha256 "8e9b201a9db86746759ea21079c50f83aae29375a18c33b6f9c12cd271c36a79"

    url "https://github.com/abcdlsj/sumi/releases/download/v#{version}/Sumi-#{version}-aarch64-apple-darwin.app.zip"
  end
  on_intel do
    sha256 "585d60030a0a1ecad1868ac627906535d72f5c4cd8612d915aa683591db155f5"

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
