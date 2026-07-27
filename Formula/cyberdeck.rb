class Cyberdeck < Formula
  desc "Neon, keyboard-first TUI for running multiple local coding agents"
  homepage "https://github.com/jessecanderson/cyberdeck"
  url "https://github.com/jessecanderson/cyberdeck/releases/download/v0.3.3/cyberdeck-0.3.3-macos-arm64.tar.gz"
  version "0.3.3"
  sha256 "244dd23241605da5ed0b49cbab70c0de0d3807434fdcda0806bea5095b21aba4"
  license "Apache-2.0"
  version_scheme 1

  depends_on arch: :arm64
  depends_on macos: :big_sur

  def install
    libexec.install Dir["cyberdeck/*"]
    bin.install_symlink libexec/"cyberdeck-bin/cyberdeck" => "cyberdeck"
  end

  def caveats
    <<~EOS
      Cyberdeck requires at least one supported agent CLI. Install and
      authenticate Codex and/or Kiro separately, then verify with:
        codex --version
        kiro-cli --version
    EOS
  end

  test do
    assert_equal "cyberdeck #{version}", shell_output("#{bin}/cyberdeck --version").strip
  end
end
