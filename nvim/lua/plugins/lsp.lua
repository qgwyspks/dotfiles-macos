return {
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    cmd = "Mason",
    keys = { { "<leader>m", "<cmd>Mason<cr>", desc = "Mason" } },
    opts = {
    },
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "bashls", -- Bash
        "clangd",                          -- C/C++
        -- "csharo_ls",                       -- C#
        "dockerls",                        -- Docker
        "docker_compose_language_service", -- Docker Compose
        "gopls",    -- Go
        "lua_ls",   -- Lua
        "marksman", -- Markdown
        "pyright",  -- Python
        "texlab",   -- LaTeX
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require('lspconfig')
      lspconfig.bashls.setup{}
      lspconfig.clangd.setup{}
      lspconfig.dockerls.setup{}
      lspconfig.docker_compose_language_service.setup{}
      lspconfig.gopls.setup{}
      lspconfig.lua_ls.setup{}
      lspconfig.marksman.setup{}
      lspconfig.pyright.setup{}
    end
  },
  {
    "hrsh7th/nvim-cmp",
    version = false,
    event = "InsertEnter",
    dependencies = {
      "saadparwaiz1/cmp_luasnip",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "andersevenrud/cmp-tmux",
      "L3MON4D3/LuaSnip",
      "rafamadriz/friendly-snippets",
    },
    config = function()
      require("plugins.configs.cmp")
    end
  }
}
