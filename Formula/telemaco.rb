class Telemaco < Formula
  desc "Headless browser engine in Rust, a drop-in replacement for headless Chrome"
  homepage "https://github.com/AlbertoBarrago/telemaco"
  url "https://github.com/AlbertoBarrago/telemaco/releases/download/v0.2.5/telemaco-aarch64-macos.tar.gz"
  sha256 "958348d2dafda58dee8ee5dbb0ce33a1167cb2cb1fbe18cdcf224b027bd58138"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/AlbertoBarrago/telemaco/releases/download/v0.2.5/telemaco-aarch64-macos.tar.gz"
      sha256 "958348d2dafda58dee8ee5dbb0ce33a1167cb2cb1fbe18cdcf224b027bd58138"
    end
    on_intel do
      url "https://github.com/AlbertoBarrago/telemaco/releases/download/v0.2.5/telemaco-x86_64-macos.tar.gz"
      sha256 "5e80b13df3508f28c15962ef64c7ca5b97c2e55b4db9a72cec81fcdf8abebfc4"
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
