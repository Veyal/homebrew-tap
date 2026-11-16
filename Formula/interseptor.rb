class Interseptor < Formula
  desc "Intercepting HTTP/HTTPS proxy + security toolkit (single static Go binary)"
  homepage "https://github.com/Veyal/interseptor"
  license "MIT"
  version "2.25.0"

  on_arm do
    url "https://github.com/Veyal/interseptor/releases/download/v2.25.0/interseptor_2.25.0_darwin_arm64.tar.gz"
    sha256 "4154cc435e3961cfe26a658ebdf02bee88270ca45a20e026774f855aa658786a"
  end
  on_intel do
    url "https://github.com/Veyal/interseptor/releases/download/v2.25.0/interseptor_2.25.0_darwin_amd64.tar.gz"
    sha256 "88fa05aa9975d35abe6f65e9cc839a2080584b13a7831472ca292d3057454d24"
  end

  def install
    bin.install "interseptor"
  end

  test do
    assert_match "interseptor v", shell_output("#{bin}/interseptor version")
  end
end
