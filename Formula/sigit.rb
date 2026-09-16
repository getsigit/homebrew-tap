# frozen_string_literal: true

# Homebrew formula for siGit Code (`sigit` binary).
class Sigit < Formula
  desc 'AI coding agent powered by local LLM via Onde Inference'
  homepage 'https://github.com/getsigit/sigit'
  version '1.5.10'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/getsigit/sigit/releases/download/v1.5.10/sigit-macos-arm64.tar.gz'
      sha256 '098ac56df15021bdfe79130208632180bdf2e54a70a38d8607fefd6241217a26'
    end
    on_intel do
      url 'https://github.com/getsigit/sigit/releases/download/v1.5.10/sigit-macos-amd64.tar.gz'
      sha256 '92fa5b2cf1953dc74f83b8ab2b3b0e40fe5f792312d52e9a4374d2765c68d8a6'
    end
  end

  def install
    bin.install 'sigit'
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sigit --version", 1)
  end
end
