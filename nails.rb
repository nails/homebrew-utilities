require "formula"

class Nails < Formula
  homepage "http://nailsapp.co.uk"
  url "https://github.com/nails/command-line-tool/archive/0.10.3.tar.gz"

  # Generate hash of the above file
  # curl -sL https://github.com/nails/command-line-tool/archive/0.10.3.tar.gz | shasum -a 256
  sha256 "bc5b029eacd94e35a0d41c6d7b17e13ee8d01ddadc9badcdc8f7c7db6d00df0e"

  depends_on "git-flow"
  depends_on "composer"
  depends_on "curl"
  depends_on "jq"

  def install
    prefix.install "nails"
    bin.install_symlink prefix/"nails"
  end
end