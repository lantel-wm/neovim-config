-- define common options
local opts = {
    noremap = true,      -- non-recursive
    silent = true,       -- do not show message
}

-----------------
-- Normal mode --
-----------------

-- Hint: see `:h vim.map.set()`
-- Better window navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', opts)
vim.keymap.set('n', '<C-j>', '<C-w>j', opts)
vim.keymap.set('n', '<C-k>', '<C-w>k', opts)
vim.keymap.set('n', '<C-l>', '<C-w>l', opts)

-- Resize with arrows
-- delta: 2 lines
vim.keymap.set('n', '<C-Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<C-Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-----------------
-- Visual mode --
-----------------

-- Hint: start visual mode with the same area as the previous area and the same mode
vim.keymap.set('v', '<C-[>', '<gv', opts)
vim.keymap.set('v', '<C-]>', '>gv', opts)

-----------------
-- Plugin maps --
-----------------

-- nvim-tree
vim.keymap.set('n', '<C-b>', ':NvimTreeToggle<CR>', opts)
vim.keymap.set('n', '<C-m>', ':NvimTreeFocus<CR>', opts)

-- bufferline
vim.keymap.set('n', "<A-h>", ":BufferLineCyclePrev<CR>", opts)
vim.keymap.set('n', "<A-l>", ":BufferLineCycleNext<CR>", opts)
vim.keymap.set('n', "<C-w>", ":BufferLineCycleNext<CR>", opts)

-- toggleterm
vim.keymap.set('n', "<C-`>", ":ToggleTerm<CR>", opts)
