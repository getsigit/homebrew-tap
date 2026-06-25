# frozen_string_literal: true

# Homebrew formula for siGit Code (`sigit` binary).
class Sigit < Formula
  desc 'AI coding agent powered by local LLM via Onde Inference'
  homepage 'https://github.com/getsigit/sigit'
  version '1.2.1'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/getsigit/sigit/releases/download/v1.2.1/sigit-macos-arm64.tar.gz'
      sha256 '311123373d2cfa2a8e97548b38f7da74075f494eb9d797f03cf69152df0f68aa'
    end
    on_intel do
      url 'https://github.com/getsigit/sigit/releases/download/v1.2.1/sigit-macos-amd64.tar.gz'
      sha256 'dfe6309e9e813962e94dac0eb20f773b6d1c37b19eb7fb4ab90d9f3c36a1ab8f'
    end
  end

  def install
    bin.install 'sigit'
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sigit --version", 1)
  end
end
