class TelemacoStealth < Formula
  desc "Headless browser engine in Rust with stealth anti-fingerprinting"
  homepage "https://github.com/AlbertoBarrago/telemaco"
  url "https://github.com/AlbertoBarrago/telemaco/releases/download/v0.2.3/telemaco-aarch64-macos-stealth.tar.gz"
  sha256 "2745d00d04b0dbcef4b243a20c1da0be47cf9a53b02f8c1c29663dfd8b25a295"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/AlbertoBarrago/telemaco/releases/download/v0.2.3/telemaco-aarch64-macos-stealth.tar.gz"
      sha256 "2745d00d04b0dbcef4b243a20c1da0be47cf9a53b02f8c1c29663dfd8b25a295"
    end
    on_intel do
      url "https://github.com/AlbertoBarrago/telemaco/releases/download/v0.2.3/telemaco-x86_64-macos-stealth.tar.gz"
      sha256 "3392d11ad232776b89a7b5f94317c7bf38564177c517fbf4f837596fb70d61d7"
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
