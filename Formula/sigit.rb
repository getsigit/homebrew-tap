# frozen_string_literal: true

# Homebrew formula for siGit Code (`sigit` binary).
class Sigit < Formula
  desc 'AI coding agent powered by local LLM via Onde Inference'
  homepage 'https://github.com/getsigit/sigit'
  version '1.2.0'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/getsigit/sigit/releases/download/v1.2.0/sigit-macos-arm64.tar.gz'
      sha256 '76803f2d8ea66fecb0effff1ddf896385369719b51f1347569bdc47fe0637b00'
    end
    on_intel do
      url 'https://github.com/getsigit/sigit/releases/download/v1.2.0/sigit-macos-amd64.tar.gz'
      sha256 '466d94075f26ce82006448d4dd4e81eaed3f019bbdc68627b60e463c71902c40'
    end
  end

  def install
    bin.install 'sigit'
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sigit --version", 1)
  end
end
