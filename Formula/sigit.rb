# frozen_string_literal: true

# Homebrew formula for siGit Code (`sigit` binary).
class Sigit < Formula
  desc 'A modular local inference LLM coding agent. Core component of siGit Factory.'
  homepage 'https://sigit.si/code'
  version '1.7.3'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/getsigit/sigit/releases/download/v1.7.3/sigit-macos-arm64.tar.gz'
      sha256 '2f29c8c7ee1f48b3a9cae83af3d67c20736c3451f0210fbe3ff0204147a1863b'
    end
    on_intel do
      url 'https://github.com/getsigit/sigit/releases/download/v1.7.3/sigit-macos-amd64.tar.gz'
      sha256 'e86211c5e8175860318a16f27fc203aa38a24103e6a1493dcbd71541967d3102'
    end
  end

  def install
    bin.install 'sigit'
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sigit --version", 1)
  end
end
