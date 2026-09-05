class TelemacoStealth < Formula
  desc "Headless browser engine in Rust with stealth anti-fingerprinting"
  homepage "https://github.com/AlbertoBarrago/telemaco"
  url "https://github.com/AlbertoBarrago/telemaco/releases/download/v0.2.0/telemaco-aarch64-macos-stealth.tar.gz"
  sha256 "b22ac46d18801adc05a830d6badfbcc33ec1cacc4ca4ccfe40c0f28f26e31b53"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/AlbertoBarrago/telemaco/releases/download/v0.2.0/telemaco-aarch64-macos-stealth.tar.gz"
      sha256 "b22ac46d18801adc05a830d6badfbcc33ec1cacc4ca4ccfe40c0f28f26e31b53"
    end
    on_intel do
      url "https://github.com/AlbertoBarrago/telemaco/releases/download/v0.2.0/telemaco-x86_64-macos-stealth.tar.gz"
      sha256 "ad61282fce2b74825b6b73d8f23b7490e26d0011ef9f06b33e0eb94c019f9eae"
    end
  end

  def install
    bin.install "telemaco" => "telemaco-stealth"
    bin.install "telemaco-worker" => "telemaco-worker-stealth"
  end

  test do
    assert_match "telemaco", shell_output("#{bin}/telemaco-stealth --help")
  end
end
