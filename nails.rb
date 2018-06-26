require "formula"

class Nails < Formula
  homepage "http://nailsapp.co.uk"
  url "https://github.com/nailsapp/command-line-tool/archive/0.9.0.tar.gz"
  sha256 "b4de51fcf6d2b989e701e34f3fdd4d03d66126efbf3e425784c72a4d87fcdb4f"

  depends_on "git-flow"
  depends_on "composer"
  depends_on "curl"

  def install
    prefix.install "nails"
    bin.install_symlink prefix/"nails"
  end
end