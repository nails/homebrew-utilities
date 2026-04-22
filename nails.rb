require "formula"

class Nails < Formula
  homepage "http://nailsapp.co.uk"
  url "https://github.com/nails/command-line-tool/archive/1.4.2.tar.gz"

  # Generate hash of the above file
  # curl -sL https://github.com/nails/command-line-tool/archive/1.4.2.tar.gz | shasum -a 256
  sha256 "b220d41dbdce5cd05f1aff282f98678700b728af84c356cdcd35812f639d27c2"

  def install
    bin.install Dir["dist/*"]
  end
end
