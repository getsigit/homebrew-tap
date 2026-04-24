# frozen_string_literal: true

# Homebrew formula for siGit Code (`sigit` binary).
# Updated automatically by CI — do not edit manually.
class Sigit < Formula
  desc 'AI coding agent powered by local LLM via Onde Inference'
  homepage 'https://github.com/getsigit/sigit'
  version '0.1.1'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/getsigit/sigit/releases/download/v0.1.1/sigit-macos-arm64.tar.gz'
      sha256 'PLACEHOLDER'
    end
    on_intel do
      url 'https://github.com/getsigit/sigit/releases/download/v0.1.1/sigit-macos-amd64.tar.gz'
      sha256 'PLACEHOLDER'
    end
  end

  def install
    bin.install 'sigit'
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sigit --version", 1)
  end
end
