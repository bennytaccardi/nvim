-- Define the key mapping
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map("n", "<C-l>", "<cmd>lua require('telescope.builtin').live_grep()<CR>", { noremap = true, silent = true })
map("n", "<C-i>", "<cmd>lua require('telescope.builtin').find_files()<CR>", { noremap = true, silent = true })
map("n", "<C-s>", ":w<CR>", opts)
map("i", "<C-s>", "<Esc>:w<CR>a", opts)
