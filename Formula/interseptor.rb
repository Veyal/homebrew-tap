class Interseptor < Formula
  desc "Intercepting HTTP/HTTPS proxy + security toolkit (single static Go binary)"
  homepage "https://github.com/Veyal/interseptor"
  license "MIT"
  version "2.18.1"

  on_arm do
    url "https://github.com/Veyal/interseptor/releases/download/v2.18.1/interseptor_2.18.1_darwin_arm64.tar.gz"
    sha256 "c6019bed7561896f73373b3383378a4ca187b51657ef3f3c2bb7a7ec16ee2533"
  end
  on_intel do
    url "https://github.com/Veyal/interseptor/releases/download/v2.18.1/interseptor_2.18.1_darwin_amd64.tar.gz"
    sha256 "2c99354d9af6ba30e5ca8217450dc150c387c54c26f271230636ccb9e072e8b1"
  end

  def install
    bin.install "interseptor"
  end

  test do
    assert_match "interseptor v", shell_output("#{bin}/interseptor version")
  end
end
