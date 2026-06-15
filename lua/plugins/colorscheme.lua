return {
  -- 1. Install the colorscheme
  {
    "vague2k/vague.nvim",
    lazy = false, -- Load it immediately
    priority = 1000, -- Load before other plugins
    config = function()
      require("vague").setup({
        -- Optional: Add your custom settings here
        transparent = false,
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "vague",
    },
  },
}
