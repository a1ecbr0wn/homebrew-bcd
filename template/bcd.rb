# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Bcd < Formula
  url "https://github.com/a1ecbr0wn/bcd/archive/refs/tags/:tap_version.tar.gz"
  version ":tap_version"
  sha256 ":tap_sha256"
  desc "Bookmark Change Directory - `bcd` is a way to `cd` to directories that have been bookmarked."
  homepage "http://bcd.noser.net/"
  license "Apache 2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end
end
  