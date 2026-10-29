# frozen_string_literal: true

# Homebrew formula for siGit Code (`sigit` binary).
class Sigit < Formula
  desc 'A modular local inference LLM coding agent. Core component of siGit Factory.'
  homepage 'https://sigit.si/code'
  version '1.7.7'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/getsigit/sigit/releases/download/v1.7.7/sigit-macos-arm64.tar.gz'
      sha256 'e45f4354e2399e6ec85d70f7e19c5172165f53769a44f1f8c1888c95d29b4bfe'
    end
    on_intel do
      url 'https://github.com/getsigit/sigit/releases/download/v1.7.7/sigit-macos-amd64.tar.gz'
      sha256 'ddec50229024c81d8336467bf9d8478356e6e9c3e3d09318209772c35231e4e9'
    end
  end

  def install
    bin.install 'sigit'
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sigit --version", 1)
  end
end
