local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.keymap.set

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

if vim.g.vscode then
    -- Resize with arrows
    keymap("n", "<C-Up>", ":resize -2<CR>", opts)
    keymap("n", "<C-Down>", ":resize +2<CR>", opts)
    keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
    keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

    -- Move text up and down
    keymap("n", "<C-j>", ":m .+1<CR>==", opts)
    keymap("n", "<C-k>", ":m .-2<CR>==", opts)

    -- Visual --
    -- Stay in indent mode
    keymap("v", "<", "<gv^", opts)
    keymap("v", ">", ">gv^", opts)

    -- Move text up and down
    keymap("v", "<C-j>", ":m '>+1<CR>gv=gv", opts)
    keymap("v", "<C-k>", ":m '<-2<CR>gv=gv", opts)
    keymap("v", "p", '"_dP', opts)

    -- Visual Block --
    -- Move text up and down
    keymap("x", "<C-j>", ":m '>+1<CR>gv=gv", opts)
    keymap("x", "<C-k>", ":m '<-2<CR>gv=gv", opts)
end