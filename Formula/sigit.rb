# frozen_string_literal: true

# Homebrew formula for siGit Code (`sigit` binary).
class Sigit < Formula
  desc 'AI coding agent powered by local LLM via Onde Inference'
  homepage 'https://github.com/getsigit/sigit'
  version '1.5.13'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/getsigit/sigit/releases/download/v1.5.13/sigit-macos-arm64.tar.gz'
      sha256 '8b473948625fdb3fb3ff64c7c2cc67afb12bf5ecbf989218714740482f14bdcd'
    end
    on_intel do
      url 'https://github.com/getsigit/sigit/releases/download/v1.5.13/sigit-macos-amd64.tar.gz'
      sha256 'a432ba76c9dc685964bf2b945e00ad0f88326dd4c5689373d9632f62d9766998'
    end
  end

  def install
    bin.install 'sigit'
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sigit --version", 1)
  end
end
