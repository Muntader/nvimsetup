---@type vim.lsp.Config
return {
	cmd = { "tailwindcss-language-server", "--stdio" },
	capabilities = {
		workspace = {
			didChangeWatchedFiles = { dynamicRegistration = false },
		},
	},
	filetypes = {
		"html",
		"css",
		"scss",
		"javascript",
		"javascriptreact",
		"typescript",
		"typescriptreact",
		"svelte",
		"vue",
	},
	root_markers = {
		"tailwind.config.js",
		"tailwind.config.cjs",
		"tailwind.config.mjs",
		"tailwind.config.ts",
		".git",
	},
	settings = {
		tailwindCSS = {
			classAttributes = { "class", "className", "ngClass" },
			experimental = {
				classRegex = {
					[[class:[^\s]*]],
					[[class="([^"]*)"]],
					[[className="([^"]*)"]],
				},
			},
		},
	},
}
