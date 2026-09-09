class Telemaco < Formula
  desc "Headless browser engine in Rust, a drop-in replacement for headless Chrome"
  homepage "https://github.com/AlbertoBarrago/telemaco"
  url "https://github.com/AlbertoBarrago/telemaco/releases/download/v0.2.1/telemaco-aarch64-macos.tar.gz"
  sha256 "45ebc5944d49b2921820e0b7e8da719ea8ad4a026a49242b803616c2dba430ad"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/AlbertoBarrago/telemaco/releases/download/v0.2.1/telemaco-aarch64-macos.tar.gz"
      sha256 "45ebc5944d49b2921820e0b7e8da719ea8ad4a026a49242b803616c2dba430ad"
    end
    on_intel do
      url "https://github.com/AlbertoBarrago/telemaco/releases/download/v0.2.1/telemaco-x86_64-macos.tar.gz"
      sha256 "cd10297fcf82bf5c16c13ebe369833ac24204430a13ef345784f472f02244c38"
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
