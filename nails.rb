require "formula"

class Nails < Formula
  homepage "http://nailsapp.co.uk"
  url "https://github.com/nailsapp/command-line-tool/archive/0.4.1.tar.gz"
  sha1 "3a6d2c6c3fa42d748d975906c3d835aef679ae6a"

  depends_on "git-flow"
  depends_on "composer"

  def install
    prefix.install "nails"
    bin.install_symlink prefix/"nails"
  end
end