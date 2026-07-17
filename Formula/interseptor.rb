class Interseptor < Formula
  desc "Intercepting HTTP/HTTPS proxy + security toolkit (single static Go binary)"
  homepage "https://github.com/Veyal/interseptor"
  license "MIT"
  version "1.5.4"

  on_arm do
    url "https://github.com/Veyal/interseptor/releases/download/v1.5.4/interseptor_1.5.4_darwin_arm64.tar.gz"
    sha256 "f044656bdee26cf528421269cc6c16dcda946842b201e12b702455985b696e68"
  end
  on_intel do
    url "https://github.com/Veyal/interseptor/releases/download/v1.5.4/interseptor_1.5.4_darwin_amd64.tar.gz"
    sha256 "ba3d2e318505325b91d006743d7845f5bd5b4c4049bf1bbf76b6c09072c4b210"
  end

  def install
    bin.install "interseptor"
  end

  test do
    assert_match "interseptor v", shell_output("#{bin}/interseptor version")
  end
end
