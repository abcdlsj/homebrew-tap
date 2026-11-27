# typed: strict
# frozen_string_literal: true

# Built from source: abcdlsj/ember has no tagged release yet, so the archive is
# pinned to a commit. Swap to a release tarball (like drun/weft/cupola) once it
# starts publishing v* releases.
class Ember < Formula
  desc "Terminal-first Emby client with mpv playback and remote sync"
  homepage "https://github.com/abcdlsj/ember"
  url "https://github.com/abcdlsj/ember/archive/fb8ef3bd8dc0e568c5cab8e71cea9e1d7c5b1c4a.tar.gz"
  version "0.1.0"
  sha256 "7b3af505c031765954440a2f87b3f156cb22ab52db4100b26574f6c59ebfe1a9"
  license "MIT"

  depends_on "go" => :build
  depends_on "mpv"

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "."
  end

  # ember has no --help/--version flag: it opens the TUI straight away, so the
  # test only asserts the binary was linked.
  test do
    assert_predicate bin/"ember", :executable?
  end
end
