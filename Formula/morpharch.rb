class Morpharch < Formula
  desc "Monorepo architecture health visualizer with animated TUI"
  homepage "https://github.com/onplt/morpharch"
  version "2.2.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/onplt/morpharch/releases/download/v2.2.1/morpharch-macos-aarch64.tar.gz"
      sha256 "11c1b172a4f31a0a0a3920af436188d3814058ee4135322d95cfbed52902fe6e"
    end
    on_intel do
      url "https://github.com/onplt/morpharch/releases/download/v2.2.1/morpharch-macos-x86_64.tar.gz"
      sha256 "01683355073843fe2a6fdb2f15c7ab4532683da9b38ff4c7ec9a609bb65658b5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onplt/morpharch/releases/download/v2.2.1/morpharch-linux-aarch64.tar.gz"
      sha256 "4fa4200b738aeeec883f6b7b61c04dd8d52239299361aa4f66571b81c97394db"
    end
    on_intel do
      url "https://github.com/onplt/morpharch/releases/download/v2.2.1/morpharch-linux-x86_64.tar.gz"
      sha256 "bab19e3e351b223c053124c91df1981c3979e6fffd6522dface7497439cfe119"
    end
  end

  def install
    bin.install "morpharch"
  end

  test do
    assert_match "morpharch", shell_output("#{bin}/morpharch --version")
  end
end
