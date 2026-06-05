class Clipper < Formula
  desc "Keyboard-first macOS screenshots for developer workflows"
  homepage "https://github.com/h3nock/clipper"
  url "https://github.com/h3nock/clipper/releases/download/v0.1.0/clipper-v0.1.0-macos-universal.tar.gz"
  sha256 "60d0d5ad96aea189388fd38f037596740d37211a9ffefba5c05473e84d272e6e"

  depends_on "fzf"
  depends_on macos: :sonoma

  def install
    bin.install "clipper"
  end

  test do
    assert_match "clipper #{version}", shell_output("#{bin}/clipper --version")
  end
end
