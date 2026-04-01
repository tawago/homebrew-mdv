class Mdv < Formula
  desc "Fast terminal markdown viewer with Mermaid diagram support"
  homepage "https://github.com/tawago/mdv"
  version "0.1.1"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/tawago/mdv/releases/download/v#{version}/mdv-darwin-aarch64.tar.gz"
      sha256 "941627259520f7d021e0eba12bc69767fdcfa55162ca85e5d22d230ab8e397f2"
    end

    on_intel do
      url "https://github.com/tawago/mdv/releases/download/v#{version}/mdv-darwin-x86_64.tar.gz"
      sha256 "a0fa342004ebef6f3f0696bc022aa9989e0fe7f6ef2261d64757c70dfad22a38"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tawago/mdv/releases/download/v#{version}/mdv-linux-aarch64.tar.gz"
      sha256 "355bb3060f6d2840b0bb4a7f9112426adf500831e38282275049ec1ff2bbe8c3"
    end

    on_intel do
      url "https://github.com/tawago/mdv/releases/download/v#{version}/mdv-linux-x86_64.tar.gz"
      sha256 "f5c0bab8b3974a6663310d208527cdcfa03bb2bf0de3d522a4fe9fc56b8b421d"
    end
  end

  def install
    bin.install "mdv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdv --version")
  end
end
