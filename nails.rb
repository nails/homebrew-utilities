Nails < Formula
  desc "Command Line tool for Nails"
  homepage "https://nailsapp.co.uk"
  url "https://github.com/nails/command-line-tool/archive/1.4.3.tar.gz"
  # Generate hash of the above file
  # curl -sL https://github.com/nails/command-line-tool/archive/1.4.3.tar.gz | shasum -a 256
  sha256 "8d64d9ada3c362fe857247c6c35b34f427368d4871a4ef8b15c9d784a76f213f"
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
    assert_match "Nails Command Line Tool 1.4.3", shell_output("#{bin}/nails --version")
  end
end
