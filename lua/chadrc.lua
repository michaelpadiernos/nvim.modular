-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

require "user.colors"

M.lsp = { signature = false }

M.nvdash = {
  load_on_startup = true,
  header = {
    "                            ",
    "    █████████████████████   ",
    "                      ███   ",
    "    ███   ███   ███   ███   ",
    "    ███   ███   ███   ███   ",
    "    ███   ███   █████████   ",
    "    ███   ███   ███         ",
    "    ███   ███   ███         ",
    "                            ",
    "                            ",
    "                            ", },
  buttons = {
    { txt = "   Recent Projects", keys = "_ fp", cmd = "Telescope projects" },
    { txt = "   Recent Files", keys = "_ fo", cmd = "Telescope oldfiles" },
    { txt = "   Find File", keys = "_ ff", cmd = "Telescope find_files" },
    { txt = "   File Manager", keys = "_ fs", cmd = "SimplyFileOpen" },
    -- { txt = "󰈭  Find Word", keys = "fw", cmd = "Telescope live_grep" },
    -- { txt = "󱥚  Themes", keys = "th", cmd = ":lua require('nvchad.themes').open()" },
    { txt = "   Keyboard Shortcuts", keys = "_ ch", cmd = "NvCheatsheet" },

    { txt = " ", hl = "NvDashFooter", no_gap = true, rep = true },
    {
      txt = function()
        local stats = require("lazy").stats()
        local ms = math.floor(stats.startuptime) .. " ms"
        return "  Loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms
      end,
      hl = "NvDashFooter",
      no_gap = true,
    },
    { txt = " ", hl = "NvDashFooter", no_gap = true, rep = true },
  },
}

M.base46 = {
  theme = "gatekeeper",

  hl_override = {
    Normal = { bg = User_bg },
    NormalNC = { bg = User_bg },
    NvimTreeWinSeparator = { fg = User_bg, bg = User_bg },
    NvimTreeNormal = { bg = User_bg },
    NvimTreeNormalNC = { bg = User_bg },
    NvDashAscii = { fg = User_accent },
    TabLineSel = { bg = User_bg },
    StatusLine = { bg = User_bg },
    St_NormalMode = { bg = User_accent },
    St_NormalModeSep = { fg = User_accent, bg = User_accent },
    -- St_file = { bg = User__bg },
    -- St_file_sep = { bg = User__bg },
    -- St_cwd_sep = { bg = User__bg },
    -- St_pos_sep = { bg = User__bg },
    St_EmptySpace = { bg = User_bg },
    St_cwd_text = { fg = "#fe1a66", bg = "#1e030c" },
    St_gitIcons = { bg = User_bg },
    St_pos_text = { bg = "#001708" },
    St_Lsp = { bg = "#0d0f19" },
    St_LspMsg = { bg = User_bg },
    St_lspError = { bg = User_bg },
    St_lspWarning = { bg = User_bg },
    St_lspHints = { bg = User_bg },
    St_lspInfo = { bg = User_bg },
  },
  -- vim.api.nvim_set_hl(0, "TideBg", { bg = User_bg }),
  -- vim.api.nvim_set_hl(0, "TideHeader", { fg = User_accent, bold = true }),
  -- vim.api.nvim_set_hl(0, "TideSeparator", { fg = User_bg }),
}

M.ui = {
  tabufline = {
    lazy = false,
  },
  statusline = {
    separator_style = "block",
  },
}

return M
