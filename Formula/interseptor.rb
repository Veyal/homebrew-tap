class Interseptor < Formula
  desc "Intercepting HTTP/HTTPS proxy + security toolkit (single static Go binary)"
  homepage "https://github.com/Veyal/interseptor"
  license "MIT"
  version "2.9.0"

  on_arm do
    url "https://github.com/Veyal/interseptor/releases/download/v2.9.0/interseptor_2.9.0_darwin_arm64.tar.gz"
    sha256 "e4c3abb966039b1f9c8ba2b45fc0af724b91bc76bd80e12d5e23fdbfcaac0e31"
  end
  on_intel do
    url "https://github.com/Veyal/interseptor/releases/download/v2.9.0/interseptor_2.9.0_darwin_amd64.tar.gz"
    sha256 "ba9e6616e4bf376f1f6482ea3991203921a0c033ebd0d49a841cd1240ffad24d"
  end

  def install
    bin.install "interseptor"
  end

  test do
    assert_match "interseptor v", shell_output("#{bin}/interseptor version")
  end
end
