require "formula"

class Nails < Formula
  homepage "http://nailsapp.co.uk"
  url "https://github.com/nails/command-line-tool/archive/0.10.2.tar.gz"
  sha256 "a59ec839861aa5cecc5f1bd142f8d603d9f7500d78e09a2d6064f3a40b3f559c"

  depends_on "git-flow"
  depends_on "composer"
  depends_on "curl"
  depends_on "jq"

  def install
    prefix.install "nails"
    bin.install_symlink prefix/"nails"
  end
end