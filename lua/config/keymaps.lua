-- Define the key mapping
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Map Shift+Cmd+F to Telescope's live_grep function
map("n", "<D-F>", "<cmd>lua require('telescope.builtin').live_grep()<CR>", opts)
map("n", "<D-s>", ":w<CR>", opts)
map("i", "<D-s>", "<Esc>:w<CR>a", opts)
