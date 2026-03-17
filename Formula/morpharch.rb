class Morpharch < Formula
  desc "Monorepo architecture health visualizer with animated TUI"
  homepage "https://github.com/onplt/morpharch"
  version "2.2.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/onplt/morpharch/releases/download/v2.2.0/morpharch-macos-aarch64.tar.gz"
      sha256 "cbc431f36534e5abf0a3985a00b1bc87ec923014d992e9b8e3dda1b23f60123b"
    end
    on_intel do
      url "https://github.com/onplt/morpharch/releases/download/v2.2.0/morpharch-macos-x86_64.tar.gz"
      sha256 "fdc4de4b2eece48e1435ad43ecaa991cab2a4af36a0908860a48001353f62271"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onplt/morpharch/releases/download/v2.2.0/morpharch-linux-aarch64.tar.gz"
      sha256 "2c3a730f5806e656972f4faa195aa906a32d3f8b78d27ef0676059cb043e656a"
    end
    on_intel do
      url "https://github.com/onplt/morpharch/releases/download/v2.2.0/morpharch-linux-x86_64.tar.gz"
      sha256 "c31140aee21a2eba2e09c39d26da3e99a01a3f2bfc78473a1281cecbbb868acf"
    end
  end

  def install
    bin.install "morpharch"
  end

  test do
    assert_match "morpharch", shell_output("#{bin}/morpharch --version")
  end
end
