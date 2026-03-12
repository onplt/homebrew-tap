class Morpharch < Formula
  desc "Monorepo architecture health visualizer with animated TUI"
  homepage "https://github.com/onplt/morpharch"
  version "1.2.6"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/onplt/morpharch/releases/download/v1.2.6/morpharch-macos-aarch64.tar.gz"
      sha256 "cf48723787763f8a9c1711cbaf44793ce2b232f069742c9deda33ae25b74ebbc"
    end
    on_intel do
      url "https://github.com/onplt/morpharch/releases/download/v1.2.6/morpharch-macos-x86_64.tar.gz"
      sha256 "3e0663a996091af98ca5fd7ff4093cd486faf5be0df5c08e130cdff4e74cd1f4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onplt/morpharch/releases/download/v1.2.6/morpharch-linux-aarch64.tar.gz"
      sha256 "cfac6354ae942c82402451fce594202dede56533c181f93f8998d8e25ead95b9"
    end
    on_intel do
      url "https://github.com/onplt/morpharch/releases/download/v1.2.6/morpharch-linux-x86_64.tar.gz"
      sha256 "737ec3340af2336c62c02cad51e3c60846071b067ccc236c9d5213536fa16601"
    end
  end

  def install
    bin.install "morpharch"
  end

  test do
    assert_match "morpharch", shell_output("#{bin}/morpharch --version")
  end
end
