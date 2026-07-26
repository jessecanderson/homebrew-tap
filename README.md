# Jessecanderson Tap

## How do I install these formulae?

`brew install jessecanderson/tap/<formula>`

Or `brew tap jessecanderson/tap` and then `brew install <formula>`.

Or, in a `brew bundle` `Brewfile`:

```ruby
tap "jessecanderson/tap"
brew "<formula>"
```

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).

Cyberdeck formula updates are dispatched automatically after a tagged release.
The tap verifies the published source checksum, opens a protected pull request,
runs Homebrew test-bot on macOS and Linux, and enables auto-merge only after all
required checks pass.

The workflow requires the `HOMEBREW_TAP_TOKEN` Actions secret. It must be a
fine-grained token with Contents and Pull requests read/write access to this
repository so automation-created PRs trigger the normal test workflow.
