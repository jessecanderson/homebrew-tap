# Jessecanderson Tap

## How do I install these formulae?

`brew install jessecanderson/tap/<formula>`

Cyberdeck uses a standalone macOS bundle so it does not depend on Homebrew's
Python runtime:

```bash
brew install --cask jessecanderson/tap/cyberdeck
```

Or `brew tap jessecanderson/tap` and then `brew install <formula>`.

Or, in a `brew bundle` `Brewfile`:

```ruby
tap "jessecanderson/tap"
brew "<formula>"
```

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).

Cyberdeck formula and cask updates are dispatched automatically after a tagged
release. The tap verifies the published source and standalone macOS checksums,
opens a protected pull request, runs Homebrew validation, and enables auto-merge
only after all required checks pass.

The workflow requires the `HOMEBREW_TAP_TOKEN` Actions secret. It must be a
fine-grained token with Contents and Pull requests read/write access to this
repository so automation-created PRs trigger the normal test workflow.
