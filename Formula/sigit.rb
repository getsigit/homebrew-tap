# frozen_string_literal: true

# Homebrew formula for siGit Code (`sigit` binary).
class Sigit < Formula
  desc 'AI coding agent powered by local LLM via Onde Inference'
  homepage 'https://github.com/getsigit/sigit'
  version '1.5.2'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/getsigit/sigit/releases/download/v1.5.2/sigit-macos-arm64.tar.gz'
      sha256 'be17cca0bb7341ac43d0ec3769a75aa5ca4a91c6e3c24512a524f3318eccad08'
    end
    on_intel do
      url 'https://github.com/getsigit/sigit/releases/download/v1.5.2/sigit-macos-amd64.tar.gz'
      sha256 'dc24791071831e1b6c5b84b09868bb3af62baae71db565d31176becab82744bc'
    end
  end

  def install
    bin.install 'sigit'
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sigit --version", 1)
  end
end
