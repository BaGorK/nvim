-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.wrap = true -- Enable soft wrapping
vim.opt.linebreak = true -- Prevent words from splitting in the middle
vim.opt.breakindent = true -- Indent wrapped lines
vim.opt.showbreak = "↳ " -- Show an indicator for wrapped lines

-- enable spell checker
vim.opt.spell = true
vim.opt.spelllang = "en"
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "typescript", "javascript", "typescriptreact", "javascriptreact" },
  callback = function()
    vim.opt.spell = true
    vim.opt.spelloptions = "noplainbuffer"
  end,
})

vim.opt.fixendofline = true -- Ensure newline at end of file
vim.opt.fixeol = true
