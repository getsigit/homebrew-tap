# frozen_string_literal: true

# Homebrew formula for siGit Code (`sigit` binary).
class Sigit < Formula
  desc 'AI coding agent powered by local LLM via Onde Inference'
  homepage 'https://github.com/getsigit/sigit'
  version '1.5.4'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/getsigit/sigit/releases/download/v1.5.4/sigit-macos-arm64.tar.gz'
      sha256 '34f03e036879d5413805e728eec0eba43945f09959ce3aac96fda50b783818c2'
    end
    on_intel do
      url 'https://github.com/getsigit/sigit/releases/download/v1.5.4/sigit-macos-amd64.tar.gz'
      sha256 '3636ad4327dc8353b683e9ab8e99ddb71b3bb846f0bd2ee7daebae9f1e9d2e38'
    end
  end

  def install
    bin.install 'sigit'
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sigit --version", 1)
  end
end
