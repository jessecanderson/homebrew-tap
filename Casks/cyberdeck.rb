cask "cyberdeck" do
  version "0.3.2"
  sha256 "0d0c4fcb2251390b4429f43e98186eed0ed08ded938bb6a0a7dff5735461c0b8"

  url "https://github.com/jessecanderson/cyberdeck/releases/download/v0.3.2/cyberdeck-0.3.2-macos-arm64.tar.gz"
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
