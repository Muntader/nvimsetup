# Config Cleanup & Productivity Plan

## 1. Delete diagnostics.lua, merge sign icons into lsp.lua

**Delete** `lua/diagnostics.lua` entirely — it's overridden by lsp.lua anyway.

**Edit** `lua/config/lsp.lua` — replace the `vim.diagnostic.config({...})` block with the merged version including sign icons from diagnostics.lua:

```lua
vim.diagnostic.config({
  virtual_text = false,
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = "",
      [vim.diagnostic.severity.WARN] = "",
      [vim.diagnostic.severity.INFO] = "",
      [vim.diagnostic.severity.HINT] = "󰌶",
    },
  },
  underline = true,
  update_in_insert = false,
  severity_sort = true,
  float = {
    border = "rounded",
    source = true,
    header = "",
    prefix = "",
  },
})
```

**Edit** `init.lua` — remove the `require("diagnostics")` line (line 88).

---

## 2. Fix auto-save

**Edit** `init.lua` — change the auto-save autocmd:

OLD:
```lua
vim.api.nvim_create_autocmd({ "BufWritePost", "FocusLost" }, {
```

NEW:
```lua
vim.api.nvim_create_autocmd({ "InsertLeave", "FocusLost" }, {
```

---

## 3. Fix updatetime & swapfile

**Edit** `init.lua`:

- Change `vim.opt.updatetime = 1000` → `vim.opt.updatetime = 250`
- Change `vim.opt.swapfile = true` → `vim.opt.swapfile = false`
- Remove the swap directory creation line (line 24): `vim.fn.mkdir(vim.fn.stdpath("data") .. "/swap", "p")`

---

## 4. Add quick search mappings

**Edit** `lua/mappings.lua` — add two new Telescope mappings in the `<leader>f` group:

```lua
{ "<leader>fw", ":Telescope grep_string<CR>", desc = "Find word under cursor (project)", mode = "n" },
{ "<leader>fW", ":Telescope grep_string search=<C-R><C-W><CR>", desc = "Find word (type custom)", mode = "n" },
```

---

## 5. Unify Telescope borders

**Edit** `lua/config/telescope.lua`:

- Change `borderchars` from rounded corners to single-line style matching blink's `border = "single"`:
```lua
borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
```

- Change `prompt_prefix` from emoji to clean icon:
```lua
prompt_prefix = " > ",
```

- Change `selection_caret` to minimal:
```lua
selection_caret = "· ",
```

---

## 6. Fix theme color mismatch

**Edit** `lua/config/ui-colors.lua` — make UI overrides theme-aware by reading theme colors dynamically instead of using the hardcoded palette for theme-sensitive groups.

Add a helper at the top of `set_highlights()` that reads the current theme's background colors:

```lua
function M.set_highlights()
  local is_dark = vim.o.background == "dark"
  local c = is_dark and palette.dark or palette.light

  -- Read theme-native colors for groups that should match the active theme
  local theme_bg = vim.api.nvim_get_hl(0, { name = "Normal" }).bg or c.bg
  local theme_bg_float = vim.api.nvim_get_hl(0, { name = "NormalFloat" }).bg
    or vim.api.nvim_get_hl(0, { name = "Pmenu" }).bg or c.bg_float
  local theme_bg_visual = vim.api.nvim_get_hl(0, { name = "Visual" }).bg or c.bg_hover
  local theme_fg = vim.api.nvim_get_hl(0, { name = "Normal" }).fg or c.fg
  local theme_fg_dim = vim.api.nvim_get_hl(0, { name = "Comment" }).fg or c.fg_dim
  local theme_border = vim.api.nvim_get_hl(0, { name = "FloatBorder" }).fg or c.border
```

Then use `theme_bg_float` instead of `c.bg_float` for groups that should blend with the active theme (Pmenu, BlinkCmpMenu, Neo-tree, NormalFloat, Trouble, etc.), while keeping the custom palette for groups that should remain consistent across themes (diagnostics, kind icons, labels, source colors).

Key changes:
- `Neo-tree` bg groups → use `theme_bg_float` instead of `c.bg_alt` (but keep `c.bg_alt` as fallback)
- `Pmenu`, `PmenuSel`, `PmenuSbar` → use theme-native colors
- `BlinkCmpMenu`, `BlinkCmpMenuBorder`, `BlinkCmpDoc` → use `theme_bg_float`
- `NormalFloat`, `FloatBorder` → don't override at all (let theme handle these)
- `TroubleNormal` → use `theme_bg_float`
- Keep all diagnostic, blink kind/label/source, and Copilot colors from the custom palette (these are semantic and should be consistent)