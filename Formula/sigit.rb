# frozen_string_literal: true

# Homebrew formula for siGit Code (`sigit` binary).
class Sigit < Formula
  desc 'AI coding agent powered by local LLM via Onde Inference'
  homepage 'https://github.com/getsigit/sigit'
  version '1.3.2'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/getsigit/sigit/releases/download/v1.3.2/sigit-macos-arm64.tar.gz'
      sha256 '9b09177b356307bee0b3b19e87d5908bdbafb2670fe2b96f8e5613b9122ba78e'
    end
    on_intel do
      url 'https://github.com/getsigit/sigit/releases/download/v1.3.2/sigit-macos-amd64.tar.gz'
      sha256 '2b3376796c3ce49f5057b34cced915084212d96b73e8106a253a709953af973a'
    end
  end

  def install
    bin.install 'sigit'
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sigit --version", 1)
  end
end
