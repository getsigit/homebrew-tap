# frozen_string_literal: true

# Homebrew formula for siGit Code (`sigit` binary).
class Sigit < Formula
  desc 'A modular local inference LLM coding agent. Core component of siGit Factory.'
  homepage 'https://sigit.si/code'
  version '1.7.1'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/getsigit/sigit/releases/download/v1.7.1/sigit-macos-arm64.tar.gz'
      sha256 '7d836ccb89c6e0e71542d53ba459de34a728ed3b93a02dbdb7bd765276c4831b'
    end
    on_intel do
      url 'https://github.com/getsigit/sigit/releases/download/v1.7.1/sigit-macos-amd64.tar.gz'
      sha256 'ec2d39166ec4a70e96c3d30d605b8faf5c19b2cd77ae412b0d77cde8dc8674c0'
    end
  end

  def install
    bin.install 'sigit'
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sigit --version", 1)
  end
end
