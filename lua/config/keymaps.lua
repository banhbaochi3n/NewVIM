-- local opts = { noremap = true, silent = true }
-- local term_opts = { silent = true }
-- local builtin = require('telescope.builtin')
--
-- -- Shorten function name
-- local keymap = vim.api.nvim_set_keymap

local function map(mode, keys, command)
    vim.api.nvim_set_keymap(mode, keys, command, { noremap = true, silent = true })
end

-- Remap space as leader key
map("", "<Space>", "<Nop>")
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Navigation stuff
map("n", "<TAB>", ":bnext<CR>")
map("n", "<S-TAB>", ":bprev<CR>")
map("n", "hs", ":split<CR>")
map("n", "vs", ":vs<CR>")

-- Press jk fast to exit insert mode 
map("i", "jk", "<ESC>")
map("i", "kj", "<ESC>")

-- Terminal
map("n", "<leader>v", ":vs +terminal | startinsert<CR>")
map("n", "<leader>h", ":split +terminal | startinsert<CR>")

-- Better paste
map("v", "p", '"_dP')

-- Move text up and down
map("x", "J", ":move '>+1<CR>gv-gv")
map("x", "K", ":move '<-2<CR>gv-gv")
map("x", "<A-j>", ":move '>+1<CR>gv-gv")
map("x", "<A-k>", ":move '<-2<CR>gv-gv")
map("n", "<A-j>", "<Esc>:m .+1<CR>==gi")
map("n", "<A-k>", "<Esc>:m .-2<CR>==gi")

-- Move between tabs
map("n", "<leader>1", "1gt")
map("n", "<leader>2", "2gt")
map("n", "<leader>3", "3gt")
map("n", "<leader>4", "4gt")
map("n", "<leader>5", "5gt")
map("n", "<leader>6", "6gt")
map("n", "<leader>7", "7gt")
map("n", "<leader>8", "8gt")
map("n", "<leader>9", "9gt")
map("n", "<leader>w", ":bd<CR>")
map("n", "<leader>n", ":tabnew<CR>")

-- Telescope keybinds
map('n', 'ff', ":Telescope find_files<CR>")
map('n', 'fg', ":Telescope live_grep<CR>")
map('n', 'fb', ":Telescope buffers<CR>")
map('n', 'fh', ":Telescope help_tags<CR>")
