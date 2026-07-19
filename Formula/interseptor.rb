class Interseptor < Formula
  desc "Intercepting HTTP/HTTPS proxy + security toolkit (single static Go binary)"
  homepage "https://github.com/Veyal/interseptor"
  license "MIT"
  version "1.6.0"

  on_arm do
    url "https://github.com/Veyal/interseptor/releases/download/v1.6.0/interseptor_1.6.0_darwin_arm64.tar.gz"
    sha256 "63ebe4a04ec9236e045c04354034269342be17eebdfcc3078bd46224e3828f51"
  end
  on_intel do
    url "https://github.com/Veyal/interseptor/releases/download/v1.6.0/interseptor_1.6.0_darwin_amd64.tar.gz"
    sha256 "77e83791bdf9164bc617190fdc833f465ccd6da88498bfdd9e3a3f54deeb2c00"
  end

  def install
    bin.install "interseptor"
  end

  test do
    assert_match "interseptor v", shell_output("#{bin}/interseptor version")
  end
end
