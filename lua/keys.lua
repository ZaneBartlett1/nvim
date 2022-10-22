--[[ keys.lua]]
local cmd = vim.api.nvim_create_user_command
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }


-- [[ Commands ]]
-- Save and quit all buffers
cmd('QQ', 'wa|qa!', {})
-- Used in Bashrc to start this with lexplore and term or can be run with :IDE
cmd('IDE', 'Lexplore|wincmd l|10split|term', {})


-- [[ Insert ]]
-- use <tab> for trigger completion and navigate to the next complete item
keymap("i", "<TAB>", "pumvisible() ? '<C-n>' : '<TAB>'", {noremap = true, silent = true, expr = true})


-- [[ Normal ]]
-- Better window resize
keymap("n", "<A-k>", ":resize -2<CR>", opts)
keymap("n", "<A-j>", ":resize +2<CR>", opts)
keymap("n", "<A-h>", ":vertical resize -2<CR>", opts)
keymap("n", "<A-l>", ":vertical resize +2<CR>", opts)
-- Better window nav
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
-- Better buffer nav
keymap("n", "<S-l>", ":bnext<CR>", opts) 
keymap("n", "<S-h>", ":bprevious<CR>", opts)


-- [[ Visual ]]
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)
-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
-- Better paste (keeps current register instead of replacing)
keymap("v", "p", '"_dP', opts)


-- [[ Visual Block ]]
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)


-- [[ Terminal ]]
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", opts)
