# frozen_string_literal: true

# Homebrew formula for siGit Code (`sigit` binary).
class Sigit < Formula
  desc 'AI coding agent powered by local LLM via Onde Inference'
  homepage 'https://github.com/getsigit/sigit'
  version '1.5.11'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/getsigit/sigit/releases/download/v1.5.11/sigit-macos-arm64.tar.gz'
      sha256 'b249236e876aa1c4f7adcee04e6d71e2a8a24923a0664d33474211697be7ca34'
    end
    on_intel do
      url 'https://github.com/getsigit/sigit/releases/download/v1.5.11/sigit-macos-amd64.tar.gz'
      sha256 '5755fc2dcdc2a37712a01b2f45304eb16697c58c8c539f88b49733ab927a89b8'
    end
  end

  def install
    bin.install 'sigit'
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sigit --version", 1)
  end
end
