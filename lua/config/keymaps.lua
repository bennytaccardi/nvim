-- Define the key mapping
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map("n", "<C-p>", "<cmd>lua require('telescope.builtin').live_grep()<CR>", opts)
map("n", "<C-i>", "<cmd>lua require('telescope.builtin').find_files()<CR>", opts)
map("n", "<C-s>", ":w<CR>", opts)
map("i", "<C-s>", "<Esc>:w<CR>a", opts)
