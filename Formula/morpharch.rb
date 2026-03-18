class Morpharch < Formula
  desc "Monorepo architecture health visualizer with animated TUI"
  homepage "https://github.com/onplt/morpharch"
  version "2.2.3"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/onplt/morpharch/releases/download/v2.2.3/morpharch-macos-aarch64.tar.gz"
      sha256 "993077f19892d99aea5117bd1982167f2024dd362dfc0c877d90b094fcef8733"
    end
    on_intel do
      url "https://github.com/onplt/morpharch/releases/download/v2.2.3/morpharch-macos-x86_64.tar.gz"
      sha256 "ba2138308e69e72e430696cddbb14f7e142ec9595d30399613606eab3423b507"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onplt/morpharch/releases/download/v2.2.3/morpharch-linux-aarch64.tar.gz"
      sha256 "6df9ed70deaf52568cf5470cfc34e0e493bc6cfd550f1f4b24eb4bfbed2fab6b"
    end
    on_intel do
      url "https://github.com/onplt/morpharch/releases/download/v2.2.3/morpharch-linux-x86_64.tar.gz"
      sha256 "ef78f3ac34c5a5345083364208cb6b44554b9e14fb2cdea572878848c941c0e1"
    end
  end

  def install
    bin.install "morpharch"
  end

  test do
    assert_match "morpharch", shell_output("#{bin}/morpharch --version")
  end
end
