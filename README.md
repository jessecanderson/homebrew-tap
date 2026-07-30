# Jessecanderson Tap

## How do I install these formulae?

The preferred Cyberdeck install uses the standalone Apple Silicon formula. It includes
an isolated runtime inside Cyberdeck and does not install or modify Homebrew Python:

```bash
brew install jessecanderson/tap/cyberdeck
```

Or `brew tap jessecanderson/tap` and then `brew install <formula>`.

Or, in a `brew bundle` `Brewfile`:

```ruby
tap "jessecanderson/tap"
brew "<formula>"
```

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).

Cyberdeck formula updates are dispatched automatically after a tagged release. The
tap verifies the published source and standalone macOS checksums,
opens a protected pull request, runs Homebrew validation, and enables auto-merge
only after all required checks pass.

The workflow requires the `HOMEBREW_TAP_TOKEN` Actions secret. It must be a
fine-grained token with Contents and Pull requests read/write access to this
repository so automation-created PRs trigger the normal test workflow.
