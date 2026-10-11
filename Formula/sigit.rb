# frozen_string_literal: true

# Homebrew formula for siGit Code (`sigit` binary).
class Sigit < Formula
  desc 'AI coding agent powered by local LLM via Onde Inference'
  homepage 'https://github.com/getsigit/sigit'
  version '1.6.7'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/getsigit/sigit/releases/download/v1.6.7/sigit-macos-arm64.tar.gz'
      sha256 'cd78cb6e603241181d80be58ed5ebb20703d18799eea00fb65a7f73c2f3b346f'
    end
    on_intel do
      url 'https://github.com/getsigit/sigit/releases/download/v1.6.7/sigit-macos-amd64.tar.gz'
      sha256 '5d3bab7c52c77db769dbcf0669c29c9fd3a9d13178d19dde6f60556a018ef90f'
    end
  end

  def install
    bin.install 'sigit'
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sigit --version", 1)
  end
end
