local opts = { noremap = true, silent = true }

local term_opts = { silet = true }

-- Shorten function name
local keymap = vim.keymap.set

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "


-- Modes
--  normal_mode         = "n",
--  insert_mode         = "i",
--  visual_mode         = "v",
--  visual_block_mode   = "x",
--  term_mode           = "t",
--  command_mode        = "c",


-- Normal ---
-- Better Window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize +2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize -2<CR>", opts)
-- Navigate Buffers
keymap("n", "<S-h>", ":bprevious<CR>", opts)
keymap("n", "<S-l>", ":bnext<CR>", opts)
-- Move Text up and down
keymap("n", "<A-J>", "<Esc>:m .+1<CR>", opts)
keymap("n", "<A-K>", "<Esc>:m .-2<CR>", opts)
--> Remove CTRL-Z - Windows
keymap('n', '<C-z>', '<nop>', opts)
-- NvimTree
keymap('n', '<leader>t', ':NvimTreeToggle<CR>', opts)
--> Telescope
keymap('n', '<leader>ff', ':Telescope find_files<CR>', opts) -- find file
keymap('n', '<leader>ft', ':Telescope live_grep<CR>', opts) -- find text
keymap('n', '<leader>fs', ':Telescope grep_string<CR>', opts) -- find string under cursor
keymap('n', '<leader>fp', ':Telescope projects<CR>', opts)
keymap('n', '<leader>fb', ':Telescope buffers<CR>', opts)
keymap("n", "Q", "<cmd>Bdelete!<CR>", opts) -- close buffer


-- Visual Block ---
-- Move Text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
-- keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
--[[ keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts) ]]


-- LSP
-- keymap("n", "<leader>lf", "<cmd>lua vim.lsp.buf.format({async = true})<cr>", opts)
keymap("n", "<leader>li", "<cmd>LspInfo<cr>", opts)
keymap("n", "<leader>lii", "<cmd>LspInstallInfo<cr>", opts)
-- keymap("n", "<leader>lr", "<cmd>lua vim.lsp.buf.rename()<cr>", opts)
-- keymap("n", "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<cr>", opts)
-- keymap("n", "<leader>ld", "<cmd>Telescope lsp workspace_diagnostics<cr>", opts)
-- keymap("n", "<leader>lj", "<cmd>lua vim.diagnostic.goto_next({buffer=0})<cr>", opts)
-- keymap("n", "<leader>lk", "<cmd>lua vim.diagnostic.goto_prev({buffer=0})<cr>", opts)

-- Comment
--[[ keymap('n', "<leader>/", "<cmd>lua require('Comment.api').toggle_current_linewise()<CR>", opts) ]]
--[[ keymap('x', "<leader>/", "<ESC><CMD>lua require('Comment.api').toggle_linewise_op(vim.fn.visual_mode())<CR>", opts) ]]
--
---- DAP---
keymap('n', '<leader>dk', "<cmd>lua require'dap'.continue()<CR>" , opts)
keymap('n', '<leader>db', "<cmd>lua require'dap'.toggle_breakpoint()<CR>" , opts)
