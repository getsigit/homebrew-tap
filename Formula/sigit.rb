# frozen_string_literal: true

# Homebrew formula for siGit Code (`sigit` binary).
class Sigit < Formula
  desc 'AI coding agent powered by local LLM via Onde Inference'
  homepage 'https://github.com/getsigit/sigit'
  version '1.6.9'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/getsigit/sigit/releases/download/v1.6.9/sigit-macos-arm64.tar.gz'
      sha256 'fb6f026f79bca359be502cea1ad6b83f03bee93731894b9b56337da3af50f892'
    end
    on_intel do
      url 'https://github.com/getsigit/sigit/releases/download/v1.6.9/sigit-macos-amd64.tar.gz'
      sha256 '451ef7dcd7935ecc658a3235c5c06711656b9caf20292ba8fca808ed3e53a373'
    end
  end

  def install
    bin.install 'sigit'
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sigit --version", 1)
  end
end
