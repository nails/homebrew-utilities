require "formula"

class Nails < Formula
  homepage "http://nailsapp.co.uk"
  url "https://github.com/nails/command-line-tool/archive/0.10.2.tar.gz"

  # Generate hash of the above file
  # curl -sL https://github.com/nails/command-line-tool/archive/0.10.2.tar.gz | shasum -a 256
  sha256 "10fc0857213c14882d0f271dd677183b89af98ce2b425ed605f0a39e92cd803b"

  depends_on "git-flow"
  depends_on "composer"
  depends_on "curl"
  depends_on "jq"

  def install
    prefix.install "nails"
    bin.install_symlink prefix/"nails"
  end
end