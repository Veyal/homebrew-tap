class Interseptor < Formula
  desc "Intercepting HTTP/HTTPS proxy + security toolkit (single static Go binary)"
  homepage "https://github.com/Veyal/interseptor"
  license "MIT"
  version "2.19.0"

  on_arm do
    url "https://github.com/Veyal/interseptor/releases/download/v2.19.0/interseptor_2.19.0_darwin_arm64.tar.gz"
    sha256 "dd63d802b9e6c74f0062dde2dae17bcc9e180aee10ccec09616a0da56aa04db4"
  end
  on_intel do
    url "https://github.com/Veyal/interseptor/releases/download/v2.19.0/interseptor_2.19.0_darwin_amd64.tar.gz"
    sha256 "d67d4c374e68d29c5356694de7fc1944cebc45e7605a22e0124e4e3958bfc778"
  end

  def install
    bin.install "interseptor"
  end

  test do
    assert_match "interseptor v", shell_output("#{bin}/interseptor version")
  end
end
