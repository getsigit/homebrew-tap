# frozen_string_literal: true

# Homebrew formula for siGit Code (`sigit` binary).
class Sigit < Formula
  desc 'AI coding agent powered by local LLM via Onde Inference'
  homepage 'https://github.com/getsigit/sigit'
  version '1.6.4'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/getsigit/sigit/releases/download/v1.6.4/sigit-macos-arm64.tar.gz'
      sha256 '37dce294b54f55189eb9b34f408cee7ce0c6af933454b51fd0561d7abaae386d'
    end
    on_intel do
      url 'https://github.com/getsigit/sigit/releases/download/v1.6.4/sigit-macos-amd64.tar.gz'
      sha256 '4377987ad4d9e77fbffab2b9a03003645be4f3536802789a719d13ea2fb15d17'
    end
  end

  def install
    bin.install 'sigit'
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sigit --version", 1)
  end
end
