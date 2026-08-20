class Interseptor < Formula
  desc "Intercepting HTTP/HTTPS proxy + security toolkit (single static Go binary)"
  homepage "https://github.com/Veyal/interseptor"
  license "MIT"
  version "2.0.1"

  on_arm do
    url "https://github.com/Veyal/interseptor/releases/download/v2.0.1/interseptor_2.0.1_darwin_arm64.tar.gz"
    sha256 "a74244bfdd2c1561ec6a62db109b7b6e74a8f75c5108699a5c36577761fc4ab5"
  end
  on_intel do
    url "https://github.com/Veyal/interseptor/releases/download/v2.0.1/interseptor_2.0.1_darwin_amd64.tar.gz"
    sha256 "9d0f00be4a668b92adf025ce30e7a7f1ccbc7ce5a81349b4d90ca6bf6b6f4b6c"
  end

  def install
    bin.install "interseptor"
  end

  test do
    assert_match "interseptor v", shell_output("#{bin}/interseptor version")
  end
end
