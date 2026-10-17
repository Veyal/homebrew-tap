class Interseptor < Formula
  desc "Intercepting HTTP/HTTPS proxy + security toolkit (single static Go binary)"
  homepage "https://github.com/Veyal/interseptor"
  license "MIT"
  version "2.16.0"

  on_arm do
    url "https://github.com/Veyal/interseptor/releases/download/v2.16.0/interseptor_2.16.0_darwin_arm64.tar.gz"
    sha256 "50f6ed1d89f44edc85fea062d573093f07eb9c4ca7647d1eda182b912383be02"
  end
  on_intel do
    url "https://github.com/Veyal/interseptor/releases/download/v2.16.0/interseptor_2.16.0_darwin_amd64.tar.gz"
    sha256 "4522f71c10bd898b1a4bea1832f34438ba9b96666d799f8f477452b7ad1c4d42"
  end

  def install
    bin.install "interseptor"
  end

  test do
    assert_match "interseptor v", shell_output("#{bin}/interseptor version")
  end
end
