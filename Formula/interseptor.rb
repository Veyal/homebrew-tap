class Interseptor < Formula
  desc "Intercepting HTTP/HTTPS proxy + security toolkit (single static Go binary)"
  homepage "https://github.com/Veyal/interseptor"
  license "MIT"
  version "2.8.0"

  on_arm do
    url "https://github.com/Veyal/interseptor/releases/download/v2.8.0/interseptor_2.8.0_darwin_arm64.tar.gz"
    sha256 "d3a52acb5495eea3db100d850403bc8a0615fb596e87c42412f76381d5adb2f0"
  end
  on_intel do
    url "https://github.com/Veyal/interseptor/releases/download/v2.8.0/interseptor_2.8.0_darwin_amd64.tar.gz"
    sha256 "58913efdab7594c75288f43f5df30de8773c215a973b90f0ca853c2821df2903"
  end

  def install
    bin.install "interseptor"
  end

  test do
    assert_match "interseptor v", shell_output("#{bin}/interseptor version")
  end
end
