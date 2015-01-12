require "formula"

class Nails < Formula
  homepage "http://nailsapp.co.uk"
  url "https://github.com/nailsapp/command-line-tool/archive/0.2.2.tar.gz"
  sha1 "7a18389565c0e331b08b9d15d8de191fd5621c85"

  depends_on "git-flow"
  depends_on "composer"

  def install
    prefix.install "nails"
    bin.install_symlink prefix/"nails"
  end
end