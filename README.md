# Dotfiles
These are my dotfiles.

## Usage
I use [stow](https://www.gnu.org/software/stow/) to handle symlinking.
```shell
git clone git@github.com:Jaysonyan/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
stow alacritty bash nvim # etc (pass -D to remove symlinks)
```

## Dependencies
Homebrew is used to install various things.
- tmux
- alacritty
- neovim
- stow
- skim

### Alacritty
I use Fira Code as my font.
```shell
brew tap homebrew/cask-fonts
brew install --cask font-fira-code
```

### Neovim
I use fzf which requires [ripgrep](https://github.com/BurntSushi/ripgrep)
```shell
brew install ripgrep
```

These are the current language servers I use:
```shell
# C / C++ (clangd)
brew install llvm
# TypeScript/JavaScript (tsserver)
npm install -g typescript
# Rust (rust-analyzer)
brew install rust-analyzer
```
