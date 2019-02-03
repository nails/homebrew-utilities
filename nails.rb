require "formula"

class Nails < Formula
  homepage "http://nailsapp.co.uk"
  url "https://github.com/nails/command-line-tool/archive/1.1.2.tar.gz"

  # Generate hash of the above file
  # curl -sL https://github.com/nails/command-line-tool/archive/1.1.2.tar.gz | shasum -a 256
  sha256 "4c3a56b5d4a90d24d7a63599fde7b3c1dd17391be8b5b42dcbc8d32bca1cf59f"

  def install
    bin.install Dir["dist/*"]
  end
end
