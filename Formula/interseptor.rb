class Interseptor < Formula
  desc "Intercepting HTTP/HTTPS proxy + security toolkit (single static Go binary)"
  homepage "https://github.com/Veyal/interseptor"
  license "MIT"
  version "2.23.2"

  on_arm do
    url "https://github.com/Veyal/interseptor/releases/download/v2.23.2/interseptor_2.23.2_darwin_arm64.tar.gz"
    sha256 "a7bb6bf1716c9143b9a9be75a943ad01d30a87703753a59251dd1162b798656f"
  end
  on_intel do
    url "https://github.com/Veyal/interseptor/releases/download/v2.23.2/interseptor_2.23.2_darwin_amd64.tar.gz"
    sha256 "0ebc80bb0eb3f158cc109a784a1f8c0bbd1cc6e428552e49d0bd2035f7c4f107"
  end

  def install
    bin.install "interseptor"
  end

  test do
    assert_match "interseptor v", shell_output("#{bin}/interseptor version")
  end
end
