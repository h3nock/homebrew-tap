class Winpick < Formula
  desc "macOS CLI for selecting and focusing windows"
  homepage "https://github.com/h3nock/winpick"
  url "https://github.com/h3nock/winpick/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "68454c3c453de721a55a422767c88735400790dbaba9898d11704f4fb5724b2d"
  head "https://github.com/h3nock/winpick.git", branch: "main"

  depends_on xcode: :build
  depends_on "fzf"
  depends_on :macos

  def install
    system "swift", "build", "--configuration", "release", "--disable-sandbox", "--product", "winpick"
    bin.install ".build/release/winpick"
  end

  test do
    assert_match "winpick 0.1.0", shell_output("#{bin}/winpick --version")
  end
end
