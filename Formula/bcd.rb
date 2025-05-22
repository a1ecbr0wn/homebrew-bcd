# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Bcd < Formula
  url "https://github.com/a1ecbr0wn/bcd/archive/refs/tags/v1.0.21-compat-1.74.tar.gz"
  version "v1.0.21-compat-1.74"
  sha256 "f19f75833d34e1d1a1b4699fca89c083544285d939475f9c9a68ecab9f61932b"
  desc "Bookmark Change Directory - `bcd` is a way to `cd` to directories that have been bookmarked."
  homepage "http://bcd.noser.net/"
  license "Apache 2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end
end
  