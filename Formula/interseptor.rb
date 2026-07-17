class Interseptor < Formula
  desc "Intercepting HTTP/HTTPS proxy + security toolkit (single static Go binary)"
  homepage "https://github.com/Veyal/interseptor"
  license "MIT"
  version "1.5.3"

  on_arm do
    url "https://github.com/Veyal/interseptor/releases/download/v1.5.3/interseptor_1.5.3_darwin_arm64.tar.gz"
    sha256 "000c51b37b4e4ceb67188dcb595cffd5d1e2c58b060b5053a5af0a07b5850362"
  end
  on_intel do
    url "https://github.com/Veyal/interseptor/releases/download/v1.5.3/interseptor_1.5.3_darwin_amd64.tar.gz"
    sha256 "e2fca198865619b9bd058829b98057e11dc05439218bae1b863fe57c7601bf2e"
  end

  def install
    bin.install "interseptor"
  end

  test do
    assert_match "interseptor v", shell_output("#{bin}/interseptor version")
  end
end
