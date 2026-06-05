class CodexMeter < Formula
  desc "Lightweight terminal dashboard for Codex usage"
  homepage "https://github.com/h3nock/codex-meter"
  version "0.1.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/h3nock/codex-meter/releases/download/v0.1.0/codex-meter-v0.1.0-macos-aarch64.tar.gz"
    sha256 "ddfdb45a7ddee238fc710f02bb4a32b5941c33df103d4e7cb042242fdc247823"
  else
    url "https://github.com/h3nock/codex-meter/releases/download/v0.1.0/codex-meter-v0.1.0-macos-x86_64.tar.gz"
    sha256 "1b2f1859926167ae8f7475c6d8e80afa1da83c2c2ccceabc908a0239798e3b2f"
  end

  depends_on :macos

  def install
    bin.install "codex-meter"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codex-meter --version")
  end
end
