# typed: strict
# frozen_string_literal: true

class Cupola < Formula
  desc "Self-hosted Linux fleet monitoring with a PWA and AI-agent visibility"
  homepage "https://github.com/abcdlsj/cupola"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/abcdlsj/cupola/releases/download/v1.8.0/cupola_1.8.0_darwin_arm64.tar.gz"
      sha256 "5cc23a7a7fe5dc94617753a222c52835741d6c2760e68d5fd6b5c194a4744b03"
    end
    on_intel do
      url "https://github.com/abcdlsj/cupola/releases/download/v1.8.0/cupola_1.8.0_darwin_amd64.tar.gz"
      sha256 "a401ede1d7309b18f93d5f1b4d839c0e27c46a4b63406d94f8d4aa4ddfb1a9f6"
    end
  end

  def install
    bin.install "cupola"
    pkgshare.install "web"
    pkgshare.install "deploy" if Dir.exist?("deploy")
  end

  def caveats
    <<~EOS
      The hub serves its dashboard from the bundled PWA. Point it there:

        cupola hub -web-dir #{opt_pkgshare}/web

      Sample systemd units and a compose file live in:
        #{opt_pkgshare}/deploy
    EOS
  end

  test do
    assert_match "cupola", shell_output("#{bin}/cupola version 2>&1")
  end
end
