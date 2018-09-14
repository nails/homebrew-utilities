require "formula"

class Nails < Formula
  homepage "http://nailsapp.co.uk"
  url "https://github.com/nails/command-line-tool/archive/0.10.4.tar.gz"

  # Generate hash of the above file
  # curl -sL https://github.com/nails/command-line-tool/archive/0.10.4.tar.gz | shasum -a 256
  sha256 "8c24bb715c32ba738efd376cdf5cae128279ce7bc8f88916816a318bb1ded4a3"

  depends_on "git-flow"
  depends_on "composer"
  depends_on "curl"
  depends_on "jq"

  def install
    prefix.install "nails"
    bin.install_symlink prefix/"nails"
  end
end