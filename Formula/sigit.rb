# frozen_string_literal: true

# Homebrew formula for siGit Code (`sigit` binary).
class Sigit < Formula
  desc 'A modular local inference LLM coding agent. Core component of siGit Factory.'
  homepage 'https://sigit.si/code'
  version '1.7.4'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/getsigit/sigit/releases/download/v1.7.4/sigit-macos-arm64.tar.gz'
      sha256 '6727e6eb77a9d97ba349dae2c97e349990fdac380f6f008a383eef914f0a5403'
    end
    on_intel do
      url 'https://github.com/getsigit/sigit/releases/download/v1.7.4/sigit-macos-amd64.tar.gz'
      sha256 'c32bcade6eb0d7d6645a5b86ce4a71e9bc7fd933993accf4e62c7431c4a8e791'
    end
  end

  def install
    bin.install 'sigit'
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sigit --version", 1)
  end
end
