# frozen_string_literal: true

# Homebrew formula for siGit Code (`sigit` binary).
class Sigit < Formula
  desc 'A modular local inference LLM coding agent. Core component of siGit Factory.'
  homepage 'https://sigit.si/code'
  version '1.7.2'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/getsigit/sigit/releases/download/v1.7.2/sigit-macos-arm64.tar.gz'
      sha256 '8eb6dce664e3011b3476100497ba687d7bb6029e185bd730501420e97613dddb'
    end
    on_intel do
      url 'https://github.com/getsigit/sigit/releases/download/v1.7.2/sigit-macos-amd64.tar.gz'
      sha256 '68e1140043b044507677b1f1b467e83d89cfaa91072eeb1d78c26f5e3b000772'
    end
  end

  def install
    bin.install 'sigit'
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sigit --version", 1)
  end
end
