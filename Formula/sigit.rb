# frozen_string_literal: true

# Homebrew formula for siGit Code (`sigit` binary).
class Sigit < Formula
  desc 'Local coding agent powered by Onde Inference'
  homepage 'https://github.com/getsigit/sigit'
  version '1.0.2'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/getsigit/sigit/releases/download/v1.0.2/sigit-macos-arm64.tar.gz'
      sha256 'd6cef9cf172ee91ff58282710cfb092723ac60502527b4752c3481037945181c'
    end
    on_intel do
      url 'https://github.com/getsigit/sigit/releases/download/v1.0.2/sigit-macos-amd64.tar.gz'
      sha256 '24038a63c3827588f4ba5925784cd379f4228b89d06e625a5aa14bf34989d495'
    end
  end

  def install
    bin.install 'sigit'
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sigit --version", 1)
  end
end
