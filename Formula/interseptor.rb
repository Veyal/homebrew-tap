class Interseptor < Formula
  desc "Intercepting HTTP/HTTPS proxy + security toolkit (single static Go binary)"
  homepage "https://github.com/Veyal/interseptor"
  license "MIT"
  version "1.7.1"

  on_arm do
    url "https://github.com/Veyal/interseptor/releases/download/v1.7.1/interseptor_1.7.1_darwin_arm64.tar.gz"
    sha256 "fe2abe92060c7b371cf6408ff2519d1f7beda75cc78d0ef808ce8eb1e3627e93"
  end
  on_intel do
    url "https://github.com/Veyal/interseptor/releases/download/v1.7.1/interseptor_1.7.1_darwin_amd64.tar.gz"
    sha256 "bbca24b35de7a60da9c9a75d8441e954c5579e624ea038d5153f624e588282c3"
  end

  def install
    bin.install "interseptor"
  end

  test do
    assert_match "interseptor v", shell_output("#{bin}/interseptor version")
  end
end
