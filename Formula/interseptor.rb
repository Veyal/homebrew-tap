class Interseptor < Formula
  desc "Intercepting HTTP/HTTPS proxy + security toolkit (single static Go binary)"
  homepage "https://github.com/Veyal/interseptor"
  license "MIT"
  version "1.7.0"

  on_arm do
    url "https://github.com/Veyal/interseptor/releases/download/v1.7.0/interseptor_1.7.0_darwin_arm64.tar.gz"
    sha256 "3a60d42be88830021e916de72069f00f72e0652a1a7331c4460dde98d0df6725"
  end
  on_intel do
    url "https://github.com/Veyal/interseptor/releases/download/v1.7.0/interseptor_1.7.0_darwin_amd64.tar.gz"
    sha256 "45d028a47cf9774ac576e77c51bd2c34e56942346cdce8f50a1d4d4a2fefc9c6"
  end

  def install
    bin.install "interseptor"
  end

  test do
    assert_match "interseptor v", shell_output("#{bin}/interseptor version")
  end
end
