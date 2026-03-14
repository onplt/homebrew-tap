class Morpharch < Formula
  desc "Monorepo architecture health visualizer with animated TUI"
  homepage "https://github.com/onplt/morpharch"
  version "2.0.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/onplt/morpharch/releases/download/v2.0.0/morpharch-macos-aarch64.tar.gz"
      sha256 "d1b0f702957aca49ccbf6f50e33a3a1b3c444b3769f2ec2860a0d1368fe85a5a"
    end
    on_intel do
      url "https://github.com/onplt/morpharch/releases/download/v2.0.0/morpharch-macos-x86_64.tar.gz"
      sha256 "7ecc28fded9b40db90ab6c020316d3ad2a2d8f9162ebcbdbf51096c02a66bed4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onplt/morpharch/releases/download/v2.0.0/morpharch-linux-aarch64.tar.gz"
      sha256 "6aa843a81d117921911317befb79662d616cf6704bc840ecb9399fe912d63c8b"
    end
    on_intel do
      url "https://github.com/onplt/morpharch/releases/download/v2.0.0/morpharch-linux-x86_64.tar.gz"
      sha256 "37007e39023387f0401c3aacafe0572ecaee0839cfac2f9830cfe81791430006"
    end
  end

  def install
    bin.install "morpharch"
  end

  test do
    assert_match "morpharch", shell_output("#{bin}/morpharch --version")
  end
end
