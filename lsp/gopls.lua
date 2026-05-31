---@type vim.lsp.Config
return {
  filetypes = { "go", "gomod", "gowork", "gotmpl" },

  root_markers = { "go.mod", "go.work", ".git" },

  -- Cap the gopls process memory via GOMEMLIMIT env var (Go 1.19+).
  -- 512MiB is generous for most projects; drop to 384MiB if still heavy.
  cmd = { "gopls" },
  cmd_env = {
    GOMEMLIMIT = "512MiB",
  },

  settings = {
    gopls = {
      -- Don't crawl parent directories above go.mod looking for more Go code.
      expandWorkspaceToModule = false,

      analyses = {
        unusedparams = true,
        unusedvariable = true,
        shadow = false,
        unusedwrite = false,
        fieldalignment = false,
        nilness = true,
        useany = true,
      },

      -- Use external linting instead of gopls' in-process staticcheck.
      staticcheck = false,

      codelenses = {
        generate = true,
        gc_details = false,
        test = true,
        tidy = false,
        upgrade_dependency = false,
      },

      -- Controlled per-buffer via <leader>lh toggle in mappings/on_attach.
      hints = {
        assignVariableTypes = false,
        compositeLiteralFields = false,
        compositeLiteralTypes = false,
        constantValues = false,
        functionTypeParameters = false,
        parameterNames = true,
        rangeVariableTypes = false,
      },

      usePlaceholders = true,
      completeUnimported = true,
      buildFlags = {},

      -- Formatting is handled by conform.nvim.
      gofumpt = false,
    },
  },
}
