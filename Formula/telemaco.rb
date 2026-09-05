class Telemaco < Formula
  desc "Headless browser engine in Rust, a drop-in replacement for headless Chrome"
  homepage "https://github.com/AlbertoBarrago/telemaco"
  url "https://github.com/AlbertoBarrago/telemaco/releases/download/v0.1.3/telemaco-aarch64-macos.tar.gz"
  sha256 "3d247f1f681d30d4cb3e71a4704bf782a07d99d87934e0a096f82f620f7dec8c"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/AlbertoBarrago/telemaco/releases/download/v0.1.3/telemaco-aarch64-macos.tar.gz"
      sha256 "3d247f1f681d30d4cb3e71a4704bf782a07d99d87934e0a096f82f620f7dec8c"
    end
    on_intel do
      url "https://github.com/AlbertoBarrago/telemaco/releases/download/v0.1.3/telemaco-x86_64-macos.tar.gz"
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
