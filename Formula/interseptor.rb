class Interseptor < Formula
  desc "Intercepting HTTP/HTTPS proxy + security toolkit (single static Go binary)"
  homepage "https://github.com/Veyal/interseptor"
  license "MIT"
  version "2.15.1"

  on_arm do
    url "https://github.com/Veyal/interseptor/releases/download/v2.15.1/interseptor_2.15.1_darwin_arm64.tar.gz"
    sha256 "625cbbdc871af48c10ef33e2d833acca67f06c8c3c61cdcba5335a80f7edd2a0"
  end
  on_intel do
    url "https://github.com/Veyal/interseptor/releases/download/v2.15.1/interseptor_2.15.1_darwin_amd64.tar.gz"
    sha256 "70d61d93be68780872fc561c504fbabf0757aa406b35b7dcee7828b5394ac7b2"
  end

  def install
    bin.install "interseptor"
  end

  test do
    assert_match "interseptor v", shell_output("#{bin}/interseptor version")
  end
end
