return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
      servers = {
        -- Disable eslint autostart
        eslint = {
          autostart = false,
          enabled = false,
        },
        -- Disable csharp_ls to only use Roslyn
        csharp_ls = {
          enabled = false,
        },
        -- Go language server settings
        gopls = {
          settings = {
            gopls = {
              hints = {
                assignVariableTypes = true,
                compositeLiteralFields = true,
                constantValues = true,
                functionTypeParameters = true,
                parameterNames = true,
                rangeVariableTypes = true,
              },
              analyses = {
                unusedparams = true,
              },
              staticcheck = true,
              completeUnimported = true,
            },
          },
        },
      },
    },
  },
}
