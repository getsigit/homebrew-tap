# frozen_string_literal: true

# Homebrew formula for siGit Code (`sigit` binary).
class Sigit < Formula
  desc 'AI coding agent powered by local LLM via Onde Inference'
  homepage 'https://github.com/getsigit/sigit'
  version '1.0.1'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/getsigit/sigit/releases/download/v1.0.1/sigit-macos-arm64.tar.gz'
      sha256 '001fafe71b0eeb8c9e6d2f1d15c90f664598f879e88205a831189f82ca9e7087'
    end
    on_intel do
      url 'https://github.com/getsigit/sigit/releases/download/v1.0.1/sigit-macos-amd64.tar.gz'
      sha256 '73414bebe2809b73793bba9dd8a14c2a6dabfcab9bd27cf247b58a9bf7bc953e'
    end
  end

  def install
    bin.install 'sigit'
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sigit --version", 1)
  end
end
