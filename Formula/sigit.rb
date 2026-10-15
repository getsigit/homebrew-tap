# frozen_string_literal: true

# Homebrew formula for siGit Code (`sigit` binary).
class Sigit < Formula
  desc 'A modular local inference LLM coding agent. Core component of siGit Factory.'
  homepage 'https://sigit.si/code'
  version '1.7.0'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/getsigit/sigit/releases/download/v1.7.0/sigit-macos-arm64.tar.gz'
      sha256 'deb2af96ae7a0c953a3309d9768262768244e53b8c74fa38f37431b0cc8dd697'
    end
    on_intel do
      url 'https://github.com/getsigit/sigit/releases/download/v1.7.0/sigit-macos-amd64.tar.gz'
      sha256 '746693a94266e7897036ee3f387208d0a12ce0bad2452b2f3c95ab67ebe9887e'
    end
  end

  def install
    bin.install 'sigit'
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sigit --version", 1)
  end
end
