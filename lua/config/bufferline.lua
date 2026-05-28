local M = {}

-- Track which buffers belong to each tab (tabpage -> {bufnr = true})
local tab_bufs = {}

local function ensure_tab(tab)
  if not tab_bufs[tab] then
    tab_bufs[tab] = {}
  end
end

local function add_buf_to_tab(buf, tab)
  ensure_tab(tab)
  tab_bufs[tab][buf] = true
end

local function remove_buf_from_all(buf)
  for tab, bufs in pairs(tab_bufs) do
    bufs[buf] = nil
  end
end

vim.opt.showtabline = 2

require("bufferline").setup({
  options = {
    mode = "buffers",
    custom_filter = function(buf)
      local tab = vim.api.nvim_get_current_tabpage()
      ensure_tab(tab)
      return tab_bufs[tab][buf] == true
    end,
    themable = true,
    separator_style = "thin",
    numbers = "ordinal",
    show_close_icon = false,
    show_buffer_close_icons = true,
    close_command = function(buf)
      require("mini.bufremove").delete(buf, false)
    end,
    right_mouse_command = function(buf)
      require("mini.bufremove").delete(buf, false)
    end,
    diagnostics = "nvim_lsp",
    diagnostics_indicator = function(count, level, diagnostics_dict, context)
      local s = " "
      for e, n in pairs(diagnostics_dict) do
        local sym = e == "error" and "" or (e == "warning" and "" or "")
        s = s .. n .. sym .. " "
      end
      return s
    end,
    offsets = {
      { filetype = "neo-tree", text = "File Explorer", text_align = "left", separator = true },
    },
    groups = {
      options = { toggle_hidden_on_enter = true },
      items = {
        require("bufferline.groups").builtin.pinned:with({ icon = "📌" }),
        require("bufferline.groups").builtin.ungrouped,
      },
    },
    always_show_bufferline = true,
    sort_by = "directory",
  },
})

-- Track buffers per tab (skip special buffers to avoid conflicts)
vim.api.nvim_create_autocmd("BufEnter", {
  callback = function()
    local ft = vim.bo[vim.api.nvim_get_current_buf()].filetype
    if ft == "neo-tree" or ft == "diaglist" or ft == "qf" or ft == "Trouble" then return end
    local buf = vim.api.nvim_get_current_buf()
    local tab = vim.api.nvim_get_current_tabpage()
    add_buf_to_tab(buf, tab)
  end,
})

vim.api.nvim_create_autocmd("BufDelete", {
  callback = function(args)
    remove_buf_from_all(args.buf)
  end,
})

vim.api.nvim_create_autocmd("TabNew", {
  callback = function()
    local tab = vim.api.nvim_get_current_tabpage()
    tab_bufs[tab] = {}
    vim.schedule(function()
      local buf = vim.api.nvim_get_current_buf()
      add_buf_to_tab(buf, tab)
    end)
  end,
})

vim.api.nvim_create_autocmd("TabClosed", {
  callback = function(args)
    tab_bufs[tonumber(args.match)] = nil
  end,
})

-- Winbar breadcrumbs: src > component > file.txt
local function update_winbar()
  local buf = vim.api.nvim_get_current_buf()
  local ft = vim.bo[buf].filetype
  if ft == "neo-tree" or ft == "diaglist" or ft == "help" or ft == "qf" or ft == "lazy" or ft == "Trouble" then
    return
  end
  local path = vim.api.nvim_buf_get_name(buf)
  if path == "" then
    vim.opt_local.winbar = ""
    return
  end
  local cwd = vim.fn.getcwd()
  local rel = path
  if path:find(cwd, 1, true) == 1 then
    rel = path:sub(#cwd + 2)
  end
  local parts = vim.split(rel, "/")
  local segments = {}
  for i, part in ipairs(parts) do
    local is_file = i == #parts
    local hl = is_file and "%#Title#" or "%#Directory#"
    local sep = (i < #parts) and "%#Comment#  " or ""
    table.insert(segments, hl .. " " .. part .. " " .. sep)
  end
  vim.opt_local.winbar = table.concat(segments)
end

vim.api.nvim_create_autocmd({ "BufEnter", "DirChanged" }, {
  callback = update_winbar,
})

vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = function()
    pcall(vim.cmd, "BufferLineRefresh")
  end,
})

return M
