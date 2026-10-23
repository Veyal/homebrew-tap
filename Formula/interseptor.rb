class Interseptor < Formula
  desc "Intercepting HTTP/HTTPS proxy + security toolkit (single static Go binary)"
  homepage "https://github.com/Veyal/interseptor"
  license "MIT"
  version "2.18.0"

  on_arm do
    url "https://github.com/Veyal/interseptor/releases/download/v2.18.0/interseptor_2.18.0_darwin_arm64.tar.gz"
    sha256 "d455da06013a7df7406a8ad047871785b31c21a3a2db7553725c925b0495f681"
  end
  on_intel do
    url "https://github.com/Veyal/interseptor/releases/download/v2.18.0/interseptor_2.18.0_darwin_amd64.tar.gz"
    sha256 "fcfad617efd4543f7e196d9a60f1f0ee0a22b7cf350d88913c75c99f4626713e"
  end

  def install
    bin.install "interseptor"
  end

  test do
    assert_match "interseptor v", shell_output("#{bin}/interseptor version")
  end
end
