# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Bcd < Formula
  url "https://github.com/a1ecbr0wn/bcd/archive/refs/tags/v1.0.22.tar.gz"
  version "v1.0.22"
  sha256 "6228ad2407acd5e5c9598965d2dd417b74c33323b8a1b58b6a5cced27365f56a"
  desc "Bookmark Change Directory - `bcd` is a way to `cd` to directories that have been bookmarked."
  homepage "http://bcd.noser.net/"
  license "Apache 2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end
end
  