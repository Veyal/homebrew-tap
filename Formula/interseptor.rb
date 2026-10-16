class Interseptor < Formula
  desc "Intercepting HTTP/HTTPS proxy + security toolkit (single static Go binary)"
  homepage "https://github.com/Veyal/interseptor"
  license "MIT"
  version "2.15.0"

  on_arm do
    url "https://github.com/Veyal/interseptor/releases/download/v2.15.0/interseptor_2.15.0_darwin_arm64.tar.gz"
    sha256 "10b5e3e220e6cb9c6deb7fae5fefba5c2cd98811dbd272398e25a52d289e5bca"
  end
  on_intel do
    url "https://github.com/Veyal/interseptor/releases/download/v2.15.0/interseptor_2.15.0_darwin_amd64.tar.gz"
    sha256 "1997b59e59db3787666c186f7cff6f021670250952eac23cbc8b3d6acdf5d7cf"
  end

  def install
    bin.install "interseptor"
  end

  test do
    assert_match "interseptor v", shell_output("#{bin}/interseptor version")
  end
end
