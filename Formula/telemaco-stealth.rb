class TelemacoStealth < Formula
  desc "Headless browser engine in Rust with stealth anti-fingerprinting"
  homepage "https://github.com/AlbertoBarrago/telemaco"
  url "https://github.com/AlbertoBarrago/telemaco/releases/download/v0.2.4/telemaco-aarch64-macos-stealth.tar.gz"
  sha256 "81147ac1804fd2b26f20b261eb99768acf57d7f4244aa1094268b440c72bf1cd"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/AlbertoBarrago/telemaco/releases/download/v0.2.4/telemaco-aarch64-macos-stealth.tar.gz"
      sha256 "81147ac1804fd2b26f20b261eb99768acf57d7f4244aa1094268b440c72bf1cd"
    end
    on_intel do
      url "https://github.com/AlbertoBarrago/telemaco/releases/download/v0.2.4/telemaco-x86_64-macos-stealth.tar.gz"
      sha256 "b1f148b655af82d2127561dc040a41ee1d6d22b28f9f0a1f646af870ad226899"
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
