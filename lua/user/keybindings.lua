-- Functional wrapper for mapping custom keybindings
local function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- keybindings for cutting
map("n", "m", "d", { silent = true })
map("x", "m", "d", { silent = true })
map("n", "M", "D", { silent = true })
map("n", "mm", "dd", { silent = true })


vim.g.mapleader = " "

vim.api.nvim_set_keymap('', '<leader>l', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>", {})
vim.api.nvim_set_keymap('', '<leader>L', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>", {})
vim.api.nvim_set_keymap('', '<leader>h', "<cmd>lua require'hop'.hint_words()<cr>", {})
