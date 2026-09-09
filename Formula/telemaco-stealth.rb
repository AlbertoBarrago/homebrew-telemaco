class TelemacoStealth < Formula
  desc "Headless browser engine in Rust with stealth anti-fingerprinting"
  homepage "https://github.com/AlbertoBarrago/telemaco"
  url "https://github.com/AlbertoBarrago/telemaco/releases/download/v0.2.1/telemaco-aarch64-macos-stealth.tar.gz"
  sha256 "3612d675e1693078f662bc4699eb2b786a46431afc61a9f48352fbd99a1a6bae"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/AlbertoBarrago/telemaco/releases/download/v0.2.1/telemaco-aarch64-macos-stealth.tar.gz"
      sha256 "3612d675e1693078f662bc4699eb2b786a46431afc61a9f48352fbd99a1a6bae"
    end
    on_intel do
      url "https://github.com/AlbertoBarrago/telemaco/releases/download/v0.2.1/telemaco-x86_64-macos-stealth.tar.gz"
      sha256 "c6dcf609bfdaa89ef160092603d015c7880a4f042027973d3b919ed28a1a2e61"
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
