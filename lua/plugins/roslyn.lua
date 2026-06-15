return {
  {
    "seblyng/roslyn.nvim",
    ft = "cs",
    config = function()
      local has_blink, blink = pcall(require, "blink.cmp")
      local capabilities = has_blink and blink.get_lsp_capabilities() or nil

      vim.lsp.config("roslyn", {
        cmd = {
          "/home/vona50/.local/share/nvim/roslyn/content/LanguageServer/linux-x64/Microsoft.CodeAnalysis.LanguageServer",
          "--logLevel=Information",
          "--extensionLogDirectory=" .. vim.fs.dirname(vim.lsp.log.get_filename()),
          "--stdio",
        },
        capabilities = capabilities,
        settings = {
          ["csharp|background_analysis"] = {
            dotnet_analyzer_diagnostics_scope = "fullSolution",
            dotnet_compiler_diagnostics_scope = "fullSolution",
          },
          ["csharp|completion"] = {
            dotnet_show_completion_items_from_unimported_namespaces = true,
            dotnet_show_name_completion_suggestions = true,
          },
        },
      })

      require("roslyn").setup({
        extensions = {
          razor = { enabled = false },
        },
      })
    end,
  },
}
