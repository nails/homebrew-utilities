require "formula"

class Nails < Formula
  homepage "http://nailsapp.co.uk"
  url "https://github.com/nails/command-line-tool/archive/1.1.0.tar.gz"

  # Generate hash of the above file
  # curl -sL https://github.com/nails/command-line-tool/archive/1.1.0.tar.gz | shasum -a 256
  sha256 "b03ce7b028baec01ecf7fbea7fad841823d97701abac53659baf2b01f102efd1"

  def install
    bin.install Dir["dist/*"]
  end
end
