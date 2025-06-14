return {
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {
    lsp = {
      override = {
        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
        ["vim.lsp.util.stylize_markdown"] = true,
        ["cmp.entry.get_documentation"] = true,
      },
    },
    routes = {
      -- Remove search counter
      {
        filter = {
          event = "msg_show",
          any = {
            { find = "%d+L, %d+B" },
            { find = "; after #%d+" },
            { find = "; before #%d+" },
          },
          kind = "search_count",
        },
        view = "mini",
        opts = { skip = true },
      },
      -- Remove save file message
      {
        filter = { find = " written" },
        opts = { skip = true },
      },
      -- Remove undo/redo messages
      {
        filter = { find = " before #" },
        opts = { skip = true },
      },
      {
        filter = { find = " after #" },
        opts = { skip = true },
      },
      -- Remove paste messages
      {
        filter = { find = " more lines" },
        opts = { skip = true },
      },
      -- LSP hover messages
      {
        filter = { find = "No information available" },
        opts = { skip = true },
      },
    },
    presets = {
      bottom_search = true,
      command_palette = true,
      long_message_to_split = true,
    },
  },
  dependencies = {
    -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
    "MunifTanjim/nui.nvim",
    -- OPTIONAL:
    --   `nvim-notify` is only needed, if you want to use the notification view.
    --   If not available, we use `mini` as the fallback
    -- "rcarriga/nvim-notify",
  },
  config = function()
    require("noice").setup({
      lsp = {
        -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
          ['vim.lsp.handlers["textDocument/signatureHelp"]'] = true,
        },
      },
      views = {
        cmdline_popup = {
          position = {
            row = 8,
            col = "50%",
          },
          size = {
            width = 60,
            height = "auto",
          },
          border = {
            style = "none",
            padding = { 1, 3 },
          },
          filter_options = {},
          win_options = {
            winhighlight = { Normal = "TelescopeNormal", FloatBorder = "TelescopeNormal" },
          },
        },
        popupmenu = {
          relative = "editor",
          position = {
            row = 10,
            col = "50%",
          },
          size = {
            width = 60,
            height = "auto",
          },
          border = {
            style = "none",
            padding = { 1, 3 },
          },
          win_options = {
            winhighlight = { Normal = "TelescopeNormal", FloatBorder = "TelescopeNormal" },
          },
        },
      },
      -- you can enable a preset for easier configuration
      presets = {
        bottom_search = true, -- use a classic bottom cmdline for search
        command_palette = false, -- position the cmdline and popupmenu together
        long_message_to_split = true, -- long messages will be sent to a split
        inc_rename = false, -- enables an input dialog for inc-rename.nvim
        lsp_doc_border = false, -- add a border to hover docs and signature help
      },
    })
  end,
}
