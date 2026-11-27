# typed: strict
# frozen_string_literal: true

class Drun < Formula
  desc "Refresh a Docker container with the latest image, keeping its runtime config"
  homepage "https://github.com/abcdlsj/drun"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/abcdlsj/drun/releases/download/v0.5.0/drun_darwin_arm64.tar.gz"
      sha256 "b1c3c4beb072a74f81f4d61a63987d6aad02edaf643a350fb34e7c68687601d6"
    end
    on_intel do
      url "https://github.com/abcdlsj/drun/releases/download/v0.5.0/drun_darwin_amd64.tar.gz"
      sha256 "3dcf982a008ab5f57b9cf96b35d41e22c5b86b7c18f5580e88f921b5553ea32d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/abcdlsj/drun/releases/download/v0.5.0/drun_linux_arm64.tar.gz"
      sha256 "8e2b07beca1c22c708f9dc976d1372de63027f72bb1033815436b5b6931e4765"
    end
    on_intel do
      url "https://github.com/abcdlsj/drun/releases/download/v0.5.0/drun_linux_amd64.tar.gz"
      sha256 "2ea3f8cb3e13369096eefb93b989d016f1b85b5443e4933f8d2d1f11c1643589"
    end
  end

  def install
    bin.install "drun"
  end

  test do
    assert_match "drun", shell_output("#{bin}/drun --help 2>&1")
  end
end
