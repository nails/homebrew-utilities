require "formula"

class Nails < Formula
  homepage "http://nailsapp.co.uk"
  url "https://github.com/nails/command-line-tool/archive/1.1.1.tar.gz"

  # Generate hash of the above file
  # curl -sL https://github.com/nails/command-line-tool/archive/1.1.1.tar.gz | shasum -a 256
  sha256 "9d671ae96b0f235545f0153245e91180cac7817d6d7cdab14b01e428ff286910"

  def install
    bin.install Dir["dist/*"]
  end
end
