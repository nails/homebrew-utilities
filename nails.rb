require "formula"

class Nails < Formula
  homepage "http://nailsapp.co.uk"
  url "https://github.com/nails/command-line-tool/archive/1.0.4.tar.gz"

  # Generate hash of the above file
  # curl -sL https://github.com/nails/command-line-tool/archive/1.0.4.tar.gz | shasum -a 256
  sha256 "d1616e16f9af7128054a261cbbac41fa9be5429b8060c47f0bcf59be4688e35f"

  def install
    bin.install Dir["dist/*"]
  end
end
