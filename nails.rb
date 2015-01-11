require "formula"

class Nails < Formula
  homepage "http://nailsapp.co.uk"
  url "https://github.com/nailsapp/command-line-tool/archive/0.1.0.tar.gz"
  sha1 "c44db0cdfbaeeb017459bbfbcbfdbd7889db5507"

  def install
    prefix.install "nails"
    bin.install_symlink prefix/"nails"
  end
end
