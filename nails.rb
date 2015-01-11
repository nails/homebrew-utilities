require "formula"

class Nails < Formula
  homepage "http://nailsapp.co.uk"
  url "https://github.com/nailsapp/command-line-tool/archive/0.1.1.tar.gz"
  sha1 "1f6f0dd2700e0755ecaf44a5f03f591a5135a76d"

  depends_on "git-flow"
  depends_on "composer"

  def install
    prefix.install "nails"
    bin.install_symlink prefix/"nails"
  end
end