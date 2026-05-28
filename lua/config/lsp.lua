local mason = require("mason")

-- Initialize mason.nvim (handles installing LSP servers/DAP/linters/formatters)
mason.setup({
	ensure_installed = {
		"eslint_d",
		"prettier",
		"gofumpt",
		"vtsls",
	},
})

-- Common on_attach function for LSP servers
local on_attach = function(client, bufnr)
	-- Enable code lens if supported
	if client.server_capabilities.codeLensProvider then
		vim.api.nvim_create_autocmd({ "InsertLeave" }, {
			buffer = bufnr,
			callback = function()
				vim.lsp.codelens.enable(true)
			end,
		})
		vim.keymap.set("n", "<leader>cl", vim.lsp.codelens.run, { buffer = bufnr, noremap = true, silent = true })
	end

	-- Refresh references when entering buffer
	vim.api.nvim_create_autocmd("BufEnter", {
		buffer = bufnr,
		callback = function()
			vim.lsp.buf.clear_references()
		end,
	})

	-- Notify LSP of file changes when saving
	vim.api.nvim_create_autocmd("BufWritePost", {
		buffer = bufnr,
		callback = function()
			vim.schedule(function()
				if client:supports_method("workspace/didChangeWatchedFiles") then
					client:notify("workspace/didChangeWatchedFiles", {
						changes = {
							{
								uri = vim.uri_from_bufnr(bufnr),
								type = 2, -- Changed
							},
						},
					})
				end
			end)
		end,
	})
end

-- Global LSP defaults
vim.lsp.config("*", {
	capabilities = require("blink.cmp").get_lsp_capabilities(vim.lsp.protocol.make_client_capabilities()),
	on_attach = on_attach,
})

-- Enable all LSP servers (configs live in lsp/ directory)
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

-- Global autocmd to notify ALL LSP clients when ANY file is saved
vim.api.nvim_create_autocmd("BufWritePost", {
	callback = function(args)
		local uri = vim.uri_from_bufnr(args.buf)
		for _, client in ipairs(vim.lsp.get_clients({ bufnr = args.buf })) do
			if client:supports_method("workspace/didChangeWatchedFiles") then
				client:notify("workspace/didChangeWatchedFiles", {
					changes = {
						{
							uri = uri,
							type = 2, -- Changed
						},
					},
				})
			end
		end
	end,
})

-- Suppress LSP progress messages
vim.lsp.handlers["$/progress"] = function() end
vim.api.nvim_create_autocmd("LspProgress", {
	callback = function()
		return true
	end,
})

-- Add keymapping to manually restart LSP
vim.keymap.set("n", "<leader>lR", function()
	for _, client in ipairs(vim.lsp.get_clients()) do
		client:stop()
	end
	vim.cmd("edit")
end, { desc = "Restart LSP clients" })

-- Add keymapping to manually refresh current buffer
vim.keymap.set("n", "<leader>lF", function()
	vim.lsp.buf.clear_references()
	vim.diagnostic.reset()
	for _, client in ipairs(vim.lsp.get_clients({ bufnr = 0 })) do
		if client:supports_method("textDocument/diagnostic") then
			vim.lsp.buf_request(0, "textDocument/diagnostic", {
				textDocument = vim.lsp.util.make_text_document_params(0),
			})
		end
	end
	print("LSP refreshed for current buffer")
end, { desc = "Refresh LSP for current buffer" })
