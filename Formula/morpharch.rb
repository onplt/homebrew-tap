class Morpharch < Formula
  desc "Monorepo architecture health visualizer with animated TUI"
  homepage "https://github.com/onplt/morpharch"
  version "2.2.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/onplt/morpharch/releases/download/v2.2.2/morpharch-macos-aarch64.tar.gz"
      sha256 "5d2ee874b8503ba092c3722a80585c050dbf6659012fbbf1b84d1dcf35ca0b1b"
    end
    on_intel do
      url "https://github.com/onplt/morpharch/releases/download/v2.2.2/morpharch-macos-x86_64.tar.gz"
      sha256 "4b482a8ddcd3b59315cf07b1487de75a1bc521ac486cbdd5a00d7ba5e65f0fe4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onplt/morpharch/releases/download/v2.2.2/morpharch-linux-aarch64.tar.gz"
      sha256 "61a549bbc259f649d14fe0b6280bfc1023798d5a86234c0fa8700685faa0a3dc"
    end
    on_intel do
      url "https://github.com/onplt/morpharch/releases/download/v2.2.2/morpharch-linux-x86_64.tar.gz"
      sha256 "eaa5705307cdf16153dd4776ee3af3c9b05d5dbd236b0a538113089cd9538f43"
    end
  end

  def install
    bin.install "morpharch"
  end

  test do
    assert_match "morpharch", shell_output("#{bin}/morpharch --version")
  end
end
