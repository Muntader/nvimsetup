---@type vim.lsp.Config
return {
	cmd = { "typescript-language-server", "--stdio" },
	filetypes = {
		"javascript",
		"javascriptreact",
		"typescript",
		"typescriptreact",
		"vue",
	},
	root_markers = { "tsconfig.json", "package.json", "jsconfig.json", ".git" },
	settings = {
		typescript = {
			preferences = {
				includeCompletionsForModuleExports = true,
				includeCompletionsForImportStatements = true,
				includeCompletionsWithInsertText = true,
				includeCompletionsWithSnippetText = true,
				includeAutomaticOptionalChainCompletions = true,
				importModuleSpecifierPreference = "shortest",
				importModuleSpecifierEnding = "auto",
				jsxAttributeCompletionStyle = "auto",
				organizeImportsIgnoreCase = true,
				organizeImportsCaseFirst = "upper",
			},
			format = {
				allowIncompleteCompletions = false,
				allowRenameOfImportPath = true,
			},
		},
		javascript = {
			preferences = {
				includeCompletionsForModuleExports = true,
				includeCompletionsForImportStatements = true,
				includeCompletionsWithInsertText = true,
				includeCompletionsWithSnippetText = true,
				includeAutomaticOptionalChainCompletions = true,
				importModuleSpecifierPreference = "shortest",
				importModuleSpecifierEnding = "auto",
				jsxAttributeCompletionStyle = "auto",
				organizeImportsIgnoreCase = true,
				organizeImportsCaseFirst = "upper",
			},
			format = {
				allowIncompleteCompletions = false,
				allowRenameOfImportPath = true,
			},
		},
	},
}
