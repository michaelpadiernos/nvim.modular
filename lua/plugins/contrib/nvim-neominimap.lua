---@module "neominimap.config.meta"
return {
  lazy = false, -- NOTE: NO NEED to Lazy load
  "Isrothy/neominimap.nvim",
  version = "v3.x.x",
  -- Optional
  keys = {
    -- Global Minimap Controls
    { "<leader>nm", "<cmd>Neominimap toggle<cr>", desc = "Toggle global minimap" },
    { "<leader>no", "<cmd>Neominimap on<cr>", desc = "Enable global minimap" },
    { "<leader>nc", "<cmd>Neominimap off<cr>", desc = "Disable global minimap" },
    { "<leader>nr", "<cmd>Neominimap refresh<cr>", desc = "Refresh global minimap" },

    -- Window-Specific Minimap Controls
    { "<leader>nwt", "<cmd>Neominimap winToggle<cr>", desc = "Toggle minimap for current window" },
    { "<leader>nwr", "<cmd>Neominimap winRefresh<cr>", desc = "Refresh minimap for current window" },
    { "<leader>nwo", "<cmd>Neominimap winOn<cr>", desc = "Enable minimap for current window" },
    { "<leader>nwc", "<cmd>Neominimap winOff<cr>", desc = "Disable minimap for current window" },

    -- Tab-Specific Minimap Controls
    { "<leader>ntt", "<cmd>Neominimap tabToggle<cr>", desc = "Toggle minimap for current tab" },
    { "<leader>ntr", "<cmd>Neominimap tabRefresh<cr>", desc = "Refresh minimap for current tab" },
    { "<leader>nto", "<cmd>Neominimap tabOn<cr>", desc = "Enable minimap for current tab" },
    { "<leader>ntc", "<cmd>Neominimap tabOff<cr>", desc = "Disable minimap for current tab" },

    -- Buffer-Specific Minimap Controls
    { "<leader>nbt", "<cmd>Neominimap bufToggle<cr>", desc = "Toggle minimap for current buffer" },
    { "<leader>nbr", "<cmd>Neominimap bufRefresh<cr>", desc = "Refresh minimap for current buffer" },
    { "<leader>nbo", "<cmd>Neominimap bufOn<cr>", desc = "Enable minimap for current buffer" },
    { "<leader>nbc", "<cmd>Neominimap bufOff<cr>", desc = "Disable minimap for current buffer" },

    ---Focus Controls
    { "<leader>nf", "<cmd>Neominimap focus<cr>", desc = "Focus on minimap" },
    { "<leader>nu", "<cmd>Neominimap unfocus<cr>", desc = "Unfocus minimap" },
    { "<leader>ns", "<cmd>Neominimap toggleFocus<cr>", desc = "Switch focus on minimap" },
  },
  init = function()
    -- The following options are recommended when layout == "float"
    vim.opt.wrap = false
    vim.opt.sidescrolloff = 36 -- Set a large value

    --- Put your configuration here
    ---@type Neominimap.UserConfig
    vim.g.neominimap = {
      auto_enable = true,
      sync_cursor = true,
      -- How many columns a dot should span
      x_multiplier = 1, ---@type integer
      -- How many rows a dot should span
      y_multiplier = 1, ---@type integer
      float = {
        window_border = "none",
        margin = {
          top = 1,
        },
      },
      -- Minimap will not be created for buffers of these types
      ---@type string[]
      exclude_filetypes = {
        "help",
        "markdown",
      },
      -- Minimap will not be created for buffers of these types
      ---@type string[]
      exclude_buftypes = {
        "nofile",
        "nowrite",
        "quickfix",
        "terminal",
        "prompt",
      },

      click = {
        -- Enable mouse click on the minimap
        enabled = true, ---@type boolean
        -- Automatically switch focus to the minimap when clicked
        auto_switch_focus = true, ---@type boolean
      },
    }
  end,
}
