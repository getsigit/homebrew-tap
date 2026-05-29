# frozen_string_literal: true

# Homebrew formula for siGit Code (`sigit` binary).
class Sigit < Formula
  desc 'AI coding agent powered by local LLM via Onde Inference'
  homepage 'https://github.com/getsigit/sigit'
  version '1.0.4'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/getsigit/sigit/releases/download/v1.0.4/sigit-macos-arm64.tar.gz'
      sha256 '89843446a4c84ab5f7b048fa2647c211a565343fbbfdf7701bf5ab751d12791b'
    end
    on_intel do
      url 'https://github.com/getsigit/sigit/releases/download/v1.0.4/sigit-macos-amd64.tar.gz'
      sha256 '85205f85e3c67714d1649038ed01d2db8264ad681a0ec95c285be5512786edbe'
    end
  end

  def install
    bin.install 'sigit'
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sigit --version", 1)
  end
end
