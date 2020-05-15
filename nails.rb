require "formula"

class Nails < Formula
  homepage "http://nailsapp.co.uk"
  url "https://github.com/nails/command-line-tool/archive/1.2.7.tar.gz"

  # Generate hash of the above file
  # curl -sL https://github.com/nails/command-line-tool/archive/1.2.7.tar.gz | shasum -a 256
  sha256 "1c7c0ee66958c696a9084a41e25f0bd0b9c3d946eae0298fde5ad275741fd888"

  def install
    bin.install Dir["dist/*"]
  end
end
