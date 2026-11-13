# Nvim Config

C++ and C#/.NET on Apple Silicon macOS.

For Unity scripts, open the project in Neovim after VS Code’s Unity integration generates the C# project files.

## 1. Install Tools and Packages

### Common

```bash
brew install neovim git ripgrep fd lazygit
```

### C++

```bash
brew install llvm cmake ninja clang-format
```

### C#

```bash
brew install --cask dotnet-sdk
```

Or download the Arm64 .NET SDK (10 or newer) from Microsoft.

### Verify Installation

```bash
# Common
command -v nvim git rg fd lazygit

# C++
"$(brew --prefix llvm)/bin/clang++" --version
cmake --version
ninja --version
clang-format --version

# C#
dotnet --list-sdks
```

## 2. Configure LLVM

Add to `~/.zshrc`.

```bash
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
```

```bash
source ~/.zshrc
```

## 3. Nerd Font

```bash
brew install --cask font-jetbrains-mono-nerd-font
```

Select JetBrainsMono Nerd Font in your terminal settings.

## 4. Install the Nvim Config

Back up any existing `~/.config/nvim` first.

```bash
git clone https://github.com/Taqiam/nvim-config.git ~/.config/nvim
nvim
```

Wait for Neovim to install the packages.
