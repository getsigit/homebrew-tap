# frozen_string_literal: true

# Homebrew formula for siGit Code (`sigit` binary).
class Sigit < Formula
  desc 'AI coding agent powered by local LLM via Onde Inference'
  homepage 'https://github.com/getsigit/sigit'
  version '1.6.3'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/getsigit/sigit/releases/download/v1.6.3/sigit-macos-arm64.tar.gz'
      sha256 '5631561956da6592a98e8cc17a90914fc25873bc12d2f7090bb112b21eb21d77'
    end
    on_intel do
      url 'https://github.com/getsigit/sigit/releases/download/v1.6.3/sigit-macos-amd64.tar.gz'
      sha256 '5deeae7761a515a07e9567d65755553ca3c9bb1c464198e9b1c8aa02340af211'
    end
  end

  def install
    bin.install 'sigit'
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sigit --version", 1)
  end
end
