# frozen_string_literal: true

# Homebrew formula for siGit Code (`sigit` binary).
class Sigit < Formula
  desc 'A modular local inference LLM coding agent. Core component of siGit Factory.'
  homepage 'https://sigit.si/code'
  version '1.7.6'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/getsigit/sigit/releases/download/v1.7.6/sigit-macos-arm64.tar.gz'
      sha256 'e6c62d6b6eb8fd2df9b5db897aef4aa1ea0f27baf0825aaadd900c968c5212c0'
    end
    on_intel do
      url 'https://github.com/getsigit/sigit/releases/download/v1.7.6/sigit-macos-amd64.tar.gz'
      sha256 '7b3879d57bd41dc465741acfef7e160651202a8052a1daa297f3f20ea9ce6d7d'
    end
  end

  def install
    bin.install 'sigit'
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sigit --version", 1)
  end
end
