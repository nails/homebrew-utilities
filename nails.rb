require "formula"

class Nails < Formula
  homepage "http://nailsapp.co.uk"
  url "https://github.com/nails/command-line-tool/archive/1.2.3.tar.gz"

  # Generate hash of the above file
  # curl -sL https://github.com/nails/command-line-tool/archive/1.2.3.tar.gz | shasum -a 256
  sha256 "2e65053ca3c5f491d7bb0e7f42986b70fd00dc74d558f319b28a1c3c0781df57"

  def install
    bin.install Dir["dist/*"]
  end
end
