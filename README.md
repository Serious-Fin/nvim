# NewVim configuration

## Installation
Clone this repository to location where NewVim expects the config to be on your machine.
For Ubuntu it's:
```
mkdir -p ~/.config/nvim
cd ~/.config/nvim
git clone https://github.com/Serious-Fin/nvim.git
```

## Overview

### Installed packages

- **catppuccin** - theme
- **lazy.nvim** - package manager for NeoVim
- **lualine.nvim** - custom status bar at the bottom of the screen
- **neo-tree.nvim** - file explorer inside NeoVim
- **nvim-treesitter** - language syntax highlighting
- **telescope.nvim** - searching for files, grepping for words
- **mason** - managing LSPs

### Updating packages
To update packages open Lazy UI via command `:Lazy` and navigate to `Updates`. Pckages will automatically be updated.

### Adding new language syntax highlighting
Navigate to `nvim-treesitter.lua` and add new language to the list of languages.
Close and re-open NeoVim to install new languge highlighting.

### LSP

`:LspInfo` - show currently connected LSPs
`:h vim.lsp.buf` - display all available functions, that can be called by LSP. These can be mapped by shortcuts.

# Shortcuts
`K` - display hover LSP info for function under cursor
`<leader>ca` - display code actions error/warning under hover
`gd` - go to definition of object under hover
`ctrl - e` - open file explorer
`ctrl - p` - search for file by name
`ctrl - f` - grep for word
