require "formula"

class Nails < Formula
  homepage "http://nailsapp.co.uk"
  url "https://github.com/nails/command-line-tool/archive/1.2.5.tar.gz"

  # Generate hash of the above file
  # curl -sL https://github.com/nails/command-line-tool/archive/1.2.5.tar.gz | shasum -a 256
  sha256 "49123354d539da3da750d9f14b00e37985b45ad21dd9ea82bbc10566f3f9b245"

  def install
    bin.install Dir["dist/*"]
  end
end
