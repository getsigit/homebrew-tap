# frozen_string_literal: true

# Homebrew formula for siGit Code (`sigit` binary).
class Sigit < Formula
  desc 'AI coding agent powered by local LLM via Onde Inference'
  homepage 'https://github.com/getsigit/sigit'
  version '1.6.2'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/getsigit/sigit/releases/download/v1.6.2/sigit-macos-arm64.tar.gz'
      sha256 'fe4b6ce6a92a58a123e398543050dcf373b1feff1f772cb3a2cc38cc736cb986'
    end
    on_intel do
      url 'https://github.com/getsigit/sigit/releases/download/v1.6.2/sigit-macos-amd64.tar.gz'
      sha256 '431bb408b3ead0085d16611805fe6f44c544ba9e4e3984ed3cebf23c1fbafa25'
    end
  end

  def install
    bin.install 'sigit'
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sigit --version", 1)
  end
end
