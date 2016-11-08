require "formula"

class Nails < Formula
  homepage "http://nailsapp.co.uk"
  url "https://github.com/nailsapp/command-line-tool/archive/0.8.0.tar.gz"
  sha256 "11dcd08ea64aa9a268132716e23f8710fe42f1e0b6f7efbb7b6fb19e55e6529f"

  depends_on "git-flow"
  depends_on "composer"
  depends_on "curl"

  def install
    prefix.install "nails"
    bin.install_symlink prefix/"nails"
  end
end