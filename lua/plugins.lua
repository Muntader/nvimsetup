return {
	-- ============================================================================
	-- THEMES
	-- ============================================================================

	{ "sainnhe/gruvbox-material", lazy = true },
	{ "svrana/neosolarized.nvim", lazy = true },

	{
		"catppuccin/nvim",
		name = "catppuccin",
		lazy = false,
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				flavour = "mocha",
				transparent_background = false,
				integrations = {
					treesitter = true,
					native_lsp = { enabled = true },
					blink_cmp = true, -- was cmp = true
					gitsigns = true,
					telescope = true,
					dap = true,
					mason = true,
					which_key = true,
				},
			})
		end,
	},

	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {
			style = "night",
			transparent = false,
			styles = { sidebars = "dark", floats = "dark" },
		},
	},

	{
		"projekt0n/github-nvim-theme",
		lazy = true,
		config = function()
			require("github-theme").setup({
				options = { transparent = false, hide_end_of_buffer = true },
			})
		end,
	},

	-- ============================================================================
	-- DEBUGGING (DAP)
	-- ============================================================================

	{
		"mfussenegger/nvim-dap",
		dependencies = {
			"rcarriga/nvim-dap-ui",
			"theHamsta/nvim-dap-virtual-text",
			"nvim-neotest/nvim-nio",
			"leoluz/nvim-dap-go",
		},
		keys = {
			{
				"<leader>db",
				function()
					require("dap").toggle_breakpoint()
				end,
				desc = "Toggle Breakpoint",
			},
			{
				"<leader>dc",
				function()
					require("dap").continue()
				end,
				desc = "Continue",
			},
			{
				"<leader>di",
				function()
					require("dap").step_into()
				end,
				desc = "Step Into",
			},
			{
				"<leader>do",
				function()
					require("dap").step_over()
				end,
				desc = "Step Over",
			},
			{
				"<leader>dO",
				function()
					require("dap").step_out()
				end,
				desc = "Step Out",
			},
			{
				"<leader>dt",
				function()
					require("dapui").toggle()
				end,
				desc = "Toggle DAP UI",
			},
		},
		config = function()
			require("dap-go").setup()
			require("nvim-dap-virtual-text").setup({})
			require("dapui").setup()
		end,
	},

	-- ============================================================================
	-- NAVIGATION & UI
	-- ============================================================================

	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		config = function()
			require("which-key").setup()
		end,
	},

	{ "tiagovla/scope.nvim", config = true },

	{
		"akinsho/toggleterm.nvim",
		cmd = "ToggleTerm",
		keys = { { "<leader>`", "<cmd>ToggleTerm<CR>", desc = "Toggle terminal" } },
		opts = {
			size = 15,
			open_mapping = false,
			shade_filetypes = { "none" },
			shade_terminals = true,
			start_in_insert = true,
			direction = "horizontal",
		},
	},

	{
		"goolord/alpha-nvim",
		event = "UIEnter",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			local alpha = require("alpha")
			local dashboard = require("alpha.themes.dashboard")

			dashboard.section.header.val = {
				"",
				"  ╻ ╻╺┳╸╻ ╻┏━┓╻  ╻  ",
				"  ┃ ┃ ┃ ┣━┫┣━┫┃  ┃  ",
				"  ┗━┛ ╹ ╹ ╹╹ ╹┗━╸┗━╸",
				"",
			}
			dashboard.section.header.opts.hl = "Type"

			dashboard.section.buttons.val = {
				dashboard.button("e", "  📄 New file", ":ene <BAR> startinsert<CR>"),
				dashboard.button("f", "  🔍 Find file", ":Telescope find_files<CR>"),
				dashboard.button("r", "  📂 Recent files", ":Telescope oldfiles<CR>"),
				dashboard.button("p", "  📁 Project", ":Telescope project<CR>"),
				dashboard.button("q", "  ❌ Quit", ":qa<CR>"),
			}
			dashboard.section.buttons.opts.hl = "Keyword"

			dashboard.section.footer.val = { "", "  nvim " .. tostring(vim.version()) }

			alpha.setup(dashboard.config)

			local ag = vim.api.nvim_create_augroup("AlphaStatusline", { clear = true })
			vim.api.nvim_create_autocmd("User", {
				pattern = "AlphaReady",
				group = ag,
				callback = function()
					vim.cmd("set laststatus=0")
				end,
			})
			vim.api.nvim_create_autocmd("BufUnload", {
				buffer = 0,
				group = ag,
				callback = function()
					vim.cmd("set laststatus=3")
				end,
			})
		end,
	},

	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		cmd = "Neotree",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
		keys = { { "<leader>e", "<cmd>Neotree toggle<cr>", desc = "Toggle File Explorer" } },
	},

	{
		"stevearc/aerial.nvim",
		keys = { { "<leader>a", "<cmd>AerialToggle<cr>", desc = "Toggle Aerial" } },
		opts = {
			layout = {
				default_direction = "right",
				placement = "edge",
				min_width = 25,
				max_width = { 32, 0.2 },
			},
			attach_mode = "global",
			close_on_select = false,
		},
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"nvim-tree/nvim-web-devicons",
		},
	},

	-- ============================================================================
	-- TREESITTER
	-- ============================================================================

	{
		"nvim-treesitter/nvim-treesitter",
		branch = "main",
		lazy = false,
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter").setup()
		end,
		dependencies = {
			{ "nvim-treesitter/nvim-treesitter-textobjects", branch = "main" },
			"nvim-treesitter/nvim-treesitter-context",
			"windwp/nvim-ts-autotag",
			"JoosepAlviste/nvim-ts-context-commentstring",
		},
	},

	-- ============================================================================
	-- LSP
	-- ============================================================================

	{
		"williamboman/mason.nvim",
		cmd = { "Mason", "MasonInstall" },
		build = ":MasonUpdate",
	},

	{
		"luckasRanarison/tailwind-tools.nvim",
		dependencies = { "nvim-treesitter/nvim-treesitter" },
		ft = {
			"html",
			"templ",
			"css",
			"scss",
			"javascript",
			"javascriptreact",
			"typescript",
			"typescriptreact",
			"svelte",
			"vue",
		},
		opts = {},
	},

	{
		"smjonas/inc-rename.nvim",
		config = function()
			require("inc_rename").setup()
		end,
	},

	-- ============================================================================
	-- COMPLETION — blink.cmp only
	-- Setup lives in lua/config/blink.lua
	-- ============================================================================

	{
		"saghen/blink.cmp",
		lazy = false,
		version = "*",
		dependencies = {
			"saghen/blink.lib",
			"L3MON4D3/LuaSnip",
			"rafamadriz/friendly-snippets",
			{ "zbirenbaum/copilot.lua", opts = { suggestion = { enabled = false }, panel = { enabled = false } } },
			"giuxtaposition/blink-cmp-copilot",
		},
	},

	{
		"L3MON4D3/LuaSnip",
		build = "make install_jsregexp",
		dependencies = { "rafamadriz/friendly-snippets" },
		config = function()
			require("luasnip.loaders.from_vscode").lazy_load()
			require("luasnip.loaders.from_vscode").lazy_load({
				paths = vim.fn.stdpath("config") .. "/snippets",
			})
		end,
	},

	-- ============================================================================
	-- FORMATTING & LINTING
	-- ============================================================================

	{ "stevearc/conform.nvim", event = "BufWritePre" },
	{ "mfussenegger/nvim-lint", event = { "BufReadPost", "BufNewFile" } },

	-- ============================================================================
	-- GIT
	-- ============================================================================

	{
		"sindrets/diffview.nvim",
		cmd = { "DiffviewOpen", "DiffviewFileHistory" },
		keys = {
			{ "<leader>gv", "<cmd>DiffviewOpen<cr>", desc = "Open Diff View" },
			{ "<leader>gH", "<cmd>DiffviewFileHistory %<cr>", desc = "File History" },
		},
	},

	{
		"kdheepak/lazygit.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		event = "VeryLazy",
	},

	-- ============================================================================
	-- SEARCH & TELESCOPE
	-- ============================================================================

	{
		"nvim-telescope/telescope.nvim",
		cmd = "Telescope",
		keys = {
			{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
			{ "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live Grep" },
			{ "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
			{ "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help Tags" },
		},
		dependencies = {
			"nvim-lua/plenary.nvim",
			{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		},
	},

	{
		"nvim-telescope/telescope-file-browser.nvim",
		dependencies = { "nvim-telescope/telescope.nvim" },
	},

	{
		"nvim-telescope/telescope-project.nvim",
		dependencies = { "nvim-telescope/telescope.nvim" },
		keys = { { "<leader>fp", "<cmd>Telescope project<CR>", desc = "Switch project" } },
	},

	{
		"nvim-telescope/telescope-ui-select.nvim",
		dependencies = { "nvim-telescope/telescope.nvim" },
		config = function()
			require("telescope").load_extension("ui-select")
		end,
	},

	{
		"nvim-pack/nvim-spectre",
		dependencies = { "nvim-lua/plenary.nvim" },
		keys = { { "<leader>Sr", "<cmd>lua require('spectre').open()<CR>", desc = "Search & replace" } },
	},

	-- ============================================================================
	-- UI ENHANCEMENTS
	-- ============================================================================

	{
		"catgoose/nvim-colorizer.lua",
		event = "BufReadPre",
		opts = {
			filetypes = { "*", "!lazy" },
			user_default_options = {
				RGB = true,
				RRGGBB = true,
				names = false,
				mode = "background",
				tailwind = true,
				always_update = false,
			},
		},
	},

	{ "akinsho/bufferline.nvim", event = "VeryLazy" },
	{ "nvim-lualine/lualine.nvim", event = "VeryLazy" },

	{
		"lukas-reineke/indent-blankline.nvim",
		event = { "BufReadPost", "BufNewFile" },
		main = "ibl",
		opts = {
			indent = { char = "│", tab_char = "│" },
			scope = { enabled = false },
			exclude = {
				filetypes = {
					"help",
					"alpha",
					"dashboard",
					"neo-tree",
					"Trouble",
					"lazy",
					"mason",
				},
			},
		},
	},

	-- ============================================================================
	-- CODE EDITING ENHANCEMENTS
	-- ============================================================================

	{
		"numToStr/Comment.nvim",
		event = { "BufReadPost", "BufNewFile" },
		dependencies = { "JoosepAlviste/nvim-ts-context-commentstring" },
	},

	{ "windwp/nvim-autopairs", event = "InsertEnter" },

	{
		"kylechui/nvim-surround",
		version = "*",
		event = "VeryLazy",
		config = function()
			require("nvim-surround").setup({})
		end,
	},

	

	{
		"echasnovski/mini.ai",
		event = "VeryLazy",
		config = function()
			require("mini.ai").setup({ n_lines = 500 })
		end,
	},

	{
		"folke/flash.nvim",
		event = "VeryLazy",
		opts = {},
		keys = {
			{
				"s",
				mode = { "n", "x", "o" },
				function()
					require("flash").jump()
				end,
				desc = "Flash",
			},
			{
				"S",
				mode = { "n", "x", "o" },
				function()
					require("flash").treesitter()
				end,
				desc = "Flash Treesitter",
			},
			{
				"r",
				mode = "o",
				function()
					require("flash").remote()
				end,
				desc = "Remote Flash",
			},
		},
	},

	-- ============================================================================
	-- UTILITIES
	-- ============================================================================

	{ "nvim-lua/plenary.nvim" },

	{
		"folke/zen-mode.nvim",
		cmd = "ZenMode",
		keys = { { "<leader>z", "<cmd>ZenMode<CR>", desc = "Toggle Zen Mode" } },
	},

	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		build = "cd app && yarn install",
		init = function()
			vim.g.mkdp_filetypes = { "markdown" }
		end,
		ft = { "markdown" },
	},

	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim" },
		keys = {
			{
				"<leader>ha",
				function()
					require("harpoon"):list():add()
				end,
				desc = "Harpoon file",
			},
			{
				"<leader>H",
				function()
					require("harpoon").ui:toggle_quick_menu(require("harpoon"):list())
				end,
				desc = "Harpoon menu",
			},
			{
				"<leader>h1",
				function()
					require("harpoon"):list():select(1)
				end,
				desc = "Harpoon file 1",
			},
			{
				"<leader>h2",
				function()
					require("harpoon"):list():select(2)
				end,
				desc = "Harpoon file 2",
			},
			{
				"<leader>h3",
				function()
					require("harpoon"):list():select(3)
				end,
				desc = "Harpoon file 3",
			},
			{
				"<leader>h4",
				function()
					require("harpoon"):list():select(4)
				end,
				desc = "Harpoon file 4",
			},
		},
	},

	{ "rmagatti/auto-session", lazy = false },

	{
		"folke/trouble.nvim",
		cmd = { "Trouble", "TroubleToggle" },
		keys = {
			{ "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", desc = "Diagnostics (Trouble)" },
			{ "<leader>xX", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", desc = "Buffer Diagnostics (Trouble)" },
		},
	},

	{
		"echasnovski/mini.bufremove",
		event = "VeryLazy",
		config = function()
			require("mini.bufremove").setup()
		end,
	},

	{
		"echasnovski/mini.nvim",
		version = false,
		main = "mini.icons",
		config = function()
			require("mini.icons").setup()
			require("mini.icons").mock_nvim_web_devicons()
		end,
	},

	{ "kevinhwang91/nvim-bqf", ft = "qf" },

	{
		"dstein64/nvim-scrollview",
		lazy = false,
		init = function()
			vim.g.scrollview_mouse_primary = "left"
			vim.g.scrollview_mouse_secondary = "right"
			vim.g.scrollview_hide_on_cursor_intersect = 0
			vim.g.scrollview_hide_on_float_intersect = 0
			vim.g.scrollview_hide_on_text_intersect = 0
		end,
	},

	{
		"folke/snacks.nvim",
		priority = 900, -- alpha owns 1000; snacks doesn't need to race it
		lazy = false,
		opts = {
			bigfile = { enabled = true },
			scroll = { enabled = false },
			run = { enabled = true },
		},
	},

	{
		dir = "/home/ox/LuaPluginFun/taskflow.nvim",
		name = "taskflow.nvim",
		config = function()
			require("taskflow").setup()
		end,
		keys = {
			{ "<leader>tw", "<cmd>Taskflow<cr>", desc = "Toggle Taskflow" },
			{ "<leader>ta", "<cmd>TaskflowAdd<cr>", desc = "Taskflow Add" },
			{ "<leader>ts", "<cmd>TaskflowSearch<cr>", desc = "Taskflow Search" },
		},
	},
}
