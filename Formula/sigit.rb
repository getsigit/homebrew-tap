# frozen_string_literal: true

# Homebrew formula for siGit Code (`sigit` binary).
class Sigit < Formula
  desc 'AI coding agent powered by local LLM via Onde Inference'
  homepage 'https://github.com/getsigit/sigit'
  version '1.6.6'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/getsigit/sigit/releases/download/v1.6.6/sigit-macos-arm64.tar.gz'
      sha256 '98661333d902953b4df41c2893e711d39da6f0243bad711bb96e830e08857c42'
    end
    on_intel do
      url 'https://github.com/getsigit/sigit/releases/download/v1.6.6/sigit-macos-amd64.tar.gz'
      sha256 '5707db94dabcff022d5dc4624abc1b331167ecc091c7580a11b886f47efda45f'
    end
  end

  def install
    bin.install 'sigit'
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sigit --version", 1)
  end
end
