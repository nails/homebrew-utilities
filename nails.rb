require "formula"

class Nails < Formula
  homepage "http://nailsapp.co.uk"
  url "https://github.com/nailsapp/command-line-tool/archive/0.3.0.tar.gz"
  sha1 "f7c33505772c066fba0c5675bfde178939430b05"

  depends_on "git-flow"
  depends_on "composer"

  def install
    prefix.install "nails"
    bin.install_symlink prefix/"nails"
  end
end