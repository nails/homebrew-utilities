require "formula"

class Nails < Formula
  homepage "http://nailsapp.co.uk"
  url "https://github.com/nailsapp/command-line-tool/archive/0.2.1.tar.gz"
  sha1 "599b4277c4e3a956d9bcdabf63aae5e57f9106b4"

  depends_on "git-flow"
  depends_on "composer"

  def install
    prefix.install "nails"
    bin.install_symlink prefix/"nails"
  end
end