<p align="center">
A temporary repo for a few Homebrew apps not yet in the main tap
</p>

### GUI apps
  - [oculante](https://github.com/woelper/oculante) minimalistic cross-platform image viewer written in Rust

### Cli apps
  - [dupe-krill](https://github.com/kornelski/dupe-krill) fast file deduplicator

## Install

```sh
brew tap eugenesvk/homebrew-tap # add app database (tap)

brew install dupe-krill
brew install --no-quarantine oculante  # --no-quarantine required because the app is not signed
# or replace ↑ with ↓ to install to a custom folder
brew install --no-quarantine '--appdir=/Applications/2 Play/2 Pic' oculante
```

## Update
Regular Homebrew update routine should handle custom taps as well
```sh
brew update  # update app database
brew upgrade # update apps
```

## Uninstall

```sh
brew uninstall oculante
brew uninstall dupe-krill
```
Or
```sh
brew uninstall --zap oculante # remove user settings at `~/Library/Saved Application State/com.github.woelper.oculante.savedState`
brew untap eugenesvk/oculante # remove app database (tap)
```

## Known issues

## Credits
