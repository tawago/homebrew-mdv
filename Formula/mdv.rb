class Mdv < Formula
  desc "Fast terminal markdown viewer with Mermaid diagram support"
  homepage "https://github.com/tawago/mdv"
  version "0.1.4"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/tawago/mdv/releases/download/v#{version}/mdv-darwin-aarch64.tar.gz"
      sha256 "2dcf25f23d6edb1ac0a3210869cfa2007f3a76a87051dee476033bdf8493ebd5"
    end

    on_intel do
      url "https://github.com/tawago/mdv/releases/download/v#{version}/mdv-darwin-x86_64.tar.gz"
      sha256 "a25cb04529b42149e6ecf8298ecf4707f4de96af3ff1d09e03b61770fcf4ea92"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tawago/mdv/releases/download/v#{version}/mdv-linux-aarch64.tar.gz"
      sha256 "e225880c0cde7658603e06a4eead7cbd2aaadbc25cb9b604098a03f9893083f2"
    end

    on_intel do
      url "https://github.com/tawago/mdv/releases/download/v#{version}/mdv-linux-x86_64.tar.gz"
      sha256 "f66db6f707f3a0b1d0b4a3d76e6c05509f8e11ad5fec53988b8acd7d96401fbb"
    end
  end

  def install
    bin.install "mdv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdv --version")
  end
end
