-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>cy", function()
  local diag = vim.diagnostic.get_pos()
  if #diag > 0 then
    vim.fn.setreg("+", diag[1].message)
    print("Diagnostic yanked to clipboard!")
  else
    print("No diagnostic found at cursor.")
  end
end, { desc = "Copy Diagnostic Message" })
