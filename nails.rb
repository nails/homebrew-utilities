require "formula"

class Nails < Formula
  homepage "http://nailsapp.co.uk"
  url "https://github.com/nails/command-line-tool/archive/1.2.1.tar.gz"

  # Generate hash of the above file
  # curl -sL https://github.com/nails/command-line-tool/archive/1.2.1.tar.gz | shasum -a 256
  sha256 "0abd297b6b46b2f0b7691ba06ff18e13129b9b1c4ec1fd74c3775bdbc2d7d708"

  def install
    bin.install Dir["dist/*"]
  end
end
