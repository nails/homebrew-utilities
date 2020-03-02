require "formula"

class Nails < Formula
  homepage "http://nailsapp.co.uk"
  url "https://github.com/nails/command-line-tool/archive/1.2.4.tar.gz"

  # Generate hash of the above file
  # curl -sL https://github.com/nails/command-line-tool/archive/1.2.4.tar.gz | shasum -a 256
  sha256 "9cadcc307b7140d816e10c7e951448fb57ad3b78299368365d97bc98bf51550f"

  def install
    bin.install Dir["dist/*"]
  end
end
