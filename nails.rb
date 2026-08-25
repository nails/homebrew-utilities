class Nails < Formula
  desc "Command Line tool for Nails"
  homepage "https://nailsapp.co.uk"
  url "https://github.com/nails/command-line-tool/archive/1.5.1.tar.gz"
  # Generate hash of the above file
  # curl -sL https://github.com/nails/command-line-tool/archive/1.5.1.tar.gz | shasum -a 256
  sha256 "41d879184b290c44f01140cf9494c69f5222214fa06f88df3049897033c52e19"
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
    assert_match "Nails Command Line Tool 1.5.1", shell_output("#{bin}/nails --version")
  end
end
