require "formula"

class Nails < Formula
  homepage "http://nailsapp.co.uk"
  url "https://github.com/nailsapp/command-line-tool/archive/0.7.0.tar.gz"
  sha256 "38675f144f85c3b99b5089263fb3e7e5e110a567fd9edc1ac176af0368484c17"

  depends_on "git-flow"
  depends_on "composer"
  depends_on "curl"

  def install
    prefix.install "nails"
    bin.install_symlink prefix/"nails"
  end
end