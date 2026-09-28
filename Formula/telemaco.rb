class Telemaco < Formula
  desc "Headless browser engine in Rust, a drop-in replacement for headless Chrome"
  homepage "https://github.com/AlbertoBarrago/telemaco"
  url "https://github.com/AlbertoBarrago/telemaco/releases/download/v0.2.2/telemaco-aarch64-macos.tar.gz"
  sha256 "7051a333e86c38eedda33dd9c4b0ca96290bcaae7ad9911e4c462afd6736a6ae"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/AlbertoBarrago/telemaco/releases/download/v0.2.2/telemaco-aarch64-macos.tar.gz"
      sha256 "7051a333e86c38eedda33dd9c4b0ca96290bcaae7ad9911e4c462afd6736a6ae"
    end
    on_intel do
      url "https://github.com/AlbertoBarrago/telemaco/releases/download/v0.2.2/telemaco-x86_64-macos.tar.gz"
      sha256 "fc95f05b9ea52a08e0de9b6584eb56a32616b6ea2bf6def78e09e5bd450c4a60"
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
