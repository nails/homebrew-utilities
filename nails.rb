require "formula"

class Nails < Formula
  homepage "http://nailsapp.co.uk"
  url "https://github.com/nailsapp/command-line-tool/archive/0.8.0.tar.gz"
  sha256 "60da5bc33300421e49beb9b038d8d96865c2fc89f880de91293457f9da81403d"

  depends_on "git-flow"
  depends_on "composer"
  depends_on "curl"

  def install
    prefix.install "nails"
    bin.install_symlink prefix/"nails"
  end
end