require "formula"

class Nails < Formula
  homepage "http://nailsapp.co.uk"
  url "https://github.com/nails/command-line-tool/archive/1.0.3.tar.gz"

  # Generate hash of the above file
  # curl -sL https://github.com/nails/command-line-tool/archive/1.0.3.tar.gz | shasum -a 256
  sha256 "5b1ae7db7e39dac0d7c087f47c7e5c861be2637e44d40ece2c538e05bd296e84"

  def install
    bin.install Dir["dist/*"]
  end
end
