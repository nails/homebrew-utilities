require "formula"

class Nails < Formula
  homepage "http://nailsapp.co.uk"
  url "https://github.com/nails/command-line-tool/archive/1.2.0.tar.gz"

  # Generate hash of the above file
  # curl -sL https://github.com/nails/command-line-tool/archive/1.2.0.tar.gz | shasum -a 256
  sha256 "7b8c1b6f566817aca079d430208d57d058041e7f53c64d8dff47d47498d38de7"

  def install
    bin.install Dir["dist/*"]
  end
end
