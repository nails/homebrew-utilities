require "formula"

class Nails < Formula
  homepage "http://nailsapp.co.uk"
  url "https://github.com/nails/command-line-tool/archive/1.2.6.tar.gz"

  # Generate hash of the above file
  # curl -sL https://github.com/nails/command-line-tool/archive/1.2.6.tar.gz | shasum -a 256
  sha256 "8bbd46fc3047943a1030ad21464e913578399c947de7eb0eb8c1934952063957"

  def install
    bin.install Dir["dist/*"]
  end
end
