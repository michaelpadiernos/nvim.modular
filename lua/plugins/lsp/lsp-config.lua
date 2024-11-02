return {
  "neovim/nvim-lspconfig",
  dependencies = {
    -- Automatically install LSPs and related tools to stdpath for Neovim
    {
      "williamboman/mason.nvim",
      opts = {
        ensure_installed = {
          "markdownlint",
          "prettierd",
          "phpactor",
          "phpcs",
          "phpcbf",
          "php-debug-adapter",
          "css-lsp",
          "css-variables-language-server",
          "cssmodules-language-server",
          "emmet-language-server",
          "eslint-lsp",
          "html-lsp",
          "htmlbeautifier",
          "json-lsp",
          "lua_ls",
          "stylelint-lsp",
          "twigcs",
        },
      },
      config = true,
    }, -- NOTE: Must be loaded before dependants
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",

    -- Useful status updates for LSP.
    -- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
    { "j-hui/fidget.nvim", opts = {} },

    -- Allows extra capabilities provided by nvim-cmp
    "hrsh7th/cmp-nvim-lsp",
  },
  config = function()
    require "core.lspconfig"
  end,
}
