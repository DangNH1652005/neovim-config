local terminal_win = nil

-- Split window
vim.keymap.set("n", "ss", "<cmd>split<CR>", { desc = "Split horizontal" })
vim.keymap.set("n", "sv", "<cmd>vsplit<CR>", { desc = "Split vertical" })

-- Move between windows
vim.keymap.set("n", "<C-h>", "<C-w>h", {
  desc = "Move left",
})

vim.keymap.set("n", "<C-j>", "<C-w>j", {
  desc = "Move down",
})

vim.keymap.set("n", "<C-k>", "<C-w>k", {
  desc = "Move up",
})

vim.keymap.set("n", "<C-l>", "<C-w>l", {
  desc = "Move right",
})

-- Close current split
-- vim.keymap.set("n", "sq", "<cmd>close<CR>", { desc = "Close split" })

-- Equalize split sizes
-- vim.keymap.set("n", "se", "<C-w>=", { desc = "Equalize splits" })


vim.keymap.set("n", "<leader>t", function()
  if terminal_win and vim.api.nvim_win_is_valid(terminal_win) then
    vim.api.nvim_win_close(terminal_win, true)
    terminal_win = nil
    return
  end

  vim.cmd("botright 12split")
  vim.cmd("terminal")

  terminal_win = vim.api.nvim_get_current_win()
  vim.cmd("startinsert")
end, { desc = "Toggle terminal" })
