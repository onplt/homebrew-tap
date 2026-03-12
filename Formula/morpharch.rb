class Morpharch < Formula
  desc "Monorepo architecture health visualizer with animated TUI"
  homepage "https://github.com/onplt/morpharch"
  version "1.2.5"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/onplt/morpharch/releases/download/v1.2.5/morpharch-macos-aarch64.tar.gz"
      sha256 "de3cfce65c3bf723f16071d86f57e18234192b733019ac980e5b9e03b2f39eff"
    end
    on_intel do
      url "https://github.com/onplt/morpharch/releases/download/v1.2.5/morpharch-macos-x86_64.tar.gz"
      sha256 "82854be54d456e562590518290441c072f6270eab95fd889ebf26d66fb1fc45c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onplt/morpharch/releases/download/v1.2.5/morpharch-linux-aarch64.tar.gz"
      sha256 "0de55dfdea55cba0bc91a17db0850d47c87d25f60c90dc1289a1232f683b3652"
    end
    on_intel do
      url "https://github.com/onplt/morpharch/releases/download/v1.2.5/morpharch-linux-x86_64.tar.gz"
      sha256 "a6354dfc186eac0f114adc76306bdf334fa410b6d074b55d41204dda0f234bc0"
    end
  end

  def install
    bin.install "morpharch"
  end

  test do
    assert_match "morpharch", shell_output("#{bin}/morpharch --version")
  end
end
