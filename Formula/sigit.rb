# frozen_string_literal: true

# Homebrew formula for siGit Code (`sigit` binary).
class Sigit < Formula
  desc 'AI coding agent powered by local LLM via Onde Inference'
  homepage 'https://github.com/getsigit/sigit'
  version '1.0.0'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/getsigit/sigit/releases/download/v1.0.0/sigit-macos-arm64.tar.gz'
      sha256 '1a0af9ec96d947d7b270ea41da0108be3aa5dbd4843e35b852b268bb883f28df'
    end
    on_intel do
      url 'https://github.com/getsigit/sigit/releases/download/v1.0.0/sigit-macos-amd64.tar.gz'
      sha256 'd4d098487d8155c8b51926ac956a7789654c5ba2a19eee16574a941a69bed6c4'
    end
  end

  def install
    bin.install 'sigit'
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sigit --version", 1)
  end
end
