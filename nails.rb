require "formula"

class Nails < Formula
  homepage "http://nailsapp.co.uk"
  url "https://github.com/nails/command-line-tool/archive/1.3.1.tar.gz"

  # Generate hash of the above file
  # curl -sL https://github.com/nails/command-line-tool/archive/1.3.1.tar.gz | shasum -a 256
  sha256 "e728053705d565dbdb70172db7aa855c45b09d7a8112c2bdd96abe59c64dbe82"

  def install
    bin.install Dir["dist/*"]
  end
end
