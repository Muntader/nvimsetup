-- ============================================================================
-- LSP CORE CONFIG
-- lua/config/lsp.lua
-- ============================================================================

require("mason").setup()

-- ============================================================================
-- CAPABILITIES
-- Uses blink.cmp only — nvim-cmp removed
-- ============================================================================

local capabilities = require("blink.cmp").get_lsp_capabilities(
  vim.lsp.protocol.make_client_capabilities()
)

-- ============================================================================
-- ON_ATTACH
-- Keep it minimal: only things that need a buffer reference go here.
-- No autocmds that fire on every keystroke or every InsertLeave.
-- ============================================================================

local on_attach = function(client, bufnr)
  -- Code lens is manual-only to avoid extra refresh work on attach/save.
  if client.server_capabilities.codeLensProvider then
    vim.keymap.set("n", "<leader>cl", vim.lsp.codelens.run, {
      buffer = bufnr,
      desc = "Run code lens",
    })
  end

  -- Inlay hints: off by default, toggle per buffer.
  -- Enabling globally causes a textDocument/inlayHint request on every
  -- didChange event for every open buffer — very expensive with gopls/vtsls.
  if client.server_capabilities.inlayHintProvider then
    vim.keymap.set("n", "<leader>lh", function()
      vim.lsp.inlay_hint.enable(
        not vim.lsp.inlay_hint.is_enabled({ bufnr = bufnr }),
        { bufnr = bufnr }
      )
    end, { buffer = bufnr, desc = "Toggle inlay hints" })
  end
end

-- ============================================================================
-- GLOBAL LSP DEFAULTS
-- ============================================================================

vim.lsp.config("*", {
  capabilities = capabilities,
  on_attach = on_attach,
})

-- ============================================================================
-- ENABLE SERVERS
-- Configs live in lsp/<name>.lua
-- ============================================================================

vim.lsp.enable({
  "bashls",
  "cssls",
  "dockerls",
  "emmet_ls",
  "gopls",
  "html",
  "jsonls",
  "lua_ls",
  "prismals",
  "tailwindcss",
  "vtsls",
  "yamlls",
})

-- ============================================================================
-- WORKSPACE FILE CHANGE NOTIFICATIONS
-- Single global handler — not duplicated in on_attach.
-- Wrapped in vim.schedule so it doesn't block the write.
-- ============================================================================

vim.api.nvim_create_autocmd("BufWritePost", {
  group = vim.api.nvim_create_augroup("LspWatchedFiles", { clear = true }),
  callback = function(args)
    vim.schedule(function()
      local uri = vim.uri_from_bufnr(args.buf)
      for _, client in ipairs(vim.lsp.get_clients({ bufnr = args.buf })) do
        if client:supports_method("workspace/didChangeWatchedFiles") then
          client:notify("workspace/didChangeWatchedFiles", {
            changes = { { uri = uri, type = 2 } },
          })
        end
      end
    end)
  end,
})

vim.api.nvim_create_autocmd("BufWritePre", {
  group = vim.api.nvim_create_augroup("LspOrganizeImports", { clear = true }),
  pattern = { "*.ts", "*.tsx", "*.js", "*.jsx" },
  callback = function()
    local clients = vim.lsp.get_clients({ bufnr = 0, name = "vtsls" })
    if #clients > 0 then
      vim.lsp.buf.code_action({
        context = { only = { "source.organizeImports.ts" } },
        apply = true,
      })
    end
  end,
})

-- ============================================================================
-- CLEAN EXIT — stop all LSP clients when Neovim quits
-- Prevents servers from lingering as orphan processes after :qa
-- ============================================================================

vim.api.nvim_create_autocmd("VimLeavePre", {
  group = vim.api.nvim_create_augroup("LspCleanExit", { clear = true }),
  callback = function()
    for _, client in ipairs(vim.lsp.get_clients()) do
      client:stop()
    end
  end,
})

-- ============================================================================
-- DIAGNOSTICS CONFIG
-- Virtual text off by default (use <leader>xd to toggle).
-- Reduces redraws on large files.
-- ============================================================================

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

-- Show diagnostics under cursor on CursorHold (instead of virtual text everywhere)
vim.api.nvim_create_autocmd("CursorHold", {
  group = vim.api.nvim_create_augroup("LspDiagHover", { clear = true }),
  callback = function()
    vim.diagnostic.open_float(nil, { focus = false })
  end,
})

-- Toggle virtual text
vim.keymap.set("n", "<leader>xd", function()
  local current = vim.diagnostic.config().virtual_text
  vim.diagnostic.config({ virtual_text = not current })
end, { desc = "Toggle diagnostic virtual text" })
