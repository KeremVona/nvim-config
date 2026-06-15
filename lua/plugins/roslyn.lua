return {
  {
    "seblj/roslyn.nvim",
    ft = "cs",
    config = function()
      require("roslyn").setup({
        exe = "/home/vona50/.local/share/nvim/roslyn/content/LanguageServer/linux-x64/Microsoft.CodeAnalysis.LanguageServer",
        args = {
          "--logLevel=Information",
          "--extensionLogDirectory=" .. vim.fs.dirname(vim.lsp.log.get_filename()),
          "--stdio",
        },
        config = {
          on_attach = function(client, bufnr) end,
          settings = {
            ["csharp|background_analysis"] = {
              dotnet_analyzer_diagnostics_scope = "fullSolution",
              dotnet_compiler_diagnostics_scope = "fullSolution",
            },
          },
        },
        extensions = {
          razor = { enabled = false },
        },
      })
    end,
  },
}
