class Mdv < Formula
  desc "Fast terminal markdown viewer with Mermaid diagram support"
  homepage "https://github.com/tawago/mdv"
  version "0.1.3"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/tawago/mdv/releases/download/v#{version}/mdv-darwin-aarch64.tar.gz"
      sha256 "705e11fc15e50bab2bd3f60dfba3df94f6dd2a814672068fd5641ce3d059ba27"
    end

    on_intel do
      url "https://github.com/tawago/mdv/releases/download/v#{version}/mdv-darwin-x86_64.tar.gz"
      sha256 "b680e4fc51725c4ca484c1b19d880fac54cc22287280ee3c10b3d4eb9672caca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tawago/mdv/releases/download/v#{version}/mdv-linux-aarch64.tar.gz"
      sha256 "1349201e952565cda56b318579d1dd5b95ff68fcda9728d829a75f6c1de460c8"
    end

    on_intel do
      url "https://github.com/tawago/mdv/releases/download/v#{version}/mdv-linux-x86_64.tar.gz"
      sha256 "6ee591dc17a8186006df018d6dee769775583d90e3e7f8d1b374589e59c683a1"
    end
  end

  def install
    bin.install "mdv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdv --version")
  end
end
