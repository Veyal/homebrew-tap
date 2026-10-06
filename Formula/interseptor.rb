class Interseptor < Formula
  desc "Intercepting HTTP/HTTPS proxy + security toolkit (single static Go binary)"
  homepage "https://github.com/Veyal/interseptor"
  license "MIT"
  version "2.4.2"

  on_arm do
    url "https://github.com/Veyal/interseptor/releases/download/v2.4.2/interseptor_2.4.2_darwin_arm64.tar.gz"
    sha256 "bb9448732898e0926d950a911bff09c03ab7aceea0ea11805029a41f6961c2c3"
  end
  on_intel do
    url "https://github.com/Veyal/interseptor/releases/download/v2.4.2/interseptor_2.4.2_darwin_amd64.tar.gz"
    sha256 "cc91c1bdf4153814ea5db6999e7455a6d109803f94c195496ea5cd18fa159cd8"
  end

  def install
    bin.install "interseptor"
  end

  test do
    assert_match "interseptor v", shell_output("#{bin}/interseptor version")
  end
end
