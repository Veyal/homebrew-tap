class Interseptor < Formula
  desc "Intercepting HTTP/HTTPS proxy + security toolkit (single static Go binary)"
  homepage "https://github.com/Veyal/interseptor"
  license "MIT"
  version "2.6.0"

  on_arm do
    url "https://github.com/Veyal/interseptor/releases/download/v2.6.0/interseptor_2.6.0_darwin_arm64.tar.gz"
    sha256 "0c09032f1cccb46d60e2485362aa30b43208e6020d078351c0092dd5b9d3e2df"
  end
  on_intel do
    url "https://github.com/Veyal/interseptor/releases/download/v2.6.0/interseptor_2.6.0_darwin_amd64.tar.gz"
    sha256 "37c1e0928b1b67e82f9817bebedda26555a2a832aa13639deb3383cbfc125c31"
  end

  def install
    bin.install "interseptor"
  end

  test do
    assert_match "interseptor v", shell_output("#{bin}/interseptor version")
  end
end
