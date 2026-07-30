# Jessecanderson Tap

## How do I install these formulae?

The preferred Cyberdeck install uses the standalone Apple Silicon formula. It ships
Cyberdeck's application files and a private embedded Python runtime together. It does
not install or link Homebrew Python, use the macOS system Python, create a virtual
environment, or change the `python`/`python3` commands on the machine:

```bash
brew install jessecanderson/tap/cyberdeck
```

Homebrew creates only the normal `cyberdeck` command symlink into the formula's Cellar
directory. The embedded runtime is an implementation detail used only by Cyberdeck and
is removed with `brew uninstall cyberdeck`. A Python interpreter is still inherently
required because Cyberdeck is a Python application; using a standalone bundle keeps
that interpreter isolated instead of making it a machine-wide dependency.

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
