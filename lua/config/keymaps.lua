-- Define the key mapping
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Map Shift+Cmd+F to Telescope's live_grep function
map("n", "<C-l>", "<cmd>lua require('telescope.builtin').live_grep()<CR>", opts)
map("n", "<C-s>", ":w<CR>", opts)
map("i", "<C-s>", "<Esc>:w<CR>a", opts)
