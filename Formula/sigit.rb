# frozen_string_literal: true

# Homebrew formula for siGit Code (`sigit` binary).
class Sigit < Formula
  desc 'AI coding agent powered by local LLM via Onde Inference'
  homepage 'https://github.com/getsigit/sigit'
  version '1.6.1'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/getsigit/sigit/releases/download/v1.6.1/sigit-macos-arm64.tar.gz'
      sha256 'e7a811b0d66475845687193518befd38beaa0b1d1dfb2c5de2ba36913b456b2c'
    end
    on_intel do
      url 'https://github.com/getsigit/sigit/releases/download/v1.6.1/sigit-macos-amd64.tar.gz'
      sha256 '831554b02e21de67f691e13410e4e04561004f7dc94d60cf188b78b9e7f6229f'
    end
  end

  def install
    bin.install 'sigit'
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sigit --version", 1)
  end
end
