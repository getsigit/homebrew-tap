# frozen_string_literal: true

# Homebrew formula for siGit Code (`sigit` binary).
class Sigit < Formula
  desc 'AI coding agent powered by local LLM via Onde Inference'
  homepage 'https://github.com/getsigit/sigit'
  version '1.5.12'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/getsigit/sigit/releases/download/v1.5.12/sigit-macos-arm64.tar.gz'
      sha256 'b2558e65f2ad84a0ba0f791b5304276dbff20a4128dbe968bd7fa9ba434b62cf'
    end
    on_intel do
      url 'https://github.com/getsigit/sigit/releases/download/v1.5.12/sigit-macos-amd64.tar.gz'
      sha256 'f457ab764f4ae161f009841d68c7a0f8b1268bd10f46c1c5e9ec0eee23938b07'
    end
  end

  def install
    bin.install 'sigit'
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sigit --version", 1)
  end
end
