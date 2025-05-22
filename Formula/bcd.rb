# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Bcd < Formula
  url "https://github.com/a1ecbr0wn/bcd/archive/refs/tags/v1.0.21.tar.gz"
  version "v1.0.21"
  sha256 "7f4fa83aeeb13516b7bb57e4f6faca398483a794dcf8cfa387a0daac35130f6e"
  desc "Bookmark Change Directory - `bcd` is a way to `cd` to directories that have been bookmarked."
  homepage "http://bcd.noser.net/"
  license "Apache 2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end
end
  