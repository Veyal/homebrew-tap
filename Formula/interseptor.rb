class Interseptor < Formula
  desc "Intercepting HTTP/HTTPS proxy + security toolkit (single static Go binary)"
  homepage "https://github.com/Veyal/interseptor"
  license "MIT"
  version "2.21.0"

  on_arm do
    url "https://github.com/Veyal/interseptor/releases/download/v2.21.0/interseptor_2.21.0_darwin_arm64.tar.gz"
    sha256 "63640cbc52d6d015c9f27bfd24a589aa3f78bfb8e44c8acc9fc1332439273b8f"
  end
  on_intel do
    url "https://github.com/Veyal/interseptor/releases/download/v2.21.0/interseptor_2.21.0_darwin_amd64.tar.gz"
    sha256 "ec412926a99d5b0194ad9c97307c033f02a2a2096944a69c6789d3a40cbc8a7d"
  end

  def install
    bin.install "interseptor"
  end

  test do
    assert_match "interseptor v", shell_output("#{bin}/interseptor version")
  end
end
