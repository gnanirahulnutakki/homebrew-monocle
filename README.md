# Monocle for Homebrew

Monocle is a desktop app for working with Kubernetes clusters, built on Freelens. This tap installs the current
test build on macOS 12 or newer, on Apple silicon and Intel Macs.

## Install

```bash
brew install --cask gnanirahulnutakki/monocle/monocle
```

Homebrew downloads the installer for your Mac and checks it against the checksum in `Casks/monocle.rb` before
installing.

This test build is not signed by Apple yet. Tell your IT team before installing, because security tools may flag
it. The first time you open Monocle, macOS blocks it: click Done, then go to System Settings > Privacy & Security
and click Open Anyway. You only do this once.

## Use

- Monocle lists every kubeconfig in `~/.kube` by itself. Other files: Settings > Kubernetes > Sync file(s).
- Cloud sign-in tools (aws, gcloud, kubelogin) are found in Homebrew folders, `/usr/local/bin`, `~/.local/bin`
  and `~/bin`. Add other folders in Settings > Security and compliance > Tool folders.
- No account or sign-in is needed.
- Logs: `~/Library/Logs/Monocle`.

## Update and remove

Homebrew looks for new versions of this tap only once a day on its own, so refresh it first:

```bash
brew update
```

```bash
brew upgrade --cask monocle
```

Each new test build needs the one-time Open Anyway approval again.

```bash
brew uninstall --cask monocle
```

`brew uninstall --zap --cask monocle` also removes Monocle's settings, logs and the extensions it installed. Other
Freelens extensions and your kubeconfig files are not touched.
