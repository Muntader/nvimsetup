-- Defining custom key mappings
local wk = require("which-key")

vim.o.hidden = true

-- Smart buffer close: switch to adjacent buffer, then delete current
function _G.smart_buffer_close()
	local bufremove = require("mini.bufremove")
	local cur = vim.api.nvim_get_current_buf()

	-- If current buffer is not a normal buffer, just delete it
	if vim.bo[cur].buftype ~= "" then
		bufremove.delete(cur, true)
		return
	end

	local bufs = vim.tbl_filter(function(b)
		return vim.api.nvim_buf_is_valid(b) and vim.bo[b].buftype == ""
	end, vim.api.nvim_list_bufs())

	if #bufs <= 1 then
		-- Last buffer: create a new empty buffer first, then switch and delete
		vim.cmd("new")
		bufremove.delete(cur, true)
		return
	end

	local idx
	for i, b in ipairs(bufs) do
		if b == cur then
			idx = i
			break
		end
	end

	-- If current wasn't found (shouldn't happen), delete it anyway
	if not idx then
		bufremove.delete(cur, true)
		return
	end

	local target = idx == #bufs and bufs[idx - 1] or bufs[idx + 1]
	pcall(vim.api.nvim_win_set_buf, 0, target)
	pcall(bufremove.delete, cur, false)
end

-- Close all buffers except current
function _G.close_other_buffers()
	local cur = vim.api.nvim_get_current_buf()
	local bufremove = require("mini.bufremove")
	for _, buf in ipairs(vim.api.nvim_list_bufs()) do
		if vim.api.nvim_buf_is_valid(buf) and vim.bo[buf].buftype == "" and buf ~= cur then
			bufremove.delete(buf, true)
		end
	end
end

-- Close all normal buffers
function _G.close_all_buffers()
	local bufremove = require("mini.bufremove")
	for _, buf in ipairs(vim.api.nvim_list_bufs()) do
		if vim.api.nvim_buf_is_valid(buf) and vim.bo[buf].buftype == "" then
			bufremove.delete(buf, true)
		end
	end
end

vim.api.nvim_create_user_command("SmartBufferClose", "lua _G.smart_buffer_close()", {})
vim.api.nvim_create_user_command("CloseOtherBuffers", "lua _G.close_other_buffers()", {})
vim.api.nvim_create_user_command("CloseAllBuffers", "lua _G.close_all_buffers()", {})

-- When neo-tree is closed, close any trouble window too
vim.api.nvim_create_autocmd("WinClosed", {
	callback = function(args)
		local closed_win = tonumber(args.match)
		if not closed_win then
			return
		end
		local closed_buf = vim.api.nvim_win_get_buf(closed_win)
		if vim.bo[closed_buf].filetype ~= "neo-tree" then
			return
		end
		for _, win in ipairs(vim.api.nvim_list_wins()) do
			local buf = vim.api.nvim_win_get_buf(win)
			if vim.bo[buf].filetype == "trouble" then
				pcall(vim.api.nvim_win_close, win, true)
			end
		end
	end,
})
-- Icons for diagnostic severity levels
local diag_icons = {
	[vim.diagnostic.severity.ERROR] = "",
	[vim.diagnostic.severity.WARN] = "",
	[vim.diagnostic.severity.INFO] = "",
	[vim.diagnostic.severity.HINT] = "󰌶",
}

-- Find the editor window (not tree, not diaglist)
local function find_editor_win()
	for _, win in ipairs(vim.api.nvim_list_wins()) do
		local ft = vim.bo[vim.api.nvim_win_get_buf(win)].filetype
		if ft ~= "neo-tree" and ft ~= "diaglist" then
			return win
		end
	end
	return nil
end

function _G.find_diag_win()
	for _, win in ipairs(vim.api.nvim_list_wins()) do
		if vim.bo[vim.api.nvim_win_get_buf(win)].filetype == "diaglist" then
			return win
		end
	end
	return nil
end

local function find_tree_win()
	for _, win in ipairs(vim.api.nvim_list_wins()) do
		if vim.bo[vim.api.nvim_win_get_buf(win)].filetype == "neo-tree" then
			return win
		end
	end
	return nil
end

-- Custom diagnostics panel below tree (view-only, no close/command features)
function _G.toggle_tree_diagnostics()
	local tree_win = find_tree_win()

	if not tree_win or not vim.api.nvim_win_is_valid(tree_win) then
		vim.cmd("Neotree show")
		vim.defer_fn(_G.toggle_tree_diagnostics, 100)
		return
	end

	local tree_pos = vim.api.nvim_win_get_position(tree_win)

	for _, win in ipairs(vim.api.nvim_list_wins()) do
		local pos = vim.api.nvim_win_get_position(win)
		local buf = vim.api.nvim_win_get_buf(win)
		if
			vim.bo[buf].filetype == "diaglist"
			and win ~= tree_win
			and pos[1] > tree_pos[1]
			and pos[2] == tree_pos[2]
		then
			vim.api.nvim_win_close(win, true)
			return
		end
	end

	local editor_buf = vim.api.nvim_get_current_buf()
	if vim.bo[editor_buf].filetype == "neo-tree" or vim.bo[editor_buf].filetype == "diaglist" then
		editor_buf = nil
	end
	local editor_win = find_editor_win() or vim.api.nvim_get_current_win()
	vim.api.nvim_set_current_win(tree_win)
	local tree_width = vim.api.nvim_win_get_width(tree_win)
	vim.cmd("belowright split")
	local diag_win = vim.api.nvim_get_current_win()
	vim.api.nvim_win_set_width(tree_win, tree_width)
	local diag_buf = vim.api.nvim_create_buf(true, false)
	vim.api.nvim_win_set_buf(diag_win, diag_buf)
	vim.bo[diag_buf].buftype = "nofile"
	vim.bo[diag_buf].filetype = "diaglist"
	vim.wo[diag_win].number = false
	vim.wo[diag_win].relativenumber = false
	vim.wo[diag_win].signcolumn = "no"
	vim.bo[diag_buf].modifiable = false
	if not editor_buf then
		for _, win in ipairs(vim.api.nvim_list_wins()) do
			if win ~= tree_win and win ~= diag_win then
				local buf = vim.api.nvim_win_get_buf(win)
				local ft = vim.bo[buf].filetype
				if ft ~= "neo-tree" and ft ~= "diaglist" then
					editor_buf = buf
					break
				end
			end
		end
	end
	vim.b[diag_buf].diag_target = editor_buf or 0

	_G._fill_diag_list()

	-- Preview on hover: scroll to diagnostic location in editor window
	vim.api.nvim_create_autocmd("CursorMoved", {
		buffer = diag_buf,
		callback = function()
			local b = vim.api.nvim_get_current_buf()
			local line = vim.api.nvim_win_get_cursor(0)[1]
			local entries = vim.b[b].diag_entries
			local entry = entries and entries[line]
			if not entry then
				return
			end
			if not vim.api.nvim_buf_is_valid(entry.bufnr) then
				return
			end
			local ew = vim.b[b].editor_win
			if not ew or not vim.api.nvim_win_is_valid(ew) then
				ew = find_editor_win()
				vim.b[b].editor_win = ew
			end
			if not ew then
				return
			end

			local current_buf_in_editor = vim.api.nvim_win_get_buf(ew)
			if current_buf_in_editor == entry.bufnr then
				vim.api.nvim_win_set_cursor(ew, { entry.lnum, entry.col })
				vim.api.nvim_win_call(ew, function()
					vim.cmd("normal! zz")
				end)
			end
		end,
	})

	-- Enter: jump to diagnostic location
	vim.keymap.set("n", "<CR>", function()
		local b = vim.api.nvim_get_current_buf()
		local line = vim.api.nvim_win_get_cursor(0)[1]
		local entries = vim.b[b].diag_entries
		local entry = entries and entries[line]
		if not entry then
			return
		end

		local ew = vim.b[b].editor_win
		if not ew or not vim.api.nvim_win_is_valid(ew) then
			ew = find_editor_win()
		end
		if not ew then
			print("No editor window found")
			return
		end

		local ok, err = pcall(function()
			vim.api.nvim_set_current_win(ew)
			vim.api.nvim_win_set_buf(ew, entry.bufnr)
			vim.api.nvim_win_set_cursor(ew, { entry.lnum, entry.col })
			vim.cmd("normal! zz")
		end)
		if not ok then
			print("Failed to jump: " .. tostring(err))
		end
	end, { buffer = diag_buf, desc = "Jump to diagnostic location" })

	-- o / K: show full error message in floating popup
	vim.keymap.set("n", "o", function()
		_show_diag_float()
	end, { buffer = diag_buf, desc = "Show diagnostic in popup" })

	vim.keymap.set("n", "K", function()
		_show_diag_float()
	end, { buffer = diag_buf, desc = "Show diagnostic in popup" })

	vim.api.nvim_set_current_win(diag_win)
end

function _show_diag_float()
	local b = vim.api.nvim_get_current_buf()
	local line = vim.api.nvim_win_get_cursor(0)[1]
	local entries = vim.b[b].diag_entries
	local entry = entries and entries[line]
	if not entry or not vim.api.nvim_buf_is_valid(entry.bufnr) then
		return
	end

	local diagnostics = vim.diagnostic.get(entry.bufnr, {
		lnum = entry.lnum - 1,
	})
	if #diagnostics == 0 then
		return
	end

	local lines = {}
	for _, d in ipairs(diagnostics) do
		local icon = diag_icons[d.severity] or "?"
		local sev = vim.diagnostic.severity[d.severity] or "?"
		table.insert(lines, icon .. " " .. sev)
		for l in d.message:gmatch("[^\n]+") do
			table.insert(lines, "  " .. l)
		end
		if d.code then
			table.insert(lines, "  Code: " .. tostring(d.code))
		end
		if d.source then
			table.insert(lines, "  Source: " .. d.source)
		end
		table.insert(lines, "")
	end

	if vim.o.lines - vim.api.nvim_win_get_position(0)[1] < #lines + 4 then
		vim.lsp.util.open_floating_preview(lines, "markdown", {
			border = "rounded",
			max_height = 20,
			max_width = 72,
		})
	else
		vim.lsp.util.open_floating_preview(lines, "markdown", {
			border = "rounded",
			max_height = 20,
			max_width = 72,
		})
	end
end

function _G._fill_diag_list()
	for _, win in ipairs(vim.api.nvim_list_wins()) do
		local buf = vim.api.nvim_win_get_buf(win)
		if vim.bo[buf].filetype == "diaglist" then
			local target = vim.b[buf].diag_target
			if not target or target == 0 or not vim.api.nvim_buf_is_valid(target) then
				target = vim.api.nvim_get_current_buf()
			end

			for _, client in ipairs(vim.lsp.get_clients({ bufnr = target })) do
				if client:supports_method("textDocument/diagnostic") then
					vim.lsp.buf_request(target, "textDocument/diagnostic", {
						textDocument = vim.lsp.util.make_text_document_params(target),
					}, function() end)
					break
				end
			end

			local all = vim.diagnostic.get(target)
			local lines = {}
			vim.b[buf].diag_entries = {}
			if #all == 0 then
				table.insert(lines, "  No diagnostics")
			else
				table.sort(all, function(a, b)
					if a.severity ~= b.severity then
						return (a.severity or 99) < (b.severity or 99)
					end
					if a.lnum ~= b.lnum then
						return a.lnum < b.lnum
					end
					return (a.col or 0) < (b.col or 0)
				end)
				for _, d in ipairs(all) do
					local icon = diag_icons[d.severity] or "?"
					local name = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(d.bufnr), ":~:.")
					local msg = d.message:gsub("\n", " ")
					table.insert(lines, string.format("%s %s:%d:%d %s", icon, name, d.lnum + 1, d.col, msg))
					table.insert(vim.b[buf].diag_entries, {
						bufnr = d.bufnr,
						lnum = d.lnum + 1,
						col = d.col,
						msg = msg,
						severity = d.severity,
					})
				end
			end
			local ew = find_editor_win()
			if ew then
				vim.b[buf].editor_win = ew
			end
			vim.bo[buf].modifiable = true
			pcall(function()
				vim.api.nvim_buf_set_lines(buf, 0, -1, false, lines)
				vim.bo[buf].modified = false
			end)
			vim.bo[buf].modifiable = false
		end
	end
end

-- Auto-refresh the diagnostics panel
vim.api.nvim_create_autocmd("DiagnosticChanged", {
	callback = function()
		for _, win in ipairs(vim.api.nvim_list_wins()) do
			if vim.bo[vim.api.nvim_win_get_buf(win)].filetype == "diaglist" then
				_G._fill_diag_list()
				break
			end
		end
	end,
})

vim.api.nvim_create_autocmd("BufEnter", {
	callback = function()
		local cur_buf = vim.api.nvim_get_current_buf()
		if vim.bo[cur_buf].filetype == "diaglist" then
			return
		end
		for _, win in ipairs(vim.api.nvim_list_wins()) do
			local buf = vim.api.nvim_win_get_buf(win)
			if vim.bo[buf].filetype == "diaglist" then
				vim.b[buf].diag_target = cur_buf
				_G._fill_diag_list()
			end
		end
	end,
})

-- Resize mode functions
_G.resize_mode = {}

function _G.resize_mode.enter()
	vim.api.nvim_echo({ { "Resize mode: j/k/h/l to resize, <Esc> to exit", "ModeMsg" } }, false, {})
	local resize_mappings = {
		{ "j", ":resize +2<CR>", "Increase height" },
		{ "k", ":resize -2<CR>", "Decrease height" },
		{ "h", ":vertical resize -2<CR>", "Decrease width" },
		{ "l", ":vertical resize +2<CR>", "Increase width" },
		{ "<Esc>", "<cmd>lua _G.resize_mode.exit()<CR>", "Exit resize mode" },
	}
	for _, mapping_info in ipairs(resize_mappings) do
		vim.keymap.set(
			"n",
			mapping_info[1],
			mapping_info[2],
			{ noremap = true, silent = true, buffer = 0, desc = mapping_info[3] }
		)
	end
end

function _G.resize_mode.exit()
	local keys = { "j", "k", "h", "l", "<Esc>" }
	for _, key in ipairs(keys) do
		pcall(vim.api.nvim_buf_del_keymap, 0, "n", key)
	end
	vim.api.nvim_echo({}, false, {})
	-- vim.cmd("redraw") -- Might be needed
end

-- Configure which-key
wk.setup({
	-- window = {
	--   border = "single",
	-- },
	-- layout = {
	--   align = "center",
	-- },
})

-- Define key mappings with which-key
wk.add({
	{
		"<leader>?",
		function()
			require("which-key").show({ global = false })
		end,
		desc = "Buffer Local Keymaps",
		mode = "n",
	},
	{ "<leader>e", group = "Explorer" },
	{ "<leader>e", ":Neotree toggle<CR>", desc = "Toggle file explorer", mode = "n" },
	{ "<C-s>", ":w<CR>", desc = "Save buffer", mode = { "n", "i", "v" } },
	{ "<leader>q", ":q!<CR>", desc = "Quit without saving", mode = "n" },
	{ "<leader>wq", ":wq<CR>", desc = "Save and quit", mode = "n" },
	{ "<leader>b", group = "Buffer" },
	{ "<leader>bn", ":BufferLineCycleNext<CR>", desc = "Next buffer", mode = "n" },
	{ "<leader>bP", ":BufferLineCyclePrev<CR>", desc = "Previous buffer", mode = "n" },
	{ "<leader>bb", "<C-^>", desc = "Toggle to last buffer", mode = "n" },
	{ "<leader>bf", ":Telescope buffers<CR>", desc = "Find buffers", mode = "n" },
	{
		"<leader>bc",
		function()
			_G.smart_buffer_close()
		end,
		desc = "Smart close buffer (auto-switch)",
		mode = "n",
	},
	{
		"<leader>bC",
		function()
			_G.close_other_buffers()
		end,
		desc = "Close other buffers",
		mode = "n",
	},
	{
		"<leader>ba",
		function()
			_G.close_all_buffers()
		end,
		desc = "Close all buffers",
		mode = "n",
	},
	{
		"<leader>bw",
		function()
			require("mini.bufremove").wipeout(0, true)
		end,
		desc = "Force delete buffer",
		mode = "n",
	},
	{ "<leader>bp", ":BufferLineTogglePin<CR>", desc = "Pin/unpin buffer", mode = "n" },
	{ "<leader>br", ":BufferLineCloseRight<CR>", desc = "Close buffers right", mode = "n" },
	{ "<leader>bl", ":BufferLineCloseLeft<CR>", desc = "Close buffers left", mode = "n" },
	{ "<leader>bh", ":BufferLineMovePrev<CR>", desc = "Move buffer left", mode = "n" },
	{ "<leader>bj", ":BufferLineMoveNext<CR>", desc = "Move buffer right", mode = "n" },
	{ "<leader>b1", ":BufferLineGoToBuffer 1<CR>", desc = "Go to buffer 1", mode = "n" },
	{ "<leader>b2", ":BufferLineGoToBuffer 2<CR>", desc = "Go to buffer 2", mode = "n" },
	{ "<leader>b3", ":BufferLineGoToBuffer 3<CR>", desc = "Go to buffer 3", mode = "n" },
	{ "<leader>b4", ":BufferLineGoToBuffer 4<CR>", desc = "Go to buffer 4", mode = "n" },
	{ "<leader>b5", ":BufferLineGoToBuffer 5<CR>", desc = "Go to buffer 5", mode = "n" },
	{ "<leader>b6", ":BufferLineGoToBuffer 6<CR>", desc = "Go to buffer 6", mode = "n" },
	{ "<leader>b7", ":BufferLineGoToBuffer 7<CR>", desc = "Go to buffer 7", mode = "n" },
	{ "<leader>b8", ":BufferLineGoToBuffer 8<CR>", desc = "Go to buffer 8", mode = "n" },
	{ "<leader>b9", ":BufferLineGoToBuffer 9<CR>", desc = "Go to buffer 9", mode = "n" },
	{ "<leader>d", group = "Diagnostics" },
	{ "<leader>dn", "<cmd>Trouble diagnostics next jump=true<CR>", desc = "Next diagnostic", mode = "n" },
	{ "<leader>dp", "<cmd>Trouble diagnostics prev jump=true<CR>", desc = "Previous diagnostic", mode = "n" },
	{
		"<leader>dd",
		function()
			_G.toggle_tree_diagnostics()
		end,
		desc = "Diagnostics below tree (current buffer)",
		mode = "n",
	},
	{
		"<leader>dx",
		"<cmd>Trouble diagnostics toggle filter.buf=0<CR>",
		desc = "Buffer diagnostics (Trouble)",
		mode = "n",
	},
	{
		"<leader>dl",
		"<cmd>Trouble lsp toggle focus=false win.position=right<CR>",
		desc = "LSP references (Trouble)",
		mode = "n",
	},
	{
		"<leader>dj",
		function()
			local diag_win = _G.find_diag_win()
			if diag_win then vim.api.nvim_set_current_win(diag_win) end
		end,
		desc = "Jump to diagnostic list",
		mode = "n",
	},
	{
		"<leader>de",
		function()
			local ew = find_editor_win()
			if ew then vim.api.nvim_set_current_win(ew) end
		end,
		desc = "Jump to editor buffer",
		mode = "n",
	},
	{ "<leader>dq", "<cmd>Trouble qflist toggle<CR>", desc = "Quickfix list (Trouble)", mode = "n" },
	{ "<leader>f", group = "Find" },
	{ "<leader>ff", ":Telescope find_files<CR>", desc = "Find files", mode = "n" },
	{ "<leader>fg", ":Telescope live_grep<CR>", desc = "Live grep", mode = "n" },
	{ "<leader>fb", ":Telescope buffers<CR>", desc = "Find buffers", mode = "n" },
	{ "<leader>fh", ":Telescope help_tags<CR>", desc = "Help tags", mode = "n" },
	{ "<leader>fs", ":Telescope treesitter<CR>", desc = "Search symbols (Treesitter)", mode = "n" },
	{
		"<leader>fe",
		":Telescope file_browser path=%:p:h select_buffer=true<CR>",
		desc = "File explorer (in dir of current file)",
		mode = "n",
	},
	{ "<leader>fd", ":Telescope lsp_definitions<CR>", desc = "LSP definitions (Telescope)", mode = "n" },
	{ "<leader>fr", ":Telescope lsp_references<CR>", desc = "LSP references (Telescope)", mode = "n" },
	{ "<leader>fl", ":Telescope current_buffer_fuzzy_find<CR>", desc = "Fuzzy find in buffer", mode = "n" },
	{ "<leader>fo", ":Telescope oldfiles<CR>", desc = "Recent files", mode = "n" },
	{ "<leader>fw", ":Telescope grep_string<CR>", desc = "Find word under cursor (project)", mode = "n" },
	{ "<leader>fp", ":Telescope project<CR>", desc = "Switch project", mode = "n" },
	{ "gf", ":Telescope git_files<CR>", desc = "Git files", mode = "n" },
	{ "<leader>g", group = "Git" },
	{ "<leader>gs", ":Git<CR>", desc = "Git status (Fugitive)", mode = "n" },
	{ "<leader>gg", "<cmd>LazyGit<CR>", desc = "LazyGit", mode = "n" },
	{
		"<leader>gc",
		function()
			vim.fn.system({ "git", "add", "-A" })
			vim.cmd("LazyGit")
		end,
		desc = "Stage all + LazyGit (press c to commit)",
		mode = "n",
	},
	{ "<leader>gb", ":Telescope git_branches<CR>", desc = "Switch branches", mode = "n" },
	{ "<leader>gd", ":Gitsigns diffthis HEAD<CR>", desc = "Show diff for current file (vs HEAD)", mode = "n" },
	{
		"<leader>gh",
		function()
			require("gitsigns").stage_hunk()
		end,
		desc = "Stage hunk",
		mode = "n",
	},
	{
		"<leader>gu",
		function()
			require("gitsigns").undo_stage_hunk()
		end,
		desc = "Unstage hunk",
		mode = "n",
	},
	{
		"<leader>gm",
		function()
			require("gitsigns").blame_line({ full = true })
		end,
		desc = "Git blame line",
		mode = "n",
	},
	{ "<leader>t", group = "Tab/Window" },
	{ "<leader>tn", ":tabnew<CR>", desc = "New tab", mode = "n" },
	{ "<leader>tc", ":tabclose<CR>", desc = "Close tab", mode = "n" },
	{ "<leader>to", ":tabonly<CR>", desc = "Close other tabs", mode = "n" },
	{ "<leader>tf", ":tabnext<CR>", desc = "Next tab", mode = "n" },
	{ "<leader>tp", ":tabprevious<CR>", desc = "Previous tab", mode = "n" },
	{ "<leader>ts", ":split<CR>", desc = "Horizontal split", mode = "n" },
	{ "<leader>tv", ":vsplit<CR>", desc = "Vertical split", mode = "n" },
	{ "<leader>t1", ":tabnext 1<CR>", desc = "Go to tab 1", mode = "n" },
	{ "<leader>t2", ":tabnext 2<CR>", desc = "Go to tab 2", mode = "n" },
	{ "<leader>t3", ":tabnext 3<CR>", desc = "Go to tab 3", mode = "n" },
	{ "<leader>t4", ":tabnext 4<CR>", desc = "Go to tab 4", mode = "n" },
	{ "<leader>t5", ":tabnext 5<CR>", desc = "Go to tab 5", mode = "n" },
	{ "<leader>w", group = "Window" },
	{
		"<leader>w",
		function()
			_G.resize_mode.enter()
		end,
		desc = "Enter resize mode (j/k/h/l)",
		mode = "n",
	},
	{ "<leader>wH", ":vertical resize -5<CR>", desc = "Decrease window width", mode = "n" },
	{ "<leader>wh", ":resize +5<CR>", desc = "Increase window height", mode = "n" },
	{ "<leader>wj", ":resize +5<CR>", desc = "Increase window height (+)", mode = "n" },
	{ "<leader>wk", ":resize -5<CR>", desc = "Decrease window height", mode = "n" },
	{ "<leader>wl", ":vertical resize +5<CR>", desc = "Increase window width", mode = "n" },
	{ "<leader>s", group = "Search/Replace" },
	{
		"<leader>sr",
		[[:%s/\<<C-r><C-w>\>//gc<Left><Left><Left>]],
		desc = "Search/replace word under cursor (confirm)",
		mode = "n",
	},
	{ "*", "*N", desc = "Search word (next, stay)", mode = "n" },
	{ "#", "#N", desc = "Search word (prev, stay)", mode = "n" },
	{ "*", [[y/<C-R>"<CR>]], desc = "Search for selected text", mode = "v" },
	{ "<leader>h", group = "Help" },
	{
		"<leader>hh",
		function()
			require("config.learner").open_tutorial()
		end,
		desc = "Neovim Learner (search tips)",
		mode = "n",
	},
	{
		"<leader>hs",
		function()
			require("config.learner").search_topics()
		end,
		desc = "Search learner topics",
		mode = "n",
	},
	{ "<leader>hk", ":Telescope keymaps<CR>", desc = "Search keymaps", mode = "n" },
	{ "<leader>hn", ":nohlsearch<CR>", desc = "Clear highlights", mode = "n" },
	{ "<leader>r", group = "Run" },
	{
		"<leader>rr",
		function()
			local file = vim.fn.expand("%")
			local cmd = file:match("%.go$") and "go run " .. vim.fn.shellescape(file) or file
			vim.cmd("10new")
			vim.fn.termopen(cmd)
			vim.cmd("startinsert")
		end,
		desc = "Run current file in split",
		mode = "n",
	},
	{ "<leader>c", group = "Code" },
	{
		"<leader>cc",
		function()
			require("Comment.api").toggle.linewise.current()
		end,
		desc = "Toggle line comment",
		mode = "n",
	},
	{
		"<leader>cc",
		function()
			require("Comment.api").toggle.linewise(vim.fn.visualmode())
		end,
		desc = "Toggle line comment",
		mode = "v",
	},
	{
		"<leader>cb",
		function()
			require("Comment.api").toggle.blockwise.current()
		end,
		desc = "Toggle block comment",
		mode = "n",
	},
	{
		"<leader>cb",
		function()
			require("Comment.api").toggle.blockwise(vim.fn.visualmode())
		end,
		desc = "Toggle block comment",
		mode = "v",
	},
	{
		"<leader>th",
		':lua require("config.theme").pick_theme()<CR>',
		desc = "Pick theme",
		mode = "n",
	},
	{
		"<leader>tt",
		':lua require("config.theme").toggle_theme()<CR>',
		desc = "Toggle theme",
		mode = "n",
	},
	{ mode = { "n", "v" }, { "<C-h>", "<C-w>h", desc = "Move to left window" } },
	{ mode = { "n", "v" }, { "<C-j>", "<C-w>j", desc = "Move to window below" } },
	{ mode = { "n", "v" }, { "<C-k>", "<C-w>k", desc = "Move to window above" } },
	{ mode = { "n", "v" }, { "<C-l>", "<C-w>l", desc = "Move to right window" } },
	{ mode = "t", { "<C-h>", [[<C-\><C-n><C-w>h]], desc = "Move to left window" } },
	{ mode = "t", { "<C-j>", [[<C-\><C-n><C-w>j]], desc = "Move to window below" } },
	{ mode = "t", { "<C-k>", [[<C-\><C-n><C-w>k]], desc = "Move to window above" } },
	{ mode = "t", { "<C-l>", [[<C-\><C-n><C-w>l]], desc = "Move to right window" } },
	{ mode = "t", { "<Esc>", "<C-\\><C-n>", desc = "Escape to normal mode" } },
	{ "<leader>`", ":ToggleTerm<CR>", desc = "Toggle terminal", mode = "n" },

	{ mode = "i", { "<C-h>", "<Left>", desc = "Move left" } },
	{ mode = "i", { "<C-j>", "<Down>", desc = "Move down" } },
	{ mode = "i", { "<C-k>", "<Up>", desc = "Move up" } },
	{ mode = "i", { "<C-l>", "<Right>", desc = "Move right" } },
	{ mode = "c", { "<C-h>", "<Left>", desc = "Move left" } },
	{ mode = "c", { "<C-j>", "<Down>", desc = "Move down" } },
	{ mode = "c", { "<C-k>", "<Up>", desc = "Move up" } },
	{ mode = "c", { "<C-l>", "<Right>", desc = "Move right" } },
	{ "<C-z>", "u", desc = "Undo", mode = "n" },
	{ "<C-y>", "<C-r>", desc = "Redo", mode = "n" },
	{ "<C-a>", "ggVG", desc = "Select all", mode = { "n", "v" } },
	{ "<C-a>", "<C-o>ggVG", desc = "Select all", mode = "i" },
	{ mode = "v", { "<", "<gv", desc = "Decrease indent" } },
	{ mode = "v", { ">", ">gv", desc = "Increase indent" } },
	{ mode = "v", { "J", ":m '>+1<CR>gv=gv", desc = "Move line down" } },
	{ mode = "v", { "K", ":m '<-2<CR>gv=gv", desc = "Move line up" } },
	{ "<Tab>", ":BufferLineCycleNext<CR>", desc = "Next buffer in tab", mode = "n" },
	{ "<S-Tab>", ":BufferLineCyclePrev<CR>", desc = "Previous buffer in tab", mode = "n" },
	{ "<C-w>", "<cmd>lua _G.smart_buffer_close()<CR>", desc = "Close buffer (smart)", mode = "n" },

	{ "<leader>uc", "<cmd>lua require('treesitter-context').toggle()<CR>", desc = "Toggle treesitter context", mode = "n" },
})
-- Create the augroup *once*
local lsp_augroup = vim.api.nvim_create_augroup("UserLspConfig", { clear = true })

-- LSP mappings (defined dynamically on LspAttach)
vim.api.nvim_create_autocmd("LspAttach", {
	group = lsp_augroup,
	callback = function(ev)
		-- Prevent duplicate keymaps when multiple LSP clients attach to the same buffer
		if vim.b[ev.buf].lsp_mappings_set then return end
		vim.b[ev.buf].lsp_mappings_set = true

		wk.add({
			buffer = ev.buf, -- Make these mappings buffer-local
			mode = "n", -- Default mode for this set of mappings

			{ "<leader>l", group = "LSP" }, -- Group definition specific to this buffer's LSP
			{
				"gd",
				vim.lsp.buf.definition,
				desc = "Go to definition",
				noremap = true,
				silent = true,
			},
			{
				"gD",
				vim.lsp.buf.declaration,
				desc = "Go to declaration",
				noremap = true,
				silent = true,
			},
			{
				"gi",
				vim.lsp.buf.implementation,
				desc = "Go to implementation",
				noremap = true,
				silent = true,
			},
			{
				"gT",
				vim.lsp.buf.type_definition,
				desc = "Go to type definition",
				noremap = true,
				silent = true,
			},
			{
				"K",
				vim.lsp.buf.hover,
				desc = "Hover documentation",
				noremap = true,
				silent = true,
			},
			{
				"<leader>lr",
				vim.lsp.buf.rename,
				desc = "Rename symbol",
				noremap = true,
				silent = true,
			},
			{
				"<leader>la",
				vim.lsp.buf.code_action,
				desc = "Code action",
				noremap = true,
				silent = true,
			},
			{
				"<leader>lp",
				vim.lsp.buf.definition,
				desc = "Go to definition",
				noremap = true,
				silent = true,
			},
			{
				"<leader>lF",
				":Telescope lsp_references<CR>",
				desc = "LSP references (Telescope)",
				noremap = true,
				silent = true,
			},
			{
				"<leader>lf",
				function()
					vim.lsp.buf.format({ async = true })
				end,
				desc = "Format buffer",
				noremap = true,
				silent = true,
			},
			{ "<leader>ld", vim.diagnostic.open_float, desc = "Show line diagnostics", noremap = true, silent = true },
			{ "[d", vim.diagnostic.goto_prev, desc = "Previous diagnostic", noremap = true, silent = true },
			{ "]d", vim.diagnostic.goto_next, desc = "Next diagnostic", noremap = true, silent = true },
			-- { "<leader>lq", vim.diagnostic.setqflist, desc = "Diagnostics to quickfix", noremap = true, silent = true }, -- Your original diagnostic mapping
			{
				"<leader>lo",
				function()
					vim.lsp.buf.code_action({
						context = { only = { "source.organizeImports" } },
						apply = true,
					})
				end,
				desc = "Organize imports (remove unused + sort)",
				noremap = true,
				silent = true,
			},
			-- TypeScript: organize imports via native code action
			{
				"<leader>lmi",
				function()
					vim.lsp.buf.code_action({
						context = { only = { "source.addMissingImports.ts" } },
						apply = true,
					})
				end,
				desc = "Add missing imports",
				noremap = true,
				silent = true,
			},
			{
				"<leader>lru",
				function()
					vim.lsp.buf.code_action({
						context = { only = { "source.removeUnusedImports.ts" } },
						apply = true,
					})
				end,
				desc = "Remove unused imports",
				noremap = true,
				silent = true,
			},
			{
				"<leader>lfa",
				function()
					vim.lsp.buf.code_action({
						context = { only = { "source.fixAll.ts" } },
						apply = true,
					})
				end,
				desc = "Fix all",
				noremap = true,
				silent = true,
			},
			{
				"<leader>ls",
				vim.lsp.buf.signature_help,
				desc = "Signature help",
				noremap = true,
				silent = true,
			},
			{
				"<leader>lR",
				function()
					for _, client in ipairs(vim.lsp.get_clients()) do
						client:stop()
					end
					vim.defer_fn(function()
						vim.cmd("edit")
					end, 500)
				end,
				desc = "Restart LSP",
				noremap = true,
				silent = true,
			},
		})
	end,
})

-- Ensure Enter jumps to error in quickfix/location list
vim.api.nvim_create_autocmd("FileType", {
	pattern = "qf",
	callback = function(args)
		-- Default <CR> behavior in qf is to jump, this ensures our preferred options
		vim.keymap.set(
			"n",
			"<CR>",
			"<CR>",
			{ desc = "Jump to quickfix item", silent = true, buffer = args.buf, noremap = false }
		) -- noremap=false for <CR> in qf often desired
		vim.keymap.set(
			"n",
			"o",
			"<CR>",
			{ desc = "Jump to quickfix item (like Enter)", silent = true, buffer = args.buf, noremap = false }
		)
		vim.keymap.set(
			"n",
			"q",
			":cclose<CR>",
			{ desc = "Close quickfix", silent = true, buffer = args.buf, noremap = true }
		)
	end,
})
