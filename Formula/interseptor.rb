class Interseptor < Formula
  desc "Intercepting HTTP/HTTPS proxy + security toolkit (single static Go binary)"
  homepage "https://github.com/Veyal/interseptor"
  license "MIT"
  version "2.20.0"

  on_arm do
    url "https://github.com/Veyal/interseptor/releases/download/v2.20.0/interseptor_2.20.0_darwin_arm64.tar.gz"
    sha256 "550ba40dea1c5b697b459edd08778308a05ce2e4c17291581cce40674305b098"
  end
  on_intel do
    url "https://github.com/Veyal/interseptor/releases/download/v2.20.0/interseptor_2.20.0_darwin_amd64.tar.gz"
    sha256 "47c6330326883350687292df054469f39083926d53fc043213032bbcb2d49814"
  end

  def install
    bin.install "interseptor"
  end

  test do
    assert_match "interseptor v", shell_output("#{bin}/interseptor version")
  end
end
