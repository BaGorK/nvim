return {
  {
    "mistricky/codesnap.nvim",
    build = "make build_generator",
    event = "VeryLazy",

    keys = {
      { "<leader>cs", "<Esc><cmd>CodeSnap<cr>", mode = "x", desc = "Save selected code snapshot into clipboard" },
      { "<leader>cS", "<Esc><cmd>CodeSnapSave<cr>", mode = "x", desc = "Save selected code snapshot in ~/Pictures/" },
    },
    lazy = true,
    opts = {
      mac_window_bar = false,
      save_path = "~/Pictures/",
      has_breadcrumbs = true,
      show_workspace = true,
      bg_theme = "sea",
      watermark = "",
      code_font_family = "FiraCode Nerd Font",
      has_line_number = true,
    },
  },
}
