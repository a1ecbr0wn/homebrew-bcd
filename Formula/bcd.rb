# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Bcd < Formula
  url "https://github.com/a1ecbr0wn/bcd/archive/refs/tags/v1.0.15.tar.gz"
  version "v1.0.15"
  sha256 "f6758c1b5ca40e32dd69117c0c9c94cd054bdc9caad40e068ed166224a20e7b0"
  desc "Bookmark Change Directory - `bcd` is a way to `cd` to directories that have been bookmarked."
  homepage "http://bcd.noser.net/"
  license "Apache 2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end
end
  