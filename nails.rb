require "formula"

class Nails < Formula
  homepage "http://nailsapp.co.uk"
  url "https://github.com/nails/command-line-tool/archive/1.0.0.tar.gz"

  # Generate hash of the above file
  # curl -sL https://github.com/nails/command-line-tool/archive/1.0.0.tar.gz | shasum -a 256
  sha256 "938bc32608245bac75ed4c62448973620026975012b8cee963a9f88e11d162f6"

  def install
    bin.install Dir[dist/"*"]
  end
end
