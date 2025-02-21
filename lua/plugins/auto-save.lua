return {
  "pocco81/auto-save.nvim",
  config = function()
    require("auto-save").setup({
      execution_message = { enabled = false }, -- Hide auto-save notifications
      silent = true, -- Ensure silent mode
      debounce_delay = 2000, -- set delay to 1 second
    })
  end,
}
