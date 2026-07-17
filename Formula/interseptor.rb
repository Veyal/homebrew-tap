class Interseptor < Formula
  desc "Intercepting HTTP/HTTPS proxy + security toolkit (single static Go binary)"
  homepage "https://github.com/Veyal/interseptor"
  license "MIT"
  version "1.5.1"

  on_arm do
    url "https://github.com/Veyal/interseptor/releases/download/v1.5.1/interseptor_1.5.1_darwin_arm64.tar.gz"
    sha256 "e54a5821c091a30e5a5e8b503b91e945d8a00f08126cb85abe629d6854a26b26"
  end
  on_intel do
    url "https://github.com/Veyal/interseptor/releases/download/v1.5.1/interseptor_1.5.1_darwin_amd64.tar.gz"
    sha256 "26a4c46676cf3016be5159b6dc8db9124dd662c358aac8f3cfe58af3183855ee"
  end

  def install
    bin.install "interseptor"
  end

  test do
    assert_match "interseptor v", shell_output("#{bin}/interseptor version")
  end
end
