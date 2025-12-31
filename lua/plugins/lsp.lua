return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        eslint = {
          autostart = false,
          enabled = false,
        },
      },
    },
  },
}
