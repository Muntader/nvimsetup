local lint = require("lint")

-- Use eslint_d if available, fallback to eslint
if vim.fn.executable("eslint_d") == 1 then
	lint.linters.eslint = lint.linters.eslint_d or lint.linters.eslint
	lint.linters.eslint.cmd = "eslint_d"
end

lint.linters_by_ft = {
	-- TS/JS linting handled by eslint-lsp LSP instead
	yaml = { "yamllint" },
	json = { "jsonlint" },
	html = { "tidy" },
	css = { "stylelint" },
	scss = { "stylelint" },
	sql = { "sqlfluff" },
	lua = { "luacheck" },
}

-- Function to check if a linter is installed
local function is_linter_installed(linter)
	return vim.fn.executable(linter) == 1
end

-- Run linting on write and leave insert mode (only for filetypes that have linters configured)
local lint_fts = vim.tbl_keys(lint.linters_by_ft)
vim.api.nvim_create_autocmd({ "BufWritePost", "InsertLeave" }, {
	callback = function()
		local ft = vim.bo.filetype
		if not vim.tbl_contains(lint_fts, ft) then
			return
		end
		for _, linter in ipairs(lint.linters_by_ft[ft]) do
			if is_linter_installed(linter) then
				require("lint").try_lint(linter)
			else
				vim.notify("Linter " .. linter .. " not found for " .. ft, vim.log.levels.WARN)
			end
		end
	end,
})
