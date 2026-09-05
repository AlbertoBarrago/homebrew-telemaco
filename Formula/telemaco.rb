class Telemaco < Formula
  desc "Headless browser engine in Rust, a drop-in replacement for headless Chrome"
  homepage "https://github.com/AlbertoBarrago/telemaco"
  url "https://github.com/AlbertoBarrago/telemaco/releases/download/v0.2.0/telemaco-aarch64-macos.tar.gz"
  sha256 "eff43a6bab23c38713863cda74309a8f2c9c42de622616b8cac411a2ef2c2dc3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/AlbertoBarrago/telemaco/releases/download/v0.2.0/telemaco-aarch64-macos.tar.gz"
      sha256 "58160b9b1bb1e95e3b2547d87542f2b5c8aa5c913f008071a1d005605a9081e7"
    end
    on_intel do
      url "https://github.com/AlbertoBarrago/telemaco/releases/download/v0.2.0/telemaco-x86_64-macos.tar.gz"
      sha256 "df10c5cafd6187f8db292c9d68497db8bc3c0943e0336d0c18434d829bb7b9d4"
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
