class Interseptor < Formula
  desc "Intercepting HTTP/HTTPS proxy + security toolkit (single static Go binary)"
  homepage "https://github.com/Veyal/interseptor"
  license "MIT"
  version "2.3.0"

  on_arm do
    url "https://github.com/Veyal/interseptor/releases/download/v2.3.0/interseptor_2.3.0_darwin_arm64.tar.gz"
    sha256 "817c73d4b11333f9834d046c40b64d866119638d73d16d3ef79b7fe8c4787538"
  end
  on_intel do
    url "https://github.com/Veyal/interseptor/releases/download/v2.3.0/interseptor_2.3.0_darwin_amd64.tar.gz"
    sha256 "f23cd68568c1f7e602b6fd153b2efa8f2254b2cb12d01ca985f2ca898a0cc55b"
  end

  def install
    bin.install "interseptor"
  end

  test do
    assert_match "interseptor v", shell_output("#{bin}/interseptor version")
  end
end
