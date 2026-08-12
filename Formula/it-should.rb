class ItShould < Formula
  desc "Turn a plain-English request into one approved shell command"
  homepage "https://github.com/dowhilelabs/it-should"
  version "0.1.0"
  url "https://github.com/dowhilelabs/it-should/releases/download/v0.1.0/it-aarch64-apple-darwin.tar.gz"
  # SHA-256 of it-aarch64-apple-darwin.tar.gz (v0.1.0 release).
  sha256 "d72b7e4a42bec6ef28a4a209ef7cf3b75aca395377eec77437d92ce9ab117ea7"

  depends_on :macos

  def install
    bin.install "it"
  end

  test do
    # `--version` prints the version without needing pi; verify the CLI runs.
    assert_match(/^it \d+\.\d+\.\d+$/, shell_output("#{bin}/it --version"))
  end
end
