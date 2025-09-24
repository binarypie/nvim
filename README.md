# My Neovim Configuration

This is my personal Neovim configuration, based on [LazyVim](https://github.com/LazyVim/LazyVim).

## Overview

This configuration is built upon the LazyVim distribution and customized with a set of plugins and settings to enhance the development workflow.

## Plugins

This configuration uses [lazy.nvim](https://github.com/folke/lazy.nvim) to manage plugins. Here is a list of the plugins included in this configuration:

### Core Plugins (from LazyVim)

*   [LazyVim](https://github.com/LazyVim/LazyVim): The base distribution.
*   [bufferline.nvim](https://github.com/akinsho/bufferline.nvim): A snazzy bufferline for Neovim.
*   [catppuccin](https://github.com/catppuccin/nvim): Catppuccin theme.
*   [conform.nvim](https://github.com/stevearc/conform.nvim): A lightweight formatting plugin.
*   [crates.nvim](https://github.com/Saecki/crates.nvim): A plugin to manage Rust crates.
*   [dial.nvim](https://github.com/monaqa/dial.nvim): Extended increment/decrement plugin.
*   [flash.nvim](https://github.com/folke/flash.nvim): A modern flash jump plugin.
*   [friendly-snippets](https://github.com/rafamadriz/friendly-snippets): A set of snippets for different programming languages.
*   [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim): Git integration for Neovim.
*   [inc-rename.nvim](https://github.com/smjonas/inc-rename.nvim): Incremental rename plugin.
*   [lazy.nvim](https://github.com/folke/lazy.nvim): The plugin manager.
*   [lazydev.nvim](https://github.com/folke/lazydev.nvim): A plugin to help with Neovim plugin development.
*   [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim): A blazing fast and easy to configure statusline.
*   [mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim): A bridge between mason.nvim and lspconfig.
*   [mason.nvim](https://github.com/williamboman/mason.nvim): A plugin to manage external editor tooling.
*   [mini.ai](https://github.com/echasnovski/mini.ai): A plugin for text objects.
*   [mini.hipatterns](https://github.com/echasnovski/mini.hipatterns): A plugin to highlight patterns in code.
*   [mini.icons](https://github.com/echasnovski/mini.icons): A plugin for icons.
*   [mini.pairs](https://github.com/echasnovski/mini.pairs): A plugin for autopairs.
*   [noice.nvim](https://github.com/folke/noice.nvim): A plugin to replace the Neovim UI.
*   [nui.nvim](https://github.com/MunifTanjim/nui.nvim): A UI component library for Neovim.
*   [nvim-lint](https://github.com/mfussenegger/nvim-lint): A linting plugin.
*   [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig): A collection of configurations for the Neovim LSP client.
*   [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter): Treesitter configurations and abstraction layer.
*   [nvim-treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects): Additional textobjects for Treesitter.
*   [nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag): A plugin to automatically close and rename HTML tags.
*   [persistence.nvim](https://github.com/folke/persistence.nvim): A plugin to persist sessions.
*   [plenary.nvim](https://github.com/nvim-lua/plenary.nvim): A library of Lua functions.
*   [rustaceanvim](https://github.com/mrcjkb/rustaceanvim): A Rust development plugin.
*   [snacks.nvim](https://github.com/folke/snacks.nvim): A plugin for animations.
*   [todo-comments.nvim](https://github.com/folke/todo-comments.nvim): A plugin to highlight TODO comments.
*   [tokyonight.nvim](https://github.com/folke/tokyonight.nvim): A dark theme for Neovim.
*   [trouble.nvim](https://github.com/folke/trouble.nvim): A pretty list for diagnostics.
*   [ts-comments.nvim](https://github.com/folke/ts-comments.nvim): A plugin for comments.
*   [vim-dadbod](https://github.com/tpope/vim-dadbod): A modern database interface for Vim.
*   [vim-dadbod-completion](https://github.com/kristijanhusak/vim-dadbod-completion): Completion for vim-dadbod.
*   [vim-dadbod-ui](https://github.com/kristijanhusak/vim-dadbod-ui): A UI for vim-dadbod.
*   [vim-helm](https://github.com/towolf/vim-helm): A Helm plugin for Vim.
*   [which-key.nvim](https://github.com/folke/which-key.nvim): A plugin to show keybindings.
*   [yanky.nvim](https://github.com/gbprod/yanky.nvim): A plugin for yank and paste.

### Custom Plugins and Configuration

The following customizations have been applied.

*   

## How it Works

This configuration is loaded from `init.lua`, which bootstraps `lazy.nvim` and the rest of the configuration. The main configuration is in `lua/config/lazy.lua`, which sets up `lazy.nvim` and loads the plugins.

The plugins are defined in `lua/plugins/`. The file `lua/plugins/example.lua` contains the custom plugin configurations. Any file in this directory is automatically loaded by `lazy.nvim`.

The `lazy-lock.json` file is used to lock the versions of the plugins, ensuring that the configuration is reproducible.

## Installation

1.  Clone this repository to `~/.config/nvim`.
2.  Delete the .git folder
3.  Start Neovim. `lazy.nvim` will automatically install the plugins.
