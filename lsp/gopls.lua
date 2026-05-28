---@type vim.lsp.Config
return {
	cmd = { "gopls" },
	filetypes = { "go", "gomod", "gowork" },
	root_markers = { "go.work", "go.mod", ".git" },
	settings = {
		gopls = {
			analyses = {
				unusedparams = true,
				shadow = true,
				nilness = true,
				unusedwrite = true,
			},
			staticcheck = true,
			gofumpt = true,
			codelenses = {
				gc_details = true,
				generate = true,
				regenerate_cgo = true,
				tidy = true,
				upgrade_dependency = true,
			},
			usePlaceholders = true,
			completeUnimported = true,
			diagnosticsDelay = "500ms",
			templateExtensions = { "templ" },
			directoryFilters = {
				"-**/node_modules",
				"-**/.git",
				"-**/vendor",
			},
		},
	},
}
