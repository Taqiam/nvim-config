# Nvim Config

A Neovim configuration for **C++ development on macOS**.

## 1. Install Tools and Packages

Install the required tools and packages using Homebrew:

```bash
brew install neovim git ripgrep fd lazygit
brew install llvm cmake ninja clang-format
```

### Verify Installation

Check that the required tools are installed correctly:

```bash
clang++ --version
clangd --version
clang-format --version
cmake --version
ninja --version
nvim --version
```

## 2. Configure LLVM

Add the LLVM `bin` directory to your `PATH`.

Add the following line to `~/.zshrc` (or the configuration file for the shell you use):

```bash
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
```

Then reload your shell configuration:

```bash
source ~/.zshrc
```

Verify that the LLVM tools are being used:

```bash
which clang++
which clangd
which clang-format
```

## 3. Install Nerd Font

Install **JetBrainsMono Nerd Font**:

```bash
brew install --cask font-jetbrains-mono-nerd-font
```

After installation, configure your terminal to use **JetBrainsMono Nerd Font**.

This is required for icons and symbols used by Neovim plugins to display correctly.

## 4. Install the Nvim Configuration

Back up your existing Neovim configuration:

```bash
mv ~/.config/nvim ~/.config/nvim.bak
```

Clone this configuration:

```bash
git clone <repository-url> ~/.config/nvim
```

Start Neovim:

```bash
nvim
```

Wait for Neovim to install the required plugins.
