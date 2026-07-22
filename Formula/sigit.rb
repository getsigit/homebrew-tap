# frozen_string_literal: true

# Homebrew formula for siGit Code (`sigit` binary).
class Sigit < Formula
  desc 'AI coding agent powered by local LLM via Onde Inference'
  homepage 'https://github.com/getsigit/sigit'
  version '1.5.0'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/getsigit/sigit/releases/download/v1.5.0/sigit-macos-arm64.tar.gz'
      sha256 '838b74d568056eac55984d1c72a9a8d2daaa2a186a4c0291a64fc236d4692d1b'
    end
    on_intel do
      url 'https://github.com/getsigit/sigit/releases/download/v1.5.0/sigit-macos-amd64.tar.gz'
      sha256 '40807eaf27da7e6a1ed26b8373527b258680261ac2efba70a9cad16a2a48b7ae'
    end
  end

  def install
    bin.install 'sigit'
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sigit --version", 1)
  end
end
