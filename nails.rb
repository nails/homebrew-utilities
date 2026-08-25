class Nails < Formula
  desc "Command Line tool for Nails"
  homepage "https://nailsapp.co.uk"
  url "https://github.com/nails/command-line-tool/archive/1.5.0.tar.gz"
  # Generate hash of the above file
  # curl -sL https://github.com/nails/command-line-tool/archive/1.5.0.tar.gz | shasum -a 256
  sha256 "805bf849a008549cd14079df8ae428b2e55a84c3d7695c7618db4857106ee66c"
  license "MIT"

  # Optional: Uncomment if you want Homebrew to ensure PHP is installed
  # depends_on "php"

  def install
    # Installs dist/nails-cli as `nails` (and optionally `nails-cli`)
    bin.install "dist/nails-cli" => "nails"
    bin.install_symlink bin/"nails" => "nails-cli"
  end

  test do
    system "#{bin}/nails", "--version"
    assert_match "Nails Command Line Tool 1.5.0", shell_output("#{bin}/nails --version")
  end
end
