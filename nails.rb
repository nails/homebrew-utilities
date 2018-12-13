require "formula"

class Nails < Formula
  homepage "http://nailsapp.co.uk"
  url "https://github.com/nails/command-line-tool/archive/1.0.2.tar.gz"

  # Generate hash of the above file
  # curl -sL https://github.com/nails/command-line-tool/archive/1.0.2.tar.gz | shasum -a 256
  sha256 "8d0687f7787bf77a0da25cab22de3c2557472f21099ca14cf275fa7da43c6104"

  def install
    bin.install Dir["dist/*"]
  end
end
