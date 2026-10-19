class Telemaco < Formula
  desc "Headless browser engine in Rust, a drop-in replacement for headless Chrome"
  homepage "https://github.com/AlbertoBarrago/telemaco"
  url "https://github.com/AlbertoBarrago/telemaco/releases/download/v0.2.4/telemaco-aarch64-macos.tar.gz"
  sha256 "bb6f622f0f35d0c00f785a7f962e8f05a30ea9302954f37eaa2dd9b54eb5960c"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/AlbertoBarrago/telemaco/releases/download/v0.2.4/telemaco-aarch64-macos.tar.gz"
      sha256 "bb6f622f0f35d0c00f785a7f962e8f05a30ea9302954f37eaa2dd9b54eb5960c"
    end
    on_intel do
      url "https://github.com/AlbertoBarrago/telemaco/releases/download/v0.2.4/telemaco-x86_64-macos.tar.gz"
      sha256 "8463a6194d2c7e1a5d40ceaffde831baf6588153bcc34b1768bebfcf842de231"
    end
  end

  def install
    bin.install "telemaco"
    bin.install "telemaco-worker"
  end

  test do
    assert_match "telemaco", shell_output("#{bin}/telemaco --help")
  end
end
