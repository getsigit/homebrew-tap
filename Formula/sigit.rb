# frozen_string_literal: true

# Homebrew formula for siGit Code (`sigit` binary).
class Sigit < Formula
  desc 'AI coding agent powered by local LLM via Onde Inference'
  homepage 'https://github.com/getsigit/sigit'
  version '1.6.0'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/getsigit/sigit/releases/download/v1.6.0/sigit-macos-arm64.tar.gz'
      sha256 '04aa0a5e89e0e014b898898704eda6873e141422c2647cf06f0568607da45420'
    end
    on_intel do
      url 'https://github.com/getsigit/sigit/releases/download/v1.6.0/sigit-macos-amd64.tar.gz'
      sha256 'ddd88d9e90eb013dcb2e599ce7558f38e8552dcdaab9b085629a6d3368b1ca56'
    end
  end

  def install
    bin.install 'sigit'
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sigit --version", 1)
  end
end
