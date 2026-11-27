# typed: strict
# frozen_string_literal: true

class Weft < Formula
  desc "Single-binary ingress that fronts your local services behind one port"
  homepage "https://github.com/abcdlsj/weft"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/abcdlsj/weft/releases/download/v0.7.4/weft_v0.7.4_darwin_arm64.tar.gz"
      sha256 "60ec98c185cedf9d20505d41ca23868035660d798aae05ca95113be2d123ada7"
    end
    on_intel do
      url "https://github.com/abcdlsj/weft/releases/download/v0.7.4/weft_v0.7.4_darwin_amd64.tar.gz"
      sha256 "02107a3bb85c9e6ef41d35ba4c69980b9d054a47db20be905a6fea929ef5f6ba"
    end
  end

  def install
    bin.install "weft"
  end

  test do
    assert_match "weft", shell_output("#{bin}/weft --help 2>&1")
  end
end
