return {
  { "nvim-tree/nvim-web-devicons", lazy = true},
  {
    "goolord/alpha-nvim",
    config = function ()
      require("plugins.configs.alpha")
    end
  },
  {
    "nvim-tree/nvim-tree.lua",
    keys = {
      { "<C-n>", "<cmd>NvimTreeToggle<CR>" },
      { "<leader>nf", "<cmd>NvimTreeFocus<CR>" },
      { "<leader>nf", "<cmd>NvimTreeFindFile<CR>" },
      { "<leader>nc", "<cmd>NvimTreeCollapse<CR>" },
    },
    config = function ()
      require("plugins.configs.nvim-tree")
    end
  },
  {
    "nvim-lualine/lualine.nvim",
    config = function()
      require("plugins.configs.lualine")
    end
  },
  {
    "akinsho/bufferline.nvim",
    version = "*",
    keys = {
      { "<leader>bp", "<cmd>BufferLineTogglePin<CR>", desc = "Toggle pin" },
      { "<leader>bP", "<cmd>BufferLineGroupClose ungrouped<CR>", desc = "Delete non-pinned buffers" },
    },
    opts = {
      options = {
        -- 使用 nvim 内置nvim_lsp
        diagnostics = "nvim_lsp",
        offsets = {
          {
            filetype = "neo-tree",
            text = "File Explorer",
            highlight = "Directory",
            text_align = "left",
          },
        },
      },
    },
  },
}
