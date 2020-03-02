require "formula"

class Nails < Formula
  homepage "http://nailsapp.co.uk"
  url "https://github.com/nails/command-line-tool/archive/1.2.2.tar.gz"

  # Generate hash of the above file
  # curl -sL https://github.com/nails/command-line-tool/archive/1.2.2.tar.gz | shasum -a 256
  sha256 "e24d01e1e138b2e8eb421555e1924573486fa88913d0ccc67406ad274f647144"

  def install
    bin.install Dir["dist/*"]
  end
end
