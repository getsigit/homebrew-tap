# frozen_string_literal: true

# Homebrew formula for siGit Code (`sigit` binary).
class Sigit < Formula
  desc 'AI coding agent powered by local LLM via Onde Inference'
  homepage 'https://github.com/getsigit/sigit'
  version '1.5.5'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/getsigit/sigit/releases/download/v1.5.5/sigit-macos-arm64.tar.gz'
      sha256 'f9168506ea319a7478d76ee0616becf1b4f612c8e25a6409cb807b4d3c9af865'
    end
    on_intel do
      url 'https://github.com/getsigit/sigit/releases/download/v1.5.5/sigit-macos-amd64.tar.gz'
      sha256 'd00adf1b3bca4ba6386b3042bf39633289fdcb467360cc95c61e33042f7f2be8'
    end
  end

  def install
    bin.install 'sigit'
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sigit --version", 1)
  end
end
