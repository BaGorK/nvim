return {
  { "echasnovski/mini.pairs", enabled = true },
  {
    "hrsh7th/nvim-cmp",
    enabled = true,
    event = "InsertEnter",
    dependencies = {
      "windwp/nvim-autopairs",
      "windwp/nvim-ts-autotag", -- Add for automatic tag closing
    },
    config = function()
      local cmp = require("cmp")
      local cmp_autopairs = require("nvim-autopairs.completion.cmp")

      cmp.event:on("confirm_done", function(...)
        cmp_autopairs.on_confirm_done()(...)
      end)

      cmp.setup({
        mapping = {
          ["<Tab>"] = function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            else
              fallback()
            end
          end,
        },
      })
    end,
  },

  {
    "rafamadriz/friendly-snippets",
    enabled = false, -- Disable friendly-snippets
  },
}
