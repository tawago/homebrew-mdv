class Mercat < Formula
  desc "Fast terminal markdown viewer with Mermaid diagram support"
  homepage "https://github.com/tawago/mercat"
  version "0.2.1"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/tawago/mercat/releases/download/v#{version}/mercat-darwin-aarch64.tar.gz"
      sha256 "e499f3c608fac9db338d90d8b7baf33af95ab10d7dde97e162821f548f677e3c"
    end

    on_intel do
      url "https://github.com/tawago/mercat/releases/download/v#{version}/mercat-darwin-x86_64.tar.gz"
      sha256 "81f2066872db238709e64e81bc96d18fb7eb4ed81e15514a15db2642818d702a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tawago/mercat/releases/download/v#{version}/mercat-linux-aarch64.tar.gz"
      sha256 "18371a2f2457c80d6a724b87654d0dc682aa6aee9332ce4ff0cd4156df29d9ce"
    end

    on_intel do
      url "https://github.com/tawago/mercat/releases/download/v#{version}/mercat-linux-x86_64.tar.gz"
      sha256 "cd5e1b4c7e738ba3b3c358353a1be816442ae96404d54ddc8450edc4256b81b9"
    end
  end

  def install
    bin.install "mercat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mercat --version")
  end
end
