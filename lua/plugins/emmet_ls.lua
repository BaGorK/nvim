return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      emmet_ls = {
        capabilities = vim.lsp.protocol.make_client_capabilities(),
        filetypes = {
          "css",
          "eruby",
          "html",
          "javascript",
          "javascriptreact",
          "less",
          "sass",
          "scss",
          "svelte",
          "pug",
          "typescriptreact",
          "vue",
        },
        init_options = {
          html = {
            options = {
              ["bem.enabled"] = true,
            },
          },
        },
      },
    },
  },
}
