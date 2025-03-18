return {
  -- Ensure Treesitter is installed
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "html",
        "javascript",
        "typescript",
        "tsx",
        "vue",
        "svelte",
      },
      highlight = { enable = true },
    },
  },

  -- Add nvim-ts-autotag plugin
  {
    "windwp/nvim-ts-autotag",
    opts = {
      enable_close = true, -- Auto close tags
      enable_rename = true, -- Auto rename paired tags
      enable_close_on_slash = false, -- Auto close on trailing </
      per_filetype = {
        ["html"] = { enable_close = false },
      },
    },
  },

  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = {
        virtual_text = {
          spacing = 5,
          severity_limit = "Warning",
        },
        update_in_insert = true, -- Enable diagnostics updates in insert mode
      },
    },
  },
}
