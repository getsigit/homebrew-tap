# frozen_string_literal: true

# Builds from source — expect a few minutes on first install.
class Sigit < Formula
  desc 'AI coding agent powered by local LLM via Onde Inference'
  homepage 'https://github.com/setoelkahfi/sigit'
  license any_of: ['MIT', 'Apache-2.0']

  head 'https://github.com/setoelkahfi/sigit.git', branch: 'main'

  depends_on 'rust' => :build

  def install
    system 'cargo', 'install', *std_cargo_args
  end

  test do
    # Non-TTY stdin triggers ACP mode; the version line lands on stderr.
    output = shell_output("echo '' | #{bin}/sigit 2>&1")
    assert_match 'siGit', output
  end
end
