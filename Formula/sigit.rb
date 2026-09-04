# frozen_string_literal: true

# Homebrew formula for siGit Code (`sigit` binary).
class Sigit < Formula
  desc 'AI coding agent powered by local LLM via Onde Inference'
  homepage 'https://github.com/getsigit/sigit'
  version '1.5.6'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/getsigit/sigit/releases/download/v1.5.6/sigit-macos-arm64.tar.gz'
      sha256 '3efc0a8e9c3c476afab53bffdd6d943717786f2a8e72907a430126a483862924'
    end
    on_intel do
      url 'https://github.com/getsigit/sigit/releases/download/v1.5.6/sigit-macos-amd64.tar.gz'
      sha256 '5941852380c0cd66056a8229222de78b3c325640035a0eefe9be127a3d14ddda'
    end
  end

  def install
    bin.install 'sigit'
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sigit --version", 1)
  end
end
