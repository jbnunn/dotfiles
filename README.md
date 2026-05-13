# Dotfiles for jbnunn

This repo contains various configs (dotfiles) for most of the CLI tools I use.

## Tools

- **bat** – cat replacement with syntax highlighting (Catppuccin Macchiato theme)
- **btop** – system monitor
- **eza** – modern ls replacement
- **ghostty** – terminal emulator
- **ncspot** – Spotify TUI client
- **nvim** – Neovim with LazyVim
- **starship** – shell prompt

## Setup

Install dependencies:

```
brew install stow bat btop eza ghostty ncspot neovim starship git
brew install --cask font-jetbrains-mono-nerd-font
```

Clone and apply:

```
git clone https://github.com/jbnunn/dotfiles.git ~/Projects/dotfiles
cd ~/Projects/dotfiles
stow -t ~ bat btop eza ghostty ncspot nvim starship
```

Build bat theme cache:

```
bat cache --build
```
