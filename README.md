# homebrew-tap

Homebrew casks for a few small tools.

## Install

```
brew install --cask cscmsg/tap/lippy
```

Homebrew expands `cscmsg/tap` to this repository, so there is no need to run
`brew tap` first.

## What is here

| Cask | What it is |
|---|---|
| [`lippy`](Casks/lippy.rb) | Local dictation for macOS. Hold a key, talk, and clean text appears at your cursor. Speech recognition and cleanup both run on your own machine. [Downloads](https://github.com/cscmsg/lippy-releases) |

Each cask is copied from its tool's own repository when a release is cut,
rather than authored here, so the version and checksum cannot drift from what
was actually published.
