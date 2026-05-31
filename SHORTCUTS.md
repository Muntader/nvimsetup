# Neovim Keyboard Shortcuts

> Leader key = ` Space`

---

## Buffer Management `<leader>b`

| Shortcut | Action |
|----------|--------|
| `<leader>bn` | Next buffer |
| `<leader>bP` | Previous buffer |
| `<leader>bb` | Toggle to last buffer |
| `<leader>bf` | Find buffers (Telescope) |
| `<leader>bc` | **Smart close** — switches to adjacent buffer then closes |
| `<leader>bC` | Close all other buffers (keeps current) |
| `<leader>ba` | Close **all** buffers |
| `<leader>bw` | Force delete current buffer (wipeout) |
| `<leader>bp` | Pin/unpin buffer |
| `<leader>br` | Close buffers to the right |
| `<leader>bl` | Close buffers to the left |
| `<leader>bh` | Move buffer left |
| `<leader>bj` | Move buffer right |
| `<leader>b1`-`<leader>b9` | Go to buffer 1–9 |
| `<Tab>` | Next buffer |
| `<S-Tab>` | Previous buffer |
| `<C-w>` | Smart close current buffer |

---

## File Explorer

| Shortcut | Action |
|----------|--------|
| `<leader>e` | Toggle file explorer (Neo-tree) |
| `<leader>ft` | Reveal current file in tree |
| `t` (in Neo-tree) | Open terminal in current folder |
| `/` (in Neo-tree) | Focus code window to search |
| `a` (in Neo-tree) | Create new file |
| `r` (in Neo-tree) | Rename file |
| `d` (in Neo-tree) | Delete file (with confirm) |
| `c` (in Neo-tree) | Copy file (then `p` to paste) |
| `m` (in Neo-tree) | Move/cut file (then `p` to paste) |
| `p` (in Neo-tree) | Paste copied/cut file |
| `y` (in Neo-tree) | Copy path (selector) |
| `Y` (in Neo-tree) | Copy path to system clipboard |
| `s` (in Neo-tree) | Open in horizontal split |
| `v` (in Neo-tree) | Open in vertical split |
| `H` (in Neo-tree) | Toggle dotfiles |
| `F4` (in Neo-tree) | Live filter (type to filter files) |
| `?` (in Neo-tree) | Show help |
| `Tab` (in Neo-tree) | Switch to buffers/git_status/diagnostics view |
| `q` (in Neo-tree) | Close Neo-tree |

---

## Find / Search `<leader>f`

| Shortcut | Action |
|----------|--------|
| `<leader>ff` | Find files (Telescope) |
| `<leader>fg` | Live grep (search in files) |
| `<leader>fb` | Find buffers |
| `<leader>fh` | Help tags |
| `<leader>fs` | Search symbols (Treesitter) |
| `<leader>fe` | File browser (in current file's dir) |
| `<leader>fd` | LSP definitions |
| `<leader>fr` | LSP references |
| `<leader>fl` | Fuzzy find in current buffer |
| `<leader>fo` | Recent files |
| `<leader>fp` | Switch project (Telescope project) |
| `<leader>fk` | Show this keymap picker |
| `gf` | Git files |
| `<leader>?` | Show buffer-local keymaps |

---

## Search & Replace `<leader>s`

| Shortcut | Action |
|----------|--------|
| `<leader>sr` | Search/replace word under cursor |
| `*` / `#` | Search word forward/backward, stay |
| `*` (visual) | Search for selected text |

---

## LSP `<leader>l`

| Shortcut | Action |
|----------|--------|
| `gd` | Go to definition |
| `gD` | Go to declaration |
| `gi` | Go to implementation |
| `gT` | Go to type definition |
| `K` | Hover documentation |
| `<leader>lr` | Rename symbol |
| `<leader>la` | Code action |
| `<leader>ls` | Signature help |
| `<leader>lf` | Format buffer |
| `<leader>ld` | Show line diagnostics |
| `<leader>lh` | Toggle inlay hints |
| `<leader>cl` | Run code lens |
| `[d` | Previous diagnostic |
| `]d` | Next diagnostic |
| `<leader>lR` | Restart all LSP clients (stop + reload) |

---

# Diagnostics / Trouble `<leader>d`

| Shortcut | Action |
|----------|--------|
| `<leader>dn` | Next diagnostic (Trouble) |
| `<leader>dp` | Previous diagnostic (Trouble) |
| `<leader>dd` | Diagnostics below file tree (current buffer only) |
| `<leader>dx` | Buffer diagnostics (Trouble) |
| `<leader>dl` | LSP references panel |
| `<leader>dq` | Quickfix list |
| `<leader>xx` | Toggle Trouble (workspace diagnostics) |
| `<leader>xX` | Buffer diagnostics (Trouble) |
| `<leader>xt` | Document diagnostics (Trouble) |
| `<leader>xq` | Quickfix list (Trouble) |
| `<leader>xl` | Location list (Trouble) |
| `<leader>xd` | Toggle inline diagnostic virtual text |
| `gR` | LSP references (Trouble) |

---

## Git `<leader>g`

| Shortcut | Action |
|----------|--------|
| `<leader>gg` | Git panel (Neogit) — changed files, stage, commit, push |
| `<leader>gs` | Git status (Fugitive) |
| `<leader>gc` | Git commit (Neogit) |
| `<leader>gp` | Git push (Neogit) |
| `<leader>gl` | Git pull (Neogit) |
| `<leader>gb` | Switch branches (Telescope) |
| `<leader>gd` | Show diff vs HEAD (Gitsigns) |
| `<leader>gv` | Open Diff View (Diffview) |
| `<leader>gH` | File history (Diffview) |
| `<leader>gh` | Stage hunk |
| `<leader>gu` | Unstage hunk |
| `<leader>gm` | Git blame line |

---

## Code `<leader>c`

| Shortcut | Action |
|----------|--------|
| `<leader>cc` | Toggle line comment (normal/visual) |
| `<leader>cb` | Toggle block comment (normal/visual) |
| `gcc` | Toggle line comment (via Comment.nvim) |
| `gbc` | Toggle block comment (via Comment.nvim) |

---

## Tab / Window `<leader>t`

| Shortcut | Action |
|----------|--------|
| `<leader>tn` | New tab |
| `<leader>tc` | Close tab |
| `<leader>to` | Close other tabs |
| `<leader>tf` | Next tab |
| `<leader>tp` | Previous tab |
| `<leader>ts` | Horizontal split |
| `<leader>tv` | Vertical split |
| `<leader>t1`-`<leader>t5` | Go to tab 1–5 |

---

## Window Navigation `<leader>w`

| Shortcut | Action |
|----------|--------|
| `<leader>w` | Enter resize mode (j/k/h/l, Esc to exit) |
| `<leader>wH` | Decrease window width |
| `<leader>wh` / `<leader>wj` | Increase window height |
| `<leader>wk` | Decrease window height |
| `<leader>wl` | Increase window width |
| `<C-h>` | Move to left window |
| `<C-j>` | Move to window below |
| `<C-k>` | Move to window above |
| `<C-l>` | Move to right window |

---

## Theme

| Shortcut | Action |
|----------|--------|
| `<leader>th` | Pick theme (Telescope picker with preview) |
| `<leader>tt` | Toggle dark/light theme variant |

---

## Config `<leader>r`

| Shortcut | Action |
|----------|--------|
| `<leader>re` | Edit config (init.lua) |
| `<leader>rr` | Reload config |

---

## Highlights & UI

| Shortcut | Action |
|----------|--------|
| `<leader>hn` | Clear search highlights |
| `<leader>un` | Dismiss notifications |
| `<leader>a` | Toggle code outline (Aerial) |
| `<leader>` `` ` `` | Toggle terminal |
| (auto) | Word under cursor auto-highlighted everywhere |

---

## Debugging (DAP)

| Shortcut | Action |
|----------|--------|
| `<leader>db` | Toggle breakpoint |
| `<leader>dc` | Continue |
| `<leader>di` | Step into |
| `<leader>do` | Step over |
| `<leader>dO` | Step out |
| `<leader>dt` | Toggle DAP UI |

---

## Harpoon

| Shortcut | Action |
|----------|--------|
| `<leader>ha` | Add file to Harpoon list |
| `<leader>hh` | Toggle Harpoon menu |
| `<leader>h1`-`<leader>h4` | Jump to Harpoon file 1–4 |

---

## General

| Shortcut | Action |
|----------|--------|
| `<C-s>` | Save buffer |
| `<leader>q` | Quit without saving |
| `<leader>wq` | Save and quit |
| `<C-z>` | Undo |
| `<C-y>` | Redo |
| `<Esc>` (terminal) | Exit insert mode in terminal |

---

## Visual Mode

| Shortcut | Action |
|----------|--------|
| `<` / `>` | Decrease / increase indent (stay selected) |
| `J` / `K` | Move selected lines down / up |

---

## Completion (Insert Mode)

| Shortcut | Action |
|----------|--------|
| `<C-Space>` | Trigger completion |
| `<C-e>` | Close completion menu |
| `<Tab>` / `<S-Tab>` | Next/prev completion item or snippet jump |
| `<C-j>` / `<C-k>` | Next/prev completion item |
| `<C-b>` / `<C-f>` | Scroll documentation |
| `<CR>` | Confirm selected completion (or newline if none selected) |

---

## Web / Emmet

| Shortcut | Action |
|----------|--------|
| `<C-y>,` | Expand Emmet abbreviation in HTML/TSX/CSS |
| Type `<div` then `>` | Autoclose/rename tags via Treesitter autotag |

---

## Snippets (React / TSX / NestJS)

| Prefix | Expands To |
|--------|------------|
| `rfc` | React Functional Component (TSX) |
| `rfcj` | React Functional Component (JS) |
| `rus` | `useState` hook |
| `rue` | `useEffect` hook |
| `rur` | `useRef` hook |
| `rucb` | `useCallback` hook |
| `rum` | `useMemo` hook |
| `ructx` | `useContext` hook |
| `rurdc` | `useReducer` hook |
| `rcc` | `createContext` with provider hook |
| `roncl` | `onClick` handler |
| `ronch` | `onChange` handler |
| `rofrm` | Form submit handler |
| `rfr` | `forwardRef` component |
| `nmod` | NestJS Module |
| `nctl` | NestJS Controller |
| `nsvc` | NestJS Service |

---

> Open `<leader>fk` to browse keymaps interactively.
