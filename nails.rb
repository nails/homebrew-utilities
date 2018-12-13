require "formula"

class Nails < Formula
  homepage "http://nailsapp.co.uk"
  url "https://github.com/nails/command-line-tool/archive/1.0.1.tar.gz"

  # Generate hash of the above file
  # curl -sL https://github.com/nails/command-line-tool/archive/1.0.1.tar.gz | shasum -a 256
  sha256 "008175bd9e817f5c2036ca3e62880ad274e32284732ee9dfe0521d82faccfee9"

  def install
    bin.install Dir[dist/"*"]
  end
end
