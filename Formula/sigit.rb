# frozen_string_literal: true

# Homebrew formula for siGit Code (`sigit` binary).
class Sigit < Formula
  desc 'AI coding agent powered by local LLM via Onde Inference'
  homepage 'https://github.com/getsigit/sigit'
  version '1.3.1'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/getsigit/sigit/releases/download/v1.3.1/sigit-macos-arm64.tar.gz'
      sha256 'dfeb3d25532c825b1af261452ba923787d9ef2a73ed7dc75269721531c4cddbb'
    end
    on_intel do
      url 'https://github.com/getsigit/sigit/releases/download/v1.3.1/sigit-macos-amd64.tar.gz'
      sha256 '15faef88ee6df6c636709b3728557f95c84ca5efe722dbb2e74e4bf60e6018a6'
    end
  end

  def install
    bin.install 'sigit'
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sigit --version", 1)
  end
end
