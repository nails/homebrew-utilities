require "formula"

class Nails < Formula
  homepage "http://nailsapp.co.uk"
  url "https://github.com/nails/command-line-tool/archive/1.4.0.tar.gz"

  # Generate hash of the above file
  # curl -sL https://github.com/nails/command-line-tool/archive/1.4.0.tar.gz | shasum -a 256
  sha256 "5a5ddcac3770299be2e6eef04b6d3ad8341cdaf943632ddc785b849d897d22a1"

  def install
    bin.install Dir["dist/*"]
  end
end
