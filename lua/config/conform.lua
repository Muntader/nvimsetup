require("conform").setup({
	formatters_by_ft = {
		go = { "goimports", "gofumpt" },
		typescript = { "prettier", "prettierd" },
		typescriptreact = { "prettier", "prettierd" },
		javascript = { "prettier", "prettierd" },
		javascriptreact = { "prettier", "prettierd" },
		vue = { "prettier", "prettierd" },
		html = { "prettier", "prettierd" },
		css = { "prettier", "prettierd" },
		scss = { "prettier", "prettierd" },
		markdown = { "prettier", "prettierd" },
		yaml = { "prettier", "prettierd" },
		json = { "prettier", "prettierd" },
		lua = { "stylua" },
		sql = { "sql_formatter" },
		svelte = { "prettier", "prettierd" },
	},
	format_on_save = {
		timeout_ms = 1000,
		lsp_fallback = true,
		quiet = true, -- Don't show errors for syntax issues
	},
	notify_on_error = false,
})
