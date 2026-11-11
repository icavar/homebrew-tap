# Homebrew tap for YACM

[YACM](https://yacm.app/) (Yet Another Connection Manager) is a free and open
source connection manager for SSH, telnet and serial consoles.

```sh
brew install --cask yacm-app/tap/yacm
```

Update with `brew upgrade --cask yacm`. The cask installs the signed and
notarised `YACM.app` from the
[GitHub releases](https://github.com/yacm-app/yacm/releases).
`brew uninstall --zap --cask yacm` also removes the sessions, the vault and
the settings.

A workflow moves the cask to each new release within three hours, after
checking the disk image against its build provenance.

Problems with YACM itself: [issues](https://github.com/yacm-app/yacm/issues).
