# Dotfiles

Personal configuration files for my development environment setup.

## Overview

This repository contains configuration files for various tools and applications that I use daily. Using GNU Stow, these configurations can be easily symlinked to their appropriate locations.

## Installation

### Prerequisites

1. Install GNU Stow:

```bash
# macOS
brew install stow

# Ubuntu/Debian
sudo apt install stow

# Arch Linux
sudo pacman -S stow
```

### Setup

1. Clone this repository to your home directory:

```bash
git clone https://github.com/yourusername/dotfiles.git ~/.dotfiles
```

2. Navigate to the dotfiles directory:

```bash
cd ~/.dotfiles
```

3. Use Stow to create symlinks:

```bash
# Install all configurations at once
stow .

# Or install specific configurations
stow .config/kitty
stow .config/zsh
```

## Contents

- Shell configuration (ZSH)
- Terminal emulator (Kitty)
- Terminal multiplexer (Zellij)
- System monitoring tools (btop)
- And more...

## Usage

After installation, your applications will automatically use the configuration files from this repository. Any changes you make to these files will be reflected in your applications and can be version controlled.

## License

MIT License. See `LICENSE` for more information.