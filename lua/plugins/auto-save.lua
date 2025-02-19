return {
  "pocco81/auto-save.nvim",
  config = function()
    require("auto-save").setup({
      execution_message = { enabled = false }, -- Hide auto-save notifications
      silent = true, -- Ensure silent mode
    })
  end,
}
