# frozen_string_literal: true

# Homebrew formula for siGit Code (`sigit` binary).
class Sigit < Formula
  desc 'AI coding agent powered by local LLM via Onde Inference'
  homepage 'https://github.com/getsigit/sigit'
  version '1.5.7'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/getsigit/sigit/releases/download/v1.5.7/sigit-macos-arm64.tar.gz'
      sha256 '7c27ca45143f7d3842e1986d953a5a793a5866a5075f72237cdfeacfe318158c'
    end
    on_intel do
      url 'https://github.com/getsigit/sigit/releases/download/v1.5.7/sigit-macos-amd64.tar.gz'
      sha256 '31d96c91bd71d911014197eeb41d76b307a268e470bfe75182c1c65912736661'
    end
  end

  def install
    bin.install 'sigit'
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sigit --version", 1)
  end
end
