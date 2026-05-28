require("blink.cmp").setup({
	fuzzy = { implementation = "prefer_rust_with_warning" },
	signature = { enabled = true },
	keymap = {
		preset = "default",
		["<C-space>"] = {},
		["<C-p>"] = {},
		["<Tab>"] = { "accept", "snippet_forward", "fallback" },
		["<S-Tab>"] = { "select_prev", "snippet_backward", "fallback" },
		["<C-y>"] = { "show", "show_documentation", "hide_documentation" },
		["<C-n>"] = { "select_next", "fallback" },
		["<C-j>"] = { "select_next", "fallback" },
		["<C-k>"] = { "select_prev", "fallback" },
		["<C-b>"] = { "scroll_documentation_down", "fallback" },
		["<C-f>"] = { "scroll_documentation_up", "fallback" },
		["<C-l>"] = { "snippet_forward", "fallback" },
		["<C-h>"] = { "snippet_backward", "fallback" },
		["<CR>"] = { "accept", "fallback" },
	},
	appearance = {
		use_nvim_cmp_as_default = true,
		nerd_font_variant = "normal",
	},
	completion = {
		accept = {
			auto_brackets = { enabled = true },
		},
		documentation = {
			auto_show = true,
			auto_show_delay_ms = 200,
		},
		list = {
			selection = {
				preselect = true,
				auto_insert = false,
			},
		},
		menu = {
			draw = {
				columns = {
					{ "label", "label_description", gap = 1 },
				},
			},
		},
	},
	cmdline = {
		enabled = true,
		sources = { default = { "cmdline", "path", "buffer" } },
		completion = {
			list = { selection = { preselect = true, auto_insert = false } },
		},
		keymap = {
			preset = "cmdline",
			["<CR>"] = { "accept_and_enter", "fallback" },
		},
	},
	sources = {
		default = { "lsp", "path", "snippets", "buffer", "copilot" },
		min_keyword_length = 1,
		providers = {
			lsp = { score_offset = 5, fallbacks = { "buffer" } },
			path = { score_offset = 3 },
			snippets = { score_offset = 2 },
			buffer = { score_offset = 1 },
			copilot = {
				name = "copilot",
				module = "blink-copilot",
				score_offset = 100,
				async = true,
			},
		},
	},
})

-- Reset all completion state on each cmdline enter to prevent stale context
vim.api.nvim_create_autocmd("CmdlineEnter", {
	group = vim.api.nvim_create_augroup("blink_cmp_safety", { clear = true }),
	callback = function()
		pcall(function()
			local trigger = require("blink.cmp.completion.trigger")
			trigger.hide()
			local list = require("blink.cmp.completion.list")
			list.context = nil
			list.items = {}
			list.selected_item_idx = nil
			local sources = require("blink.cmp.sources.lib")
			if sources.completions_queue ~= nil then
				sources.completions_queue:destroy()
				sources.completions_queue = nil
			end
		end)
	end,
})
