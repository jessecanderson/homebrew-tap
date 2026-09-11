class Cyberdeck < Formula
  desc "Neon, keyboard-first TUI for running multiple local coding agents"
  homepage "https://github.com/jessecanderson/cyberdeck"
  url "https://github.com/jessecanderson/cyberdeck/releases/download/v0.3.7/cyberdeck-0.3.7-macos-arm64.tar.gz"
  sha256 "5068f95abd4c2a160c9973e637d36ab6eb4c4c2bc5fcafa208eb5bc940682456"
  license "Apache-2.0"
  version_scheme 1

  depends_on :macos

  def install
    odie "Cyberdeck's standalone Homebrew build requires Apple Silicon" unless Hardware::CPU.arm?

    libexec.install Dir["*"]
    bin.install_symlink libexec/"cyberdeck-bin/cyberdeck"
  end

  def caveats
    <<~EOS
      Cyberdeck includes its own isolated runtime and does not install or modify
      Homebrew Python. At least one supported agent CLI is still required. Install
      and authenticate Codex and/or Kiro separately, then verify with:
        codex --version
        codex login
        kiro-cli --version
        kiro-cli login
    EOS
  end

  test do
    assert_equal "cyberdeck #{version}", shell_output("#{bin}/cyberdeck --version").strip
  end
end
