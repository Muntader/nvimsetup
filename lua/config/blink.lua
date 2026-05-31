require("blink.cmp").setup({
	fuzzy = { implementation = "prefer_rust_with_warning" },
	signature = { enabled = true },
	snippets = { preset = "luasnip" },
	keymap = {
		preset = "none",
		["<C-Space>"] = { "show", "fallback" },
		["<C-e>"] = { "cancel", "fallback" },
		["<CR>"] = { "accept", "fallback" },
		["<Tab>"] = { "accept", "snippet_forward", "fallback" },
		["<S-Tab>"] = { "snippet_backward", "fallback" },
		["<C-j>"] = { "select_next", "fallback" },
		["<C-k>"] = { "select_prev", "fallback" },
		["<Up>"] = { "select_prev", "fallback" },
		["<Down>"] = { "select_next", "fallback" },
		["<C-b>"] = { "scroll_documentation_up", "fallback" },
		["<C-f>"] = { "scroll_documentation_down", "fallback" },
		["<C-l>"] = { "snippet_forward", "fallback" },
		["<C-h>"] = { "snippet_backward", "fallback" },
	},
	appearance = {
		use_nvim_cmp_as_default = false,
		nerd_font_variant = "mono",
		kind_icons = {
			Text = "󰉿",
			Method = "󰆧",
			Function = "󰆧",
			Constructor = "",
			Field = "󰜽",
			Variable = "󰀫",
			Class = "󰠱",
			Interface = "",
			Module = "",
			Property = "󰜽",
			Unit = "󰑏",
			Value = "󰎠",
			Enum = "",
			Snippet = "󰘎",
			File = "󰈙",
			Folder = "󰉋",
			Color = "󰏘",
			Keyword = "󰌋",
			Reference = "󰈋",
			Struct = "󰙳",
			Event = "",
			Operator = "󰆕",
			TypeParameter = "󰜿",
			Copilot = "",
		},
	},
	completion = {
		trigger = {
			show_on_insert_on_trigger_character = true,
			show_on_keyword = true,
			show_on_accept_on_trigger_character = true,
			prefetch_on_insert = true,
		},
		accept = {
			auto_brackets = { enabled = true },
		},
		list = {
			max_items = 50,
			selection = {
				preselect = true,
				auto_insert = false,
			},
		},
		menu = {
			border = "none",
			winblend = 0,
			draw = {
				padding = 2,
				columns = {
					{ "kind_icon", gap = 1 },
					{ "label", "label_description", gap = 1 },
				},
			},
		},
		documentation = {
			auto_show = true,
			auto_show_delay_ms = 300,
			window = {
				border = "single",
				winblend = 0,
				max_width = 80,
				max_height = 20,
			},
		},
		ghost_text = { enabled = true },
	},
	cmdline = {
		enabled = true,
		sources = { default = { "cmdline", "path", "buffer" } },
		completion = {
			list = {
				selection = {
					preselect = true,
					auto_insert = false,
				},
			},
		},
		keymap = {
			preset = "cmdline",
			["<CR>"] = { "accept_and_enter", "fallback" },
		},
	},
	sources = {
		default = { "lsp", "path", "snippets", "buffer", "copilot" },
		min_keyword_length = 0,
		providers = {
			lsp = {
				name = "LSP",
				module = "blink.cmp.sources.lsp",
				score_offset = 10,
			},
			path = {
				name = "Path",
				module = "blink.cmp.sources.path",
				score_offset = 3,
			},
			snippets = {
				name = "Snippets",
				module = "blink.cmp.sources.snippets",
				score_offset = 5,
			},
			buffer = {
				name = "Buffer",
				module = "blink.cmp.sources.buffer",
				score_offset = -5,
				opts = {
					get_bufnrs = function()
						return vim.tbl_filter(function(bufnr)
							return vim.bo[bufnr].buftype == ""
								and vim.api.nvim_buf_is_loaded(bufnr)
								and vim.fn.buflisted(bufnr) == 1
						end, vim.api.nvim_list_bufs())
					end,
				},
			},
			copilot = {
				name = "copilot",
				module = "blink-cmp-copilot",
				score_offset = -10,
				async = true,
			},
		},
	},
})
