cask "cyberdeck" do
  version "0.3.4"
  sha256 "19d6d054db226a86cb1f7acc3e00ec422cafec5efbb5391486307924ffb0b260"

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
