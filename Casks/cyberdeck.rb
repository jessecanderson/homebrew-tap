cask "cyberdeck" do
  version "0.3.3"
  sha256 "244dd23241605da5ed0b49cbab70c0de0d3807434fdcda0806bea5095b21aba4"

  url "https://github.com/jessecanderson/cyberdeck/releases/download/v#{version}/cyberdeck-#{version}-macos-arm64.tar.gz"
  name "Cyberdeck"
  desc "Neon, keyboard-first TUI for running multiple local coding agents"
  homepage "https://github.com/jessecanderson/cyberdeck"

  depends_on arch: :arm64

  binary "cyberdeck/cyberdeck-bin/cyberdeck"

  caveats <<~EOS
    Cyberdeck requires at least one supported agent CLI. Install and
    authenticate Codex and/or Kiro separately.
  EOS
end
