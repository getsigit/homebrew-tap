# frozen_string_literal: true

# Homebrew formula for siGit Code (`sigit` binary).
class Sigit < Formula
  desc 'AI coding agent powered by local LLM via Onde Inference'
  homepage 'https://github.com/getsigit/sigit'
  version '1.5.9'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/getsigit/sigit/releases/download/v1.5.9/sigit-macos-arm64.tar.gz'
      sha256 '1833170a084a6145e70ec692fe280030698ad9e0018929fbf994fa8478062b6f'
    end
    on_intel do
      url 'https://github.com/getsigit/sigit/releases/download/v1.5.9/sigit-macos-amd64.tar.gz'
      sha256 'ca8ef64e9f07bcf0fbbfc664778a4e8e68b4c0372107fb9e3c4ab5e5b772e284'
    end
  end

  def install
    bin.install 'sigit'
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sigit --version", 1)
  end
end
