return {
	-- ============================================================================
	-- THEMES - Add better Treesitter-compatible theme
	-- ============================================================================

	-- Theme plugins (kept to essentials)
	{ "sainnhe/gruvbox-material", lazy = true },
	{ "svrana/neosolarized.nvim", lazy = true },

	-- Catppuccin
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
					cmp = true,
					gitsigns = true,
					telescope = true,
					dap = true,
					mason = true,
					which_key = true,
				},
			})
		end,
	},

	-- Tokyo Night
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {
			style = "night",
			transparent = false,
			styles = {
				sidebars = "dark",
				floats = "dark",
			},
		},
	},

	-- GitHub Theme (VSCode-like)
	{
		"projekt0n/github-nvim-theme",
		lazy = true,
		config = function()
			require("github-theme").setup({
				options = {
					transparent = false,
					hide_end_of_buffer = true,
				},
			})
		end,
	},

	-- ============================================================================
	-- GO DEVELOPMENT
	-- ============================================================================

	-- go.nvim removed: gopls is configured natively via vim.lsp.config in lsp/gopls.lua
	-- goimports formatting is handled by conform.nvim

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

	-- Terminal
	{
		"akinsho/toggleterm.nvim",
		cmd = "ToggleTerm",
		keys = {
			{ "<leader>`", "<cmd>ToggleTerm<CR>", desc = "Toggle terminal" },
		},
		opts = {
			size = 15,
			open_mapping = false,
			shade_filetypes = { "none" },
			shade_terminals = true,
			start_in_insert = true,
			direction = "horizontal",
		},
	},

	-- Dashboard
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

			dashboard.section.footer.val = {
				"",
				"  nvim " .. tostring(vim.version()),
			}

			alpha.setup(dashboard.config)
			vim.api.nvim_create_autocmd("User", {
				pattern = "AlphaReady",
				callback = function()
					vim.cmd("set laststatus=0")
				end,
			})
			vim.api.nvim_create_autocmd("BufUnload", {
				buffer = 0,
				callback = function()
					vim.cmd("set laststatus=3")
				end,
			})
		end,
	},

	-- File explorer (config in lua/config/neo-tree.lua)
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		cmd = "Neotree",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
		keys = {
			{ "<leader>e", "<cmd>Neotree toggle<cr>", desc = "Toggle File Explorer" },
		},
	},

	-- Aerial (Code outline)
	{
		"stevearc/aerial.nvim",
		keys = {
			{ "<leader>a", "<cmd>AerialToggle<cr>", desc = "Toggle Aerial" },
		},
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
	-- TREESITTER - UPDATED
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

	-- Mason (setup handled in lua/config/lsp.lua)
	{
		"williamboman/mason.nvim",
		cmd = { "Mason", "MasonInstall" },
		build = ":MasonUpdate",
	},

	-- Tailwind Tools
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

	-- Inc-rename (live preview rename)
	{
		"smjonas/inc-rename.nvim",
		config = function()
			require("inc_rename").setup()
		end,
	},

	-- ============================================================================
	-- COPILOT
	-- ============================================================================

	{
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		event = "InsertEnter",
		config = function()
			require("copilot").setup({
				suggestion = {
					enabled = true,
					auto_trigger = false,
					keymap = {
						accept = "<M-Enter>",
						next = "<M-]>",
						prev = "<M-[>",
						dismiss = "<C-e>",
					},
				},
				panel = { enabled = false },
			})
		end,
	},

	{
		"CopilotC-Nvim/CopilotChat.nvim",
		event = "VeryLazy",
		dependencies = {
			{ "zbirenbaum/copilot.lua" },
			{ "nvim-lua/plenary.nvim" },
		},
		keys = {
			{ "<leader>ac", ":CopilotChat<CR>", desc = "Open Copilot Chat" },
			{ "<leader>ae", ":CopilotChatExplain<CR>", desc = "Explain code" },
			{ "<leader>at", ":CopilotChatTests<CR>", desc = "Generate tests" },
			{ "<leader>af", ":CopilotChatFix<CR>", desc = "Fix diagnostics" },
		},
		opts = {
			window = {
				layout = "dock",
				width = 0.4,
			},
		},
	},

	-- ============================================================================
	-- COMPLETION
	-- ============================================================================

	{
		"saghen/blink.cmp",
		lazy = false,
		dependencies = {
			"saghen/blink.lib",
			"L3MON4D3/LuaSnip",
			"rafamadriz/friendly-snippets",
		},
		build = function()
			require("blink.cmp").build():wait(60000)
		end,
	},

	-- LuaSnip
	{
		"L3MON4D3/LuaSnip",
		build = "make install_jsregexp",
		dependencies = { "rafamadriz/friendly-snippets" },
		config = function()
			-- Load custom React/TSX snippets
			require("luasnip.loaders.from_vscode").lazy_load({
				paths = vim.fn.stdpath("config") .. "/snippets",
			})
		end,
	},

	-- ============================================================================
	-- FORMATTING & LINTING
	-- ============================================================================

	{
		"stevearc/conform.nvim",
		event = "BufWritePre",
	},

	{
		"mfussenegger/nvim-lint",
		event = { "BufReadPost", "BufNewFile" },
	},

	-- ============================================================================
	-- GIT
	-- ============================================================================

	{
		"lewis6991/gitsigns.nvim",
		event = { "BufReadPost", "BufNewFile" },
	},

	{
		"tpope/vim-fugitive",
		cmd = { "Git", "G" },
	},

	-- NEW: Better git diff view
	{
		"sindrets/diffview.nvim",
		cmd = { "DiffviewOpen", "DiffviewFileHistory" },
		keys = {
			{ "<leader>gv", "<cmd>DiffviewOpen<cr>", desc = "Open Diff View" },
			{ "<leader>gH", "<cmd>DiffviewFileHistory %<cr>", desc = "File History" },
		},
	},

	{
		"NeogitOrg/neogit",
		cmd = "Neogit",
		dependencies = { "nvim-lua/plenary.nvim", "sindrets/diffview.nvim" },
		opts = {
			integrations = { diffview = true },
		},
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
		keys = {
			{ "<leader>fp", "<cmd>Telescope project<CR>", desc = "Switch project" },
		},
	},

	-- Telescope UI Select (use Telescope for vim.ui.select)
	{
		"nvim-telescope/telescope-ui-select.nvim",
		dependencies = { "nvim-telescope/telescope.nvim" },
		config = function()
			require("telescope").load_extension("ui-select")
		end,
	},



	-- Spectre (multi-file search & replace)
	{
		"nvim-pack/nvim-spectre",
		dependencies = { "nvim-lua/plenary.nvim" },
		keys = {
			{ "<leader>Sr", "<cmd>lua require('spectre').open()<CR>", desc = "Search & replace" },
		},
	},

	-- ============================================================================
	-- UI ENHANCEMENTS
	-- ============================================================================

	-- Colorizer
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

	-- Bufferline (config in lua/config/bufferline.lua)
	{
		"akinsho/bufferline.nvim",
		event = "VeryLazy",
	},

	-- Statusline (config in lua/config/lualine.lua)
	{
		"nvim-lualine/lualine.nvim",
		event = "VeryLazy",
	},

	-- Native UI is preferred in Neovim 0.12 (noice + notify removed)

	-- NEW: Indent guides
	{
		"lukas-reineke/indent-blankline.nvim",
		event = { "BufReadPost", "BufNewFile" },
		main = "ibl",
		opts = {
			indent = {
				char = "│",
				tab_char = "│",
			},
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

	-- Comments (config in lua/config/comment.lua)
	{
		"numToStr/Comment.nvim",
		event = { "BufReadPost", "BufNewFile" },
		dependencies = { "JoosepAlviste/nvim-ts-context-commentstring" },
	},

	-- Auto-pairs (config in lua/config/autopairs.lua)
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
	},

	-- NEW: Surround text objects
	{
		"kylechui/nvim-surround",
		version = "*",
		event = "VeryLazy",
		config = function()
			require("nvim-surround").setup({})
		end,
	},

	-- Emmet abbreviation expansion (filetype-triggered)
	{
		"mattn/emmet-vim",
		ft = { "html", "css", "javascriptreact", "typescriptreact", "xml", "templ" },
		init = function()
			vim.g.user_emmet_settings = {
				javascriptreact = { extends = "jsx" },
				typescriptreact = { extends = "jsx" },
			}
		end,
	},

	-- NEW: Better text objects
	{
		"echasnovski/mini.ai",
		event = "VeryLazy",
		config = function()
			require("mini.ai").setup({ n_lines = 500 })
		end,
	},

	-- NEW: Flash (better f/t/search motions)
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

	-- Distraction-free mode
	{
		"folke/zen-mode.nvim",
		cmd = "ZenMode",
		keys = {
			{ "<leader>z", "<cmd>ZenMode<CR>", desc = "Toggle Zen Mode" },
		},
	},

	-- Markdown live preview
	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		build = "cd app && yarn install",
		init = function()
			vim.g.mkdp_filetypes = { "markdown" }
		end,
		ft = { "markdown" },
	},

	-- Harpoon
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

	-- Session management (config in lua/config/auto-session.lua)
	{
		"rmagatti/auto-session",
		lazy = false,
	},

	-- Diagnostics
	{
		"folke/trouble.nvim",
		cmd = { "Trouble", "TroubleToggle" },
		keys = {
			{ "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", desc = "Diagnostics (Trouble)" },
			{ "<leader>xX", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", desc = "Buffer Diagnostics (Trouble)" },
		},
	},

	-- Buffer management
	{
		"echasnovski/mini.bufremove",
		event = "VeryLazy",
		config = function()
			require("mini.bufremove").setup()
		end,
	},

	-- Modern icon provider (replaces nvim-web-devicons with better fallbacks)
	{
		"echasnovski/mini.nvim",
		version = false,
		main = "mini.icons",
		config = function()
			require("mini.icons").setup()
			require("mini.icons").mock_nvim_web_devicons()
		end,
	},

	-- NEW: Better quickfix
	{
		"kevinhwang91/nvim-bqf",
		ft = "qf",
	},



	-- Interactive scrollbar (clickable, draggable)
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

	-- Smooth scrolling (mouse + keyboard)
	{
		"folke/snacks.nvim",
		priority = 1000,
		lazy = false,
		opts = {
			bigfile = { enabled = true },
			scroll = { enabled = false },
			run = { enabled = true },
		},
	},


}
