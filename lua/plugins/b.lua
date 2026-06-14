return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
      servers = {
        eslint = {
          autostart = false,
          enabled = false,
        },
      },
    },
  },
}
