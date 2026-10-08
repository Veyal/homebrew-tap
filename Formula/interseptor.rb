class Interseptor < Formula
  desc "Intercepting HTTP/HTTPS proxy + security toolkit (single static Go binary)"
  homepage "https://github.com/Veyal/interseptor"
  license "MIT"
  version "2.8.1"

  on_arm do
    url "https://github.com/Veyal/interseptor/releases/download/v2.8.1/interseptor_2.8.1_darwin_arm64.tar.gz"
    sha256 "ad4e12d6f5d37d8921854654603c0848eee6a24427a95c35481a5ab7561be2fa"
  end
  on_intel do
    url "https://github.com/Veyal/interseptor/releases/download/v2.8.1/interseptor_2.8.1_darwin_amd64.tar.gz"
    sha256 "42916b9a3216740777cf250d26391917942ddb0ddc1c352a4222f1e8e40b9e0b"
  end

  def install
    bin.install "interseptor"
  end

  test do
    assert_match "interseptor v", shell_output("#{bin}/interseptor version")
  end
end
