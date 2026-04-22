require "formula"

class Nails < Formula
  homepage "http://nailsapp.co.uk"
  url "https://github.com/nails/command-line-tool/archive/1.4.1.tar.gz"

  # Generate hash of the above file
  # curl -sL https://github.com/nails/command-line-tool/archive/1.4.1.tar.gz | shasum -a 256
  sha256 "40ba0fab6c6953a8e62be885ae86ac7b397002666cf49a708cc2a0feeaf0b36a"

  def install
    bin.install Dir["dist/*"]
  end
end
