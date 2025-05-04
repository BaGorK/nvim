return {
  "mgierada/lazydocker.nvim",
  dependencies = { "akinsho/toggleterm.nvim" },
  config = function()
    -- Ensure ~/.local/bin is in PATH for Neovim
    local lazypath = vim.fn.expand("~/.local/bin")
    if not string.find(vim.env.PATH, lazypath, 1, true) then
      vim.env.PATH = lazypath .. ":" .. vim.env.PATH
    end

    require("lazydocker").setup({
      border = "curved", -- valid options are "single" | "double" | "shadow" | "curved"
    })
  end,
  event = "BufRead",
  keys = {
    {
      "<leader>ld",
      function()
        -- Optional: check if `lazydocker` is available
        if vim.fn.executable("lazydocker") == 1 then
          require("lazydocker").open()
        else
          vim.notify("lazydocker not found in PATH", vim.log.levels.ERROR)
        end
      end,
      desc = "Open Lazydocker floating window",
    },
  },
}
