local M = {}

local function load_topics()
  local ok, data = pcall(vim.json.decode, table.concat(vim.fn.readfile(vim.fn.stdpath("config") .. "/lua/config/learner.json"), "\n"))
  if ok and data then
    return data.topics
  end
  return {}
end

M.topics = load_topics()

local function group_by_category(topics)
  local groups = {}
  local order = {}
  for _, t in ipairs(topics) do
    local cat = t.category or "Other"
    if not groups[cat] then
      groups[cat] = {}
      table.insert(order, cat)
    end
    table.insert(groups[cat], t)
  end
  return groups, order
end

local function build_filtered(topics, filter)
  if not filter or filter == "" then
    local groups, order = group_by_category(topics)
    local idx = {}
    for _, cat in ipairs(order) do
      table.insert(idx, { type = "header", text = cat })
      for _, t in ipairs(groups[cat]) do
        table.insert(idx, { type = "topic", data = t })
      end
    end
    return idx
  end
  local fl = filter:lower()
  local idx = {}
  for _, t in ipairs(topics) do
    local search_text = (t.title .. " " .. t.desc .. " " .. table.concat(t.tags or {}, " ")):lower()
    if search_text:find(fl, 1, true) then
      table.insert(idx, { type = "topic", data = t })
    end
  end
  return idx
end

local function idx_to_lineno(idx, pos)
  local line = 1
  for i = 1, math.min(pos - 1, #idx) do
    if idx[i].type == "header" then
      line = line + 2
    else
      line = line + 1
    end
  end
  return line
end

local function render_detail(topic, buf)
  local lines = {
    "",
    "  " .. topic.title,
    "",
    "  " .. string.rep("─", 60),
    "",
  }
  for line in topic.desc:gmatch("[^\n]+") do
    table.insert(lines, "  " .. line)
  end
  table.insert(lines, "")
  table.insert(lines, "  " .. string.rep("─", 60))
  table.insert(lines, "")
  table.insert(lines, "  Keys:")
  for line in topic.keys:gmatch("[^\n]+") do
    table.insert(lines, "    " .. line)
  end
  table.insert(lines, "")
  if topic.mode then
    table.insert(lines, "  Mode: " .. topic.mode)
    table.insert(lines, "")
  end
  table.insert(lines, "  Tags: " .. table.concat(topic.tags or {}, ", "))
  table.insert(lines, "")
  table.insert(lines, "  " .. string.rep("─", 60))
  table.insert(lines, "  q/ Esc  Close  |  j/k  Navigate  |  /  Search")

  vim.api.nvim_buf_set_option(buf, "modifiable", true)
  vim.api.nvim_buf_set_lines(buf, 0, -1, false, lines)
  vim.api.nvim_buf_set_option(buf, "modifiable", false)
end

local function render_list(idx, selected, buf, filter)
  local lines = {}
  for i, entry in ipairs(idx) do
    if entry.type == "header" then
      table.insert(lines, "  " .. entry.text)
      table.insert(lines, "  " .. string.rep("─", #entry.text + 1))
    else
      local marker = (i == selected) and "▸" or " "
      table.insert(lines, string.format("%s %s", marker, entry.data.title))
    end
  end

  vim.api.nvim_buf_set_option(buf, "modifiable", true)
  vim.api.nvim_buf_set_lines(buf, 0, -1, false, lines)
  vim.api.nvim_buf_set_option(buf, "modifiable", false)

  local winid = vim.fn.bufwinid(buf)
  local lineno = idx_to_lineno(idx, selected)
  if winid and winid > 0 and lineno > 0 and lineno <= #lines then
    vim.api.nvim_win_set_cursor(winid, { lineno, 0 })
  end
end

function M.open_tutorial(target_topic)
  if #M.topics == 0 then
    vim.notify("No learner topics found", vim.log.levels.ERROR)
    return
  end

  local filter = ""
  local idx = build_filtered(M.topics, filter)
  local selected = 1
  if target_topic then
    for i, e in ipairs(idx) do
      if e.type == "topic" and e.data.title == target_topic.title then
        selected = i
        break
      end
    end
  end
  if idx[selected].type ~= "topic" then
    for i, e in ipairs(idx) do
      if e.type == "topic" then
        selected = i
        break
      end
    end
  end

  local orig_tab = vim.api.nvim_get_current_tabpage()
  local orig_win = vim.api.nvim_get_current_win()

  local list_buf = vim.api.nvim_create_buf(false, true)
  local detail_buf = vim.api.nvim_create_buf(false, true)

  vim.cmd("tabnew")
  vim.cmd("30vsplit")
  local wins = vim.api.nvim_tabpage_list_wins(0)
  local left_win = wins[1]
  local right_win = wins[2]
  vim.api.nvim_win_set_buf(left_win, list_buf)
  vim.api.nvim_win_set_buf(right_win, detail_buf)

  vim.bo[list_buf].buftype = "nofile"
  vim.bo[list_buf].filetype = "learner-list"
  vim.wo[left_win].number = false
  vim.wo[left_win].relativenumber = false
  vim.wo[left_win].signcolumn = "no"
  vim.wo[left_win].cursorline = true
  vim.bo[list_buf].modified = false

  vim.bo[detail_buf].buftype = "nofile"
  vim.bo[detail_buf].filetype = "learner-detail"
  vim.wo[right_win].number = false
  vim.wo[right_win].relativenumber = false
  vim.wo[right_win].signcolumn = "no"
  vim.wo[right_win].wrap = true
  vim.wo[right_win].linebreak = true
  vim.bo[detail_buf].modified = false

  vim.api.nvim_buf_set_option(list_buf, "modifiable", false)
  vim.api.nvim_buf_set_option(detail_buf, "modifiable", false)

  local function refresh()
    idx = build_filtered(M.topics, filter)
    if #idx == 0 then
      vim.api.nvim_buf_set_option(list_buf, "modifiable", true)
      vim.api.nvim_buf_set_lines(list_buf, 0, -1, false, { "  No matching topics" })
      vim.api.nvim_buf_set_option(list_buf, "modifiable", false)
      vim.api.nvim_buf_set_option(detail_buf, "modifiable", true)
      vim.api.nvim_buf_set_lines(detail_buf, 0, -1, false, { "", "  No results" })
      vim.api.nvim_buf_set_option(detail_buf, "modifiable", false)
      return
    end
    if selected > #idx or idx[selected].type ~= "topic" then
      selected = 1
      for i, e in ipairs(idx) do
        if e.type == "topic" then
          selected = i
          break
        end
      end
    end
    render_list(idx, selected, list_buf, filter)
    if idx[selected] and idx[selected].type == "topic" then
      render_detail(idx[selected].data, detail_buf)
    end
  end

  vim.keymap.set("n", "j", function()
    for j = selected + 1, #idx do
      if idx[j].type == "topic" then
        selected = j
        break
      end
    end
    refresh()
  end, { buffer = list_buf, silent = true })

  vim.keymap.set("n", "k", function()
    for j = selected - 1, 1, -1 do
      if idx[j].type == "topic" then
        selected = j
        break
      end
    end
    refresh()
  end, { buffer = list_buf, silent = true })

  vim.keymap.set("n", "/", function()
    vim.api.nvim_echo({ { "Search: ", "Question" } }, false, {})
    local input = vim.fn.input("")
    vim.cmd("redraw")
    if input and input ~= "" then
      filter = input
      selected = 1
      refresh()
    end
  end, { buffer = list_buf, desc = "Filter topics" })

  vim.keymap.set("n", "n", function()
    if #idx == 0 then return end
    for j = selected + 1, #idx do
      if idx[j].type == "topic" then
        selected = j
        break
      end
    end
    refresh()
  end, { buffer = list_buf, silent = true, desc = "Next match" })

  vim.keymap.set("n", "N", function()
    if #idx == 0 then return end
    for j = selected - 1, 1, -1 do
      if idx[j].type == "topic" then
        selected = j
        break
      end
    end
    refresh()
  end, { buffer = list_buf, silent = true, desc = "Previous match" })

  vim.keymap.set("n", "<Esc>", function()
    if filter and filter ~= "" then
      filter = ""
      selected = 1
      refresh()
      return
    end
    vim.api.nvim_set_current_tabpage(orig_tab)
    vim.api.nvim_set_current_win(orig_win)
    vim.schedule(function()
      pcall(vim.api.nvim_buf_delete, list_buf, { force = true })
      pcall(vim.api.nvim_buf_delete, detail_buf, { force = true })
    end)
  end, { buffer = list_buf, silent = true })

  vim.keymap.set("n", "q", function()
    vim.api.nvim_set_current_tabpage(orig_tab)
    vim.api.nvim_set_current_win(orig_win)
    vim.schedule(function()
      pcall(vim.api.nvim_buf_delete, list_buf, { force = true })
      pcall(vim.api.nvim_buf_delete, detail_buf, { force = true })
    end)
  end, { buffer = list_buf, silent = true })

  vim.keymap.set("n", "q", function()
    vim.api.nvim_set_current_tabpage(orig_tab)
    vim.api.nvim_set_current_win(orig_win)
    vim.schedule(function()
      pcall(vim.api.nvim_buf_delete, list_buf, { force = true })
      pcall(vim.api.nvim_buf_delete, detail_buf, { force = true })
    end)
  end, { buffer = detail_buf, silent = true })

  vim.keymap.set("n", "<Esc>", function()
    if filter and filter ~= "" then
      filter = ""
      selected = 1
      vim.api.nvim_set_current_win(left_win)
      refresh()
      return
    end
    vim.api.nvim_set_current_tabpage(orig_tab)
    vim.api.nvim_set_current_win(orig_win)
    vim.schedule(function()
      pcall(vim.api.nvim_buf_delete, list_buf, { force = true })
      pcall(vim.api.nvim_buf_delete, detail_buf, { force = true })
    end)
  end, { buffer = detail_buf, silent = true })

  vim.api.nvim_set_current_win(left_win)

  refresh()
end

function M.search_topics()
  local actions = require("telescope.actions")
  local action_state = require("telescope.actions.state")
  local pickers = require("telescope.pickers")
  local finders = require("telescope.finders")
  local conf = require("telescope.config").values

  if #M.topics == 0 then
    vim.notify("No learner topics found", vim.log.levels.ERROR)
    return
  end

  pickers.new({}, {
    prompt_title = " Neovim Learner ",
    finder = finders.new_table({
      results = M.topics,
      entry_maker = function(entry)
        return {
          value = entry,
          display = string.format("  %s  %s", entry.category, entry.title),
          ordinal = entry.title .. " " .. entry.desc .. " " .. table.concat(entry.tags or {}, " "),
        }
      end,
    }),
    sorter = conf.generic_sorter(conf),
    attach_mappings = function(prompt_bufnr, _)
      actions.select_default:replace(function()
        local selection = action_state.get_selected_entry()
        if selection then
          actions.close(prompt_bufnr)
          vim.schedule(function()
            M.open_tutorial_at(selection.value)
          end)
        end
      end)
      return true
    end,
  }):find()
end

function M.open_tutorial_at(topic)
  M.open_tutorial(topic)
end

return M
