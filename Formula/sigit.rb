# frozen_string_literal: true

# Homebrew formula for siGit Code (`sigit` binary).
class Sigit < Formula
  desc 'AI coding agent powered by local LLM via Onde Inference'
  homepage 'https://github.com/getsigit/sigit'
  version '1.2.2'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/getsigit/sigit/releases/download/v1.2.2/sigit-macos-arm64.tar.gz'
      sha256 'bc9fe107d737c6685726c49f37b9352ef1e7ed40a5119a1507aac7ba0a0c8ef1'
    end
    on_intel do
      url 'https://github.com/getsigit/sigit/releases/download/v1.2.2/sigit-macos-amd64.tar.gz'
      sha256 '3ac699f8873c662148bd3b79135cad817f1f13ae8b266f32102e81d3f48f0d15'
    end
  end

  def install
    bin.install 'sigit'
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sigit --version", 1)
  end
end
