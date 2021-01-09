# dotfiles

Repository for tracking configuration files for consistent workflow


Configuration files managed using symlinks, *stow* is cli based tool to track and manage symlinks


## Installation

Install using brew

`brew install stow`

## Usage

Sample command to link zshrc

```shell
➜  dotfiles git:(main) ✗ touch zsh/.zshrc
➜  dotfiles git:(main) ✗ stow --adopt -vSt ~ zsh
MV: .zshrc -> Documents/git/dotfiles/zsh/.zshrc
LINK: .zshrc => Documents/git/dotfiles/zsh/.zshrc
```

### Dry run

Dry run stow changes with `-n` flag

```
➜  dotfiles git:(main) ✗ stow --adopt -vnSt ~ zsh
WARNING: in simulation mode so not modifying filesystem.
```
