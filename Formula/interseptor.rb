class Interseptor < Formula
  desc "Intercepting HTTP/HTTPS proxy + security toolkit (single static Go binary)"
  homepage "https://github.com/Veyal/interseptor"
  license "MIT"
  version "1.5.2"

  on_arm do
    url "https://github.com/Veyal/interseptor/releases/download/v1.5.2/interseptor_1.5.2_darwin_arm64.tar.gz"
    sha256 "639e4499b20fb77090c098261794ca70ec4d33446d1a1fd887ef02feaa5d606d"
  end
  on_intel do
    url "https://github.com/Veyal/interseptor/releases/download/v1.5.2/interseptor_1.5.2_darwin_amd64.tar.gz"
    sha256 "44bffaa769fb10b51aa7c14397b74aace2eb13a5abcdb180c480bf4fce92b965"
  end

  def install
    bin.install "interseptor"
  end

  test do
    assert_match "interseptor v", shell_output("#{bin}/interseptor version")
  end
end
