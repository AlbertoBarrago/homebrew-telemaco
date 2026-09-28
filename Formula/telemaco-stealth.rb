class TelemacoStealth < Formula
  desc "Headless browser engine in Rust with stealth anti-fingerprinting"
  homepage "https://github.com/AlbertoBarrago/telemaco"
  url "https://github.com/AlbertoBarrago/telemaco/releases/download/v0.2.2/telemaco-aarch64-macos-stealth.tar.gz"
  sha256 "2e30dcc02a8fe2110f1645af74eb3f6d2e512c4e120a0a0a195e08a0001245de"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/AlbertoBarrago/telemaco/releases/download/v0.2.2/telemaco-aarch64-macos-stealth.tar.gz"
      sha256 "2e30dcc02a8fe2110f1645af74eb3f6d2e512c4e120a0a0a195e08a0001245de"
    end
    on_intel do
      url "https://github.com/AlbertoBarrago/telemaco/releases/download/v0.2.2/telemaco-x86_64-macos-stealth.tar.gz"
      sha256 "326ec106ff24d1b0d9abfbf5fa3ab0555aba4075075aae9e09dcacbe5824cb14"
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
