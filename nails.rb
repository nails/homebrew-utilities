require "formula"

class Nails < Formula
  homepage "http://nailsapp.co.uk"
  url "https://github.com/nails/command-line-tool/archive/1.4.3.tar.gz"

  # Generate hash of the above file
  # curl -sL https://github.com/nails/command-line-tool/archive/1.4.3.tar.gz | shasum -a 256
  sha256 "8d64d9ada3c362fe857247c6c35b34f427368d4871a4ef8b15c9d784a76f213f"

  def install
    bin.install Dir["dist/*"]
  end
end
