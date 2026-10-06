class Interseptor < Formula
  desc "Intercepting HTTP/HTTPS proxy + security toolkit (single static Go binary)"
  homepage "https://github.com/Veyal/interseptor"
  license "MIT"
  version "2.4.1"

  on_arm do
    url "https://github.com/Veyal/interseptor/releases/download/v2.4.1/interseptor_2.4.1_darwin_arm64.tar.gz"
    sha256 "806bb08bb3d5ade084ec1a5e58b27152b70f808ad78416fe5cf3e0715c126323"
  end
  on_intel do
    url "https://github.com/Veyal/interseptor/releases/download/v2.4.1/interseptor_2.4.1_darwin_amd64.tar.gz"
    sha256 "b58e0b5a29a03bb23ecf0c1443dee0515dec625d206cc8b009ee79461f410870"
  end

  def install
    bin.install "interseptor"
  end

  test do
    assert_match "interseptor v", shell_output("#{bin}/interseptor version")
  end
end
