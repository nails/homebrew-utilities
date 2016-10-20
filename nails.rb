require "formula"

class Nails < Formula
  homepage "http://nailsapp.co.uk"
  url "https://github.com/nailsapp/command-line-tool/archive/0.7.0.tar.gz"
  sha256 "e3cff0501d98f01eeda0762c4de31754aecf3d596b3e73ef7aada790ad214f34"

  depends_on "git-flow"
  depends_on "composer"
  depends_on "curl"

  def install
    prefix.install "nails"
    bin.install_symlink prefix/"nails"
  end
end