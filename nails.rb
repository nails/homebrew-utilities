require "formula"

class Nails < Formula
  homepage "http://nailsapp.co.uk"
  url "https://github.com/nails/command-line-tool/archive/1.3.0.tar.gz"

  # Generate hash of the above file
  # curl -sL https://github.com/nails/command-line-tool/archive/1.3.0.tar.gz | shasum -a 256
  sha256 "c619d27bb81e06916651c2f13fb83fffe73677bb9536cf729e3e2dae734abe07"

  def install
    bin.install Dir["dist/*"]
  end
end
