---@type vim.lsp.Config
return {
	cmd = { "emmet-ls", "--stdio" },
	filetypes = {
		"css",
		"html",
		"less",
		"sass",
		"scss",
		"pug",
		"eruby",
		"xml",
		"javascriptreact",
		"typescriptreact",
	},
	init_options = {
		html = {
			options = {
				["bem.enabled"] = true,
			},
		},
	},
}
