require "formula"

class Nails < Formula
  homepage "http://nailsapp.co.uk"
  url "https://github.com/nailsapp/command-line-tool/archive/0.6.1.tar.gz"
  sha1 "314e5f0b3b9ccc57bbc2410708e368178ddbabfb"

  depends_on "git-flow"
  depends_on "composer"
  depends_on "curl"
  depends_on "php"

  def install
    prefix.install "nails"
    bin.install_symlink prefix/"nails"
  end
end