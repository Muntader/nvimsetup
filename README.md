# nvimsetup

Personal Neovim configuration focused on TypeScript/TSX and Go development.

## Plugins

**Completion & LSP**
blink.cmp, LuaSnip, Mason, tailwind-tools.nvim, inc-rename.nvim

**Treesitter**
nvim-treesitter + textobjects, autotag, context

**Git**
Neogit, vim-fugitive, gitsigns.nvim, diffview.nvim

**Navigation & UI**
which-key.nvim, neo-tree.nvim, telescope.nvim, bufferline.nvim, lualine.nvim, alpha-nvim, aerial.nvim, harpoon

**AI**
copilot.lua, CopilotChat.nvim

**Debugging**
nvim-dap, nvim-dap-ui, nvim-dap-go

**Editing**
Comment.nvim, nvim-autopairs, nvim-surround, flash.nvim, mini.ai

**Formatting & Linting**
conform.nvim, nvim-lint

**Themes**
gruvbox-material, neosolarized, catppuccin, tokyonight, github-nvim-theme

## LSP servers

bashls, cssls, dockerls, emmet_ls, gopls, html, jsonls, lua_ls, prismals, tailwindcss, vtsls, yamlls

## Structure

```
├── init.lua
├── lsp/              LSP server configs
├── lua/
│   ├── config/       Plugin configurations
│   ├── plugins.lua   Plugin specs
│   └── mappings.lua  Keybindings
├── SHORTCUTS.md      Keybinding reference
└── snippets/         Custom VS Code snippets
```
