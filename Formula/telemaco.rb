class Telemaco < Formula
  desc "Headless browser engine in Rust, a drop-in replacement for headless Chrome"
  homepage "https://github.com/AlbertoBarrago/telemaco"
  url "https://github.com/AlbertoBarrago/telemaco/releases/download/v0.2.3/telemaco-aarch64-macos.tar.gz"
  sha256 "d21f3b969c21b17edc4621274b343fed5dad598e33aae9167ccf7ecace2a69ff"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/AlbertoBarrago/telemaco/releases/download/v0.2.3/telemaco-aarch64-macos.tar.gz"
      sha256 "d21f3b969c21b17edc4621274b343fed5dad598e33aae9167ccf7ecace2a69ff"
    end
    on_intel do
      url "https://github.com/AlbertoBarrago/telemaco/releases/download/v0.2.3/telemaco-x86_64-macos.tar.gz"
      sha256 "878481045222de23792f01d976adca65f24e39aeaf3728772a18a93be740d4f7"
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
