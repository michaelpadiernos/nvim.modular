return {
  lazy = false,
  "mikedupree/nvim-notes",
  dependencies = {
    "nvim-telescope/telescope.nvim",
    -- {
    --   "nvim-neo-tree/neo-tree.nvim",
    --   branch = "v3.x",
    --   dependencies = {
    --     "nvim-lua/plenary.nvim",
    --     "nvim-tree/nvim-web-devicons",
    --     "MunifTanjim/nui.nvim",
    --   },
    -- },
  },
  config = function()
    require("nvim-notes").setup({
      -- Set your preferred notes directory
      notes_dir = "~/Library/Notebooks/", -- optional, default is ~/.nvim-notes
    })

    -- vim.keymap.set("n", "<leader>nn", "<cmd>NewNote<CR>", { desc = "[N]ew [N]ote" })
    -- vim.keymap.set("n", "<leader>ns", "<cmd>SearchNotes<CR>", { desc = "[N]otes [S]earch" })
    -- vim.keymap.set("n", "<leader>ne", "<cmd>ViewNotes<CR>", { desc = "[N]otes [E]xplorer" })
    -- vim.keymap.set("n", "<leader>nx", "<cmd>CloseNotes<CR>", { desc = "[N]otes E[x]it" })
  end,
}
