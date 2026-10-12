# frozen_string_literal: true

# Homebrew formula for siGit Code (`sigit` binary).
class Sigit < Formula
  desc 'AI coding agent powered by local LLM via Onde Inference'
  homepage 'https://github.com/getsigit/sigit'
  version '1.6.8'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/getsigit/sigit/releases/download/v1.6.8/sigit-macos-arm64.tar.gz'
      sha256 '70a8a47d16202ea41f01a3c77e1bd0e9438e3ea84dc308b8a1a25f3f59e6db6f'
    end
    on_intel do
      url 'https://github.com/getsigit/sigit/releases/download/v1.6.8/sigit-macos-amd64.tar.gz'
      sha256 'cc6fb6777be10ed0a1f2bb8867dea8c8417866e225aebe0e9059500bf02ab97f'
    end
  end

  def install
    bin.install 'sigit'
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sigit --version", 1)
  end
end
