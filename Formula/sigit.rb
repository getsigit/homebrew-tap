# frozen_string_literal: true

# Homebrew formula for siGit Code (`sigit` binary).
class Sigit < Formula
  desc 'AI coding agent powered by local LLM via Onde Inference'
  homepage 'https://github.com/getsigit/sigit'
  version '0.1.1'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/getsigit/sigit/releases/download/v0.1.1/sigit-macos-arm64.tar.gz'
      sha256 'f188d27dbb0e52de201a03df0ddea9bf1868e2a409bd769a3eea8c44c4fc2fd4'
    end
    on_intel do
      url 'https://github.com/getsigit/sigit/releases/download/v0.1.1/sigit-macos-amd64.tar.gz'
      sha256 '1f572b7a88e0edf49fedd66de7311d7156be17b39721412312b4ea0701e9f380'
    end
  end

  def install
    bin.install 'sigit'
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sigit --version", 1)
  end
end
