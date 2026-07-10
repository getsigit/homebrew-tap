# frozen_string_literal: true

# Homebrew formula for siGit Code (`sigit` binary).
class Sigit < Formula
  desc 'AI coding agent powered by local LLM via Onde Inference'
  homepage 'https://github.com/getsigit/sigit'
  version '1.4.1'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/getsigit/sigit/releases/download/v1.4.1/sigit-macos-arm64.tar.gz'
      sha256 'ad8ae5a1c3b2be900400c7d6fc1fb691f2bfbbec6465c1bc1266f56e9e601078'
    end
    on_intel do
      url 'https://github.com/getsigit/sigit/releases/download/v1.4.1/sigit-macos-amd64.tar.gz'
      sha256 '85293e1bff64c5f481b244fa31887ab1ecd56f1dcc8c5e87d8c08b7574ec32c7'
    end
  end

  def install
    bin.install 'sigit'
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sigit --version", 1)
  end
end
