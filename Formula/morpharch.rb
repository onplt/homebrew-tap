class Morpharch < Formula
  desc "Monorepo architecture health visualizer with animated TUI"
  homepage "https://github.com/onplt/morpharch"
  version "2.2.4"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/onplt/morpharch/releases/download/v2.2.4/morpharch-macos-aarch64.tar.gz"
      sha256 "a6050350290c08ba557737d13abe073e770ef24577072a8073739d1b0d36241c"
    end
    on_intel do
      url "https://github.com/onplt/morpharch/releases/download/v2.2.4/morpharch-macos-x86_64.tar.gz"
      sha256 "1672270ba38c55781d675ae0c267dd946340242fd5a7df02b6cc03388a912053"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onplt/morpharch/releases/download/v2.2.4/morpharch-linux-aarch64.tar.gz"
      sha256 "f5935c6d1821d7878b13fea02e3db5e4aaca2950cec6137786a35be0da28f67c"
    end
    on_intel do
      url "https://github.com/onplt/morpharch/releases/download/v2.2.4/morpharch-linux-x86_64.tar.gz"
      sha256 "6248acb10911d12279d12f4e8a488585303a5bdf317ad28b85ee2b60d4bc6d29"
    end
  end

  def install
    bin.install "morpharch"
  end

  test do
    assert_match "morpharch", shell_output("#{bin}/morpharch --version")
  end
end
