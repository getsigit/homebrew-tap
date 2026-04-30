# frozen_string_literal: true

# Homebrew formula for siGit Code (`sigit` binary).
class Sigit < Formula
  desc 'Local coding agent powered by Onde Inference'
  homepage 'https://github.com/getsigit/sigit'
  version '1.0.3'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/getsigit/sigit/releases/download/v1.0.3/sigit-macos-arm64.tar.gz'
      sha256 '2b99d4a9525c915b1f627b1eba29c44b91967e1c0ead440e7604edccb81606b3'
    end
    on_intel do
      url 'https://github.com/getsigit/sigit/releases/download/v1.0.3/sigit-macos-amd64.tar.gz'
      sha256 'eefa4e9f0628d5337e292b4a9a553af63b309134b329609818e0eb15a32ca161'
    end
  end

  def install
    bin.install 'sigit'
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sigit --version", 1)
  end
end
