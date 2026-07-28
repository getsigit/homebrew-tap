# frozen_string_literal: true

# Homebrew formula for siGit Code (`sigit` binary).
class Sigit < Formula
  desc 'AI coding agent powered by local LLM via Onde Inference'
  homepage 'https://github.com/getsigit/sigit'
  version '1.5.1'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/getsigit/sigit/releases/download/v1.5.1/sigit-macos-arm64.tar.gz'
      sha256 'fd93a72b30d6693babd8948d5004c6d1679cba15492ef0aecd361aacd49caea5'
    end
    on_intel do
      url 'https://github.com/getsigit/sigit/releases/download/v1.5.1/sigit-macos-amd64.tar.gz'
      sha256 'e65b3ec94b648e49b6ce36bcfa8369fe1cfa1f654e8186fd01b573abaade32e4'
    end
  end

  def install
    bin.install 'sigit'
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sigit --version", 1)
  end
end
