class Interseptor < Formula
  desc "Intercepting HTTP/HTTPS proxy + security toolkit (single static Go binary)"
  homepage "https://github.com/Veyal/interseptor"
  license "MIT"
  version "1.7.9"

  on_arm do
    url "https://github.com/Veyal/interseptor/releases/download/v1.7.9/interseptor_1.7.9_darwin_arm64.tar.gz"
    sha256 "515bcccfb62487364d2369afdff832b8fc17dda655420d7b64376001b844991a"
  end
  on_intel do
    url "https://github.com/Veyal/interseptor/releases/download/v1.7.9/interseptor_1.7.9_darwin_amd64.tar.gz"
    sha256 "749d69e770387cf1ea5ba6698d694f0985d02afa38e845a009996c500493c580"
  end

  def install
    bin.install "interseptor"
  end

  test do
    assert_match "interseptor v", shell_output("#{bin}/interseptor version")
  end
end
