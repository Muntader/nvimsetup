-- Treesitter configuration for Neovim 0.12 + nvim-treesitter main branch

-- Use the old parser location so we don't have to reinstall everything
require("nvim-treesitter").setup({
	install_dir = vim.fn.stdpath("data") .. "/lazy/nvim-treesitter",
})

-- Enable treesitter highlighting and indent for filetypes with a parser
vim.api.nvim_create_autocmd("FileType", {
	callback = function(args)
		local buf = args.buf
		local ok = pcall(vim.treesitter.start, buf)
		if ok then
			vim.bo[buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
		end
	end,
})

-- Indent-based folding (treesitter folding is experimental)
vim.opt.foldmethod = "indent"
vim.opt.foldexpr = "indent"
vim.opt.foldenable = true
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99

-- nvim-ts-autotag
local autotag_ok, autotag = pcall(require, "nvim-ts-autotag")
if autotag_ok then
	autotag.setup({
		opts = {
			enable_close = true,
			enable_rename = true,
			enable_close_on_slash = false,
		},
	})
end

-- nvim-ts-context-commentstring
local ctx_comment_ok, ctx_comment = pcall(require, "ts_context_commentstring")
if ctx_comment_ok then
	ctx_comment.setup({
		enable_autocmd = false,
	})
end

-- nvim-treesitter-textobjects (main branch)
local textobjects_ok, textobjects = pcall(require, "nvim-treesitter-textobjects")
if textobjects_ok then
	textobjects.setup({
		select = {
			lookahead = true,
			selection_modes = {
				["@parameter.outer"] = "v",
				["@function.outer"] = "V",
				["@class.outer"] = "V",
			},
		},
		move = {
			set_jumps = true,
		},
	})
end

-- Helper for textobject select keymaps
local function select_textobject(query, query_group)
	return function()
		require("nvim-treesitter-textobjects.select").select_textobject(query, query_group or "textobjects")
	end
end

-- Select keymaps
vim.keymap.set({ "x", "o" }, "af", select_textobject("@function.outer"))
vim.keymap.set({ "x", "o" }, "if", select_textobject("@function.inner"))
vim.keymap.set({ "x", "o" }, "ac", select_textobject("@class.outer"))
vim.keymap.set({ "x", "o" }, "ic", select_textobject("@class.inner"))
vim.keymap.set({ "x", "o" }, "ab", select_textobject("@block.outer"))
vim.keymap.set({ "x", "o" }, "ib", select_textobject("@block.inner"))
vim.keymap.set({ "x", "o" }, "ai", select_textobject("@conditional.outer"))
vim.keymap.set({ "x", "o" }, "ii", select_textobject("@conditional.inner"))
vim.keymap.set({ "x", "o" }, "al", select_textobject("@loop.outer"))
vim.keymap.set({ "x", "o" }, "il", select_textobject("@loop.inner"))
vim.keymap.set({ "x", "o" }, "ap", select_textobject("@parameter.outer"))
vim.keymap.set({ "x", "o" }, "ip", select_textobject("@parameter.inner"))

-- Helper for move keymaps
local function move_next_start(query)
	return function()
		require("nvim-treesitter-textobjects.move").goto_next_start(query, "textobjects")
	end
end
local function move_next_end(query)
	return function()
		require("nvim-treesitter-textobjects.move").goto_next_end(query, "textobjects")
	end
end
local function move_prev_start(query)
	return function()
		require("nvim-treesitter-textobjects.move").goto_previous_start(query, "textobjects")
	end
end
local function move_prev_end(query)
	return function()
		require("nvim-treesitter-textobjects.move").goto_previous_end(query, "textobjects")
	end
end

-- Move keymaps
vim.keymap.set({ "n", "x", "o" }, "]f", move_next_start("@function.outer"))
vim.keymap.set({ "n", "x", "o" }, "]c", move_next_start("@class.outer"))
vim.keymap.set({ "n", "x", "o" }, "]a", move_next_start("@parameter.inner"))
vim.keymap.set({ "n", "x", "o" }, "[f", move_prev_start("@function.outer"))
vim.keymap.set({ "n", "x", "o" }, "[c", move_prev_start("@class.outer"))
vim.keymap.set({ "n", "x", "o" }, "[a", move_prev_start("@parameter.inner"))
vim.keymap.set({ "n", "x", "o" }, "]F", move_next_end("@function.outer"))
vim.keymap.set({ "n", "x", "o" }, "]C", move_next_end("@class.outer"))
vim.keymap.set({ "n", "x", "o" }, "[F", move_prev_end("@function.outer"))
vim.keymap.set({ "n", "x", "o" }, "[C", move_prev_end("@class.outer"))

-- Swap keymaps
vim.keymap.set("n", "<leader>sp", function()
	require("nvim-treesitter-textobjects.swap").swap_next("@parameter.inner")
end)
vim.keymap.set("n", "<leader>sP", function()
	require("nvim-treesitter-textobjects.swap").swap_previous("@parameter.inner")
end)

-- Treesitter context
local context_ok, context = pcall(require, "treesitter-context")
if context_ok then
	context.setup({
		enable = true,
		max_lines = 3,
		multiline_threshold = 1,
	})
end
