class ItShould < Formula
  desc "Turn a plain-English request into one approved shell command"
  homepage "https://github.com/dowhilelabs/it-should"
  version "0.2.0"
  url "https://github.com/dowhilelabs/it-should/releases/download/v0.1.0/it-aarch64-apple-darwin.tar.gz"
  # SHA-256 of it-aarch64-apple-darwin.tar.gz (v0.1.0 release).
  sha256 "82e9ce80dbfc878990a8ce8b15d373c2c95b5b8833cb494d938c9e6c672547a4"

  depends_on :macos

  def install
    bin.install "it"
  end

  test do
    # `--version` prints the version without needing pi; verify the CLI runs.
    assert_match(/^it \d+\.\d+\.\d+$/, shell_output("#{bin}/it --version"))
  end
end
