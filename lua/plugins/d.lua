return {
  {
    "GustavEikaas/easy-dotnet.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "folke/snacks.nvim" },
    config = function()
      require("easy-dotnet").setup({})
      vim.keymap.set("n", "<leader>do", ":Dotnet<CR>", { desc = "Open Dotnet Menu" })
      vim.keymap.set("n", "<leader>dn", ":Dotnet add package<CR>", { desc = "NuGet Package Menu" })
      vim.keymap.set("n", "<leader>dr", ":Dotnet run<CR>", { desc = "Run/Debug Menu" })
    end,
  },
}
