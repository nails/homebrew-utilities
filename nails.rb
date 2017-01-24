require "formula"

class Nails < Formula
  homepage "http://nailsapp.co.uk"
  url "https://github.com/nailsapp/command-line-tool/archive/0.8.1.tar.gz"
  sha256 "194de4a602461c0382e3156068d1c12f897fab6564939efb8e2b687723b61a05"

  depends_on "git-flow"
  depends_on "composer"
  depends_on "curl"

  def install
    prefix.install "nails"
    bin.install_symlink prefix/"nails"
  end
end