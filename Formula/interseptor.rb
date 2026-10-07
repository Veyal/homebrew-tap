class Interseptor < Formula
  desc "Intercepting HTTP/HTTPS proxy + security toolkit (single static Go binary)"
  homepage "https://github.com/Veyal/interseptor"
  license "MIT"
  version "2.5.0"

  on_arm do
    url "https://github.com/Veyal/interseptor/releases/download/v2.5.0/interseptor_2.5.0_darwin_arm64.tar.gz"
    sha256 "97afefa6989b90656dddc68d11950ed5679e0c96f6a55d23d9f97a9a77ad512f"
  end
  on_intel do
    url "https://github.com/Veyal/interseptor/releases/download/v2.5.0/interseptor_2.5.0_darwin_amd64.tar.gz"
    sha256 "a2d3128629f1ee96cd2bc2d13d1650802587a375fe2e945c8bd7a0cb540eb3e9"
  end

  def install
    bin.install "interseptor"
  end

  test do
    assert_match "interseptor v", shell_output("#{bin}/interseptor version")
  end
end
