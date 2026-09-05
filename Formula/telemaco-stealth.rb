class TelemacoStealth < Formula
  desc "Headless browser engine in Rust with stealth anti-fingerprinting"
  homepage "https://github.com/AlbertoBarrago/telemaco"
  url "https://github.com/AlbertoBarrago/telemaco/releases/download/v0.1.3/telemaco-aarch64-macos-stealth.tar.gz"
  sha256 "bce176d2c40cef3e9784806dd8fa00f79aafe5af1458b853f0162170c24f1718"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/AlbertoBarrago/telemaco/releases/download/v0.1.3/telemaco-aarch64-macos-stealth.tar.gz"
      sha256 "bce176d2c40cef3e9784806dd8fa00f79aafe5af1458b853f0162170c24f1718"
    end
    on_intel do
      url "https://github.com/AlbertoBarrago/telemaco/releases/download/v0.1.3/telemaco-x86_64-macos-stealth.tar.gz"
      sha256 "574181afeeae0fc331a18754e1217be93bb0505c8e4435b5a3af9ef095f979ee"
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
