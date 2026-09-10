# frozen_string_literal: true

# Homebrew formula for siGit Code (`sigit` binary).
class Sigit < Formula
  desc 'AI coding agent powered by local LLM via Onde Inference'
  homepage 'https://github.com/getsigit/sigit'
  version '1.5.8'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/getsigit/sigit/releases/download/v1.5.8/sigit-macos-arm64.tar.gz'
      sha256 'a5c07e6588eb9c24cb92fe9dbbb5abe661056a5e0addc17f030b8b4f057a465a'
    end
    on_intel do
      url 'https://github.com/getsigit/sigit/releases/download/v1.5.8/sigit-macos-amd64.tar.gz'
      sha256 '863deaff2f02e823ec18581e326d50b643f9e8b26d4b87e75e934be877824590'
    end
  end

  def install
    bin.install 'sigit'
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sigit --version", 1)
  end
end
