require "formula"

class Nails < Formula
  homepage "http://nailsapp.co.uk"
  url "https://github.com/nails/command-line-tool/archive/1.1.3.tar.gz"

  # Generate hash of the above file
  # curl -sL https://github.com/nails/command-line-tool/archive/1.1.3.tar.gz | shasum -a 256
  sha256 "b2366bc2096fde67e4767052861ebddde4309d9e63a516d04e00c765a54e2f1d"

  def install
    bin.install Dir["dist/*"]
  end
end
