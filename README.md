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
stow -t ~ bat btop eza ghostty nvim starship
stow --no-folding -t ~ ncspot
```

Use `--no-folding` for ncspot so playback state stays in your home directory.

Add this to `~/.zshrc` on macOS to load the eza theme and initialize Starship:

```zsh
export EZA_CONFIG_DIR="${XDG_CONFIG_HOME:-$HOME/.config}/eza"
eval "$(starship init zsh)"
```

On Linux, eza uses the Stow location by default. For Bash, add
`eval "$(starship init bash)"` to `~/.bashrc`.

Build bat theme cache:

```
bat cache --build
```
