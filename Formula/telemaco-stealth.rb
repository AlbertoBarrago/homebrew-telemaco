class TelemacoStealth < Formula
  desc "Headless browser engine in Rust with stealth anti-fingerprinting"
  homepage "https://github.com/AlbertoBarrago/telemaco"
  url "https://github.com/AlbertoBarrago/telemaco/releases/download/v0.2.5/telemaco-aarch64-macos-stealth.tar.gz"
  sha256 "d2efc12e056f2d4431b6cc9cc09af07f6a422a6d46d712e3c0babbd4e26be24b"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/AlbertoBarrago/telemaco/releases/download/v0.2.5/telemaco-aarch64-macos-stealth.tar.gz"
      sha256 "d2efc12e056f2d4431b6cc9cc09af07f6a422a6d46d712e3c0babbd4e26be24b"
    end
    on_intel do
      url "https://github.com/AlbertoBarrago/telemaco/releases/download/v0.2.5/telemaco-x86_64-macos-stealth.tar.gz"
      sha256 "624a543f117cd2495124fb6c6e85e2ec08ead8dc04b471d9bdf7f6599334c1ab"
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
