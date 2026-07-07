# frozen_string_literal: true

# Homebrew formula for siGit Code (`sigit` binary).
class Sigit < Formula
  desc 'AI coding agent powered by local LLM via Onde Inference'
  homepage 'https://github.com/getsigit/sigit'
  version '1.4.0'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/getsigit/sigit/releases/download/v1.4.0/sigit-macos-arm64.tar.gz'
      sha256 '5fd202206e49404fa9f826bd7fe77bbe505e29d6152f289bf1c3972e6d8f3cc3'
    end
    on_intel do
      url 'https://github.com/getsigit/sigit/releases/download/v1.4.0/sigit-macos-amd64.tar.gz'
      sha256 'c403579cc362123379825747b4066f34f74acdff9831dd38071623f3461b5d17'
    end
  end

  def install
    bin.install 'sigit'
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sigit --version", 1)
  end
end
