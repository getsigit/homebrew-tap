# frozen_string_literal: true

# Homebrew formula for siGit Code (`sigit` binary).
class Sigit < Formula
  desc 'AI coding agent powered by local LLM via Onde Inference'
  homepage 'https://github.com/getsigit/sigit'
  version '1.3.0'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/getsigit/sigit/releases/download/v1.3.0/sigit-macos-arm64.tar.gz'
      sha256 '2d9d83996b3a962770fbf78dfa2fffa0012613b6647fd900e667ffcfb050b8f5'
    end
    on_intel do
      url 'https://github.com/getsigit/sigit/releases/download/v1.3.0/sigit-macos-amd64.tar.gz'
      sha256 '82b1233b726dc6c4ae0bb4a57f5376cb395922fddd15f5f71cc34319002a7022'
    end
  end

  def install
    bin.install 'sigit'
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sigit --version", 1)
  end
end
