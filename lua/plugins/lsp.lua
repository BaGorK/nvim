return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      opts.inlay_hints = opts.inlay_hints or {} -- Ensure table exists
      opts.inlay_hints.enabled = false -- Disable inlay hints
    end,
  },
}
