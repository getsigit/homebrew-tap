# frozen_string_literal: true

# Homebrew formula for siGit Code (`sigit` binary).
class Sigit < Formula
  desc 'AI coding agent powered by local LLM via Onde Inference'
  homepage 'https://github.com/getsigit/sigit'
  version '1.6.5'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/getsigit/sigit/releases/download/v1.6.5/sigit-macos-arm64.tar.gz'
      sha256 'af766810f6f7ed6e410c9bb77323127681fd76b8f0e25b98aa3cba3a3f235b17'
    end
    on_intel do
      url 'https://github.com/getsigit/sigit/releases/download/v1.6.5/sigit-macos-amd64.tar.gz'
      sha256 '4014a8e4898e7d61038fcd154e72069c06d657e82a201c8ad966485a24279fdb'
    end
  end

  def install
    bin.install 'sigit'
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sigit --version", 1)
  end
end
