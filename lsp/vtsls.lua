---@type vim.lsp.Config
return {
  filetypes = {
    "typescript",
    "typescriptreact",
    "javascript",
    "javascriptreact",
  },

  -- One server instance per project root (package.json / tsconfig.json).
  root_markers = { "tsconfig.json", "jsconfig.json", "package.json", ".git" },

  cmd = { "vtsls", "--stdio" },

  settings = {
    typescript = {
      inlayHints = {
        parameterNames = { enabled = "none" },
        parameterTypes = { enabled = false },
        variableTypes = { enabled = false },
        propertyDeclarationTypes = { enabled = false },
        functionLikeReturnTypes = { enabled = false },
        enumMemberValues = { enabled = false },
      },
      preferences = {
        importModuleSpecifier = "relative",
        includePackageJsonAutoImports = "auto",
        autoImportFileExcludePatterns = { "**/node_modules/**/index.d.ts" },
      },
      suggest = {
        completeFunctionCalls = true,
        includeAutomaticOptionalChainCompletions = true,
        includeCompletionsForImportStatements = true,
      },
      tsserver = {
        maxTsServerMemory = 2048,
        experimental = {
          enableProjectDiagnostics = false,
        },
      },
    },

    javascript = {
      inlayHints = {
        parameterNames = { enabled = "none" },
        parameterTypes = { enabled = false },
        variableTypes = { enabled = false },
        propertyDeclarationTypes = { enabled = false },
        functionLikeReturnTypes = { enabled = false },
        enumMemberValues = { enabled = false },
      },
      preferences = {
        importModuleSpecifier = "relative",
        includePackageJsonAutoImports = "auto",
        autoImportFileExcludePatterns = { "**/node_modules/**/index.d.ts" },
      },
      suggest = {
        completeFunctionCalls = true,
        includeAutomaticOptionalChainCompletions = true,
        includeCompletionsForImportStatements = true,
      },
    },

    vtsls = {
      tsserver = {
        globalPlugins = {},
      },
      experimental = {
        completion = {
          enableServerSideFuzzyMatch = true,
        },
      },
    },
  },
}
