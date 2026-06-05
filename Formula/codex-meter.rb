class CodexMeter < Formula
  desc "Lightweight terminal dashboard for Codex usage"
  homepage "https://github.com/h3nock/codex-meter"
  version "0.1.1"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/h3nock/codex-meter/releases/download/v0.1.1/codex-meter-v0.1.1-macos-aarch64.tar.gz"
    sha256 "cbd64f13eafc13f32f5d98706c8dd9933a320161868210d21fe202e6136f322f"
  else
    url "https://github.com/h3nock/codex-meter/releases/download/v0.1.1/codex-meter-v0.1.1-macos-x86_64.tar.gz"
    sha256 "140755dc871323bd8c396b7d65b7bb1b7872dfb40074078f95c1ece119c4e3a1"
  end

  depends_on :macos

  def install
    bin.install "codex-meter"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codex-meter --version")
  end
end
