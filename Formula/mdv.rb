class Mdv < Formula
  desc "Fast terminal markdown viewer with Mermaid diagram support"
  homepage "https://github.com/tawago/mdv"
  version "0.1.2"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/tawago/mdv/releases/download/v#{version}/mdv-darwin-aarch64.tar.gz"
      sha256 "a319bdeb1e84c0afe1765fd85cccc26ae6a0b6f9927c9ea662fd7eda2ffbd96e"
    end

    on_intel do
      url "https://github.com/tawago/mdv/releases/download/v#{version}/mdv-darwin-x86_64.tar.gz"
      sha256 "4091e51adbee889a965dfaac48398011f35450f9f5005b845bb785ae49b842f7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tawago/mdv/releases/download/v#{version}/mdv-linux-aarch64.tar.gz"
      sha256 "4ab0038a1ca9e1c373ce6eb7c9f9ac52b404a6b5902e65abdaa66de7261ed9bd"
    end

    on_intel do
      url "https://github.com/tawago/mdv/releases/download/v#{version}/mdv-linux-x86_64.tar.gz"
      sha256 "cf856fa588131f61a2f97a3645d34d07a55f4ecb1080d9805b4289979e654571"
    end
  end

  def install
    bin.install "mdv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdv --version")
  end
end
