return {
  "crnvl96/lazydocker.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
  },
  opts = {
    popup_window = {
      enter = true,
      focusable = true,
      zindex = 40,
      position = "50%",
      relative = "win",
      size = {
        width = "90%",
        height = "90%",
      },
      buf_options = {
        modifiable = true,
        readonly = false,
      },
      -- win_options = {
      --   winhighlight = "Normal:Normal,Normal:Normal",
      --   winblend = 0,
      -- },
      border = {
        highlight = "Normal",
        style = "solid",
        text = {
          -- top = " Lazydocker ",
          top = "",
        },
      },
    },
  }, -- automatically calls `require("lazydocker").setup()`
}
