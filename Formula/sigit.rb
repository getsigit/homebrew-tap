# frozen_string_literal: true

# Homebrew formula for siGit Code (`sigit` binary).
class Sigit < Formula
  desc 'A modular local inference LLM coding agent. Core component of siGit Factory.'
  homepage 'https://sigit.si/code'
  version '1.7.5'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/getsigit/sigit/releases/download/v1.7.5/sigit-macos-arm64.tar.gz'
      sha256 'e03532f87a92e8e6ea520431a08925ee686168a736ded4a9d986634f2ea4cd8b'
    end
    on_intel do
      url 'https://github.com/getsigit/sigit/releases/download/v1.7.5/sigit-macos-amd64.tar.gz'
      sha256 '5a215b6731a8ce7c2f99a0f790d0d8d9d6643ac7d6d2f7fb700fca6ed9e39d98'
    end
  end

  def install
    bin.install 'sigit'
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sigit --version", 1)
  end
end
