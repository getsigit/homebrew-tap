# frozen_string_literal: true

# Homebrew formula for siGit Code (`sigit` binary).
class Sigit < Formula
  desc 'AI coding agent powered by local LLM via Onde Inference'
  homepage 'https://github.com/getsigit/sigit'
  version '1.1.0'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/getsigit/sigit/releases/download/v1.1.0/sigit-macos-arm64.tar.gz'
      sha256 '5d100a71b587ccf78f914b6fc44237238b84e04e049d46bf0971857602111453'
    end
    on_intel do
      url 'https://github.com/getsigit/sigit/releases/download/v1.1.0/sigit-macos-amd64.tar.gz'
      sha256 'fb4fafbebaddd87b4ee8d8b3e1b5181644e6cdd43e300903688e872f7f1915d9'
    end
  end

  def install
    bin.install 'sigit'
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sigit --version", 1)
  end
end
