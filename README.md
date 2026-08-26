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
| [`lippy`](Casks/lippy.rb) | Local dictation for macOS. Hold a key, talk, and clean text appears at your cursor. Speech recognition and cleanup both run on your own machine. [Source](https://github.com/cscmsg/lippy) |

Each cask is generated from the source repository rather than authored here.
Edit it there and copy it across when cutting a release, so the version and
checksum cannot drift from what was actually published.
