-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("config.no-completion")  -- Load additional completion disabling
vim.opt.clipboard = "unnamedplus"

-- Disable all completion-related keymaps and behaviors
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    -- Disable insert mode completion keymaps
    vim.keymap.set('i', '<C-n>', '<Nop>', {noremap = true, silent = true})
    vim.keymap.set('i', '<C-p>', '<Nop>', {noremap = true, silent = true})
    vim.keymap.set('i', '<C-x><C-n>', '<Nop>', {noremap = true, silent = true})
    vim.keymap.set('i', '<C-x><C-p>', '<Nop>', {noremap = true, silent = true})
    vim.keymap.set('i', '<C-x><C-l>', '<Nop>', {noremap = true, silent = true})
    vim.keymap.set('i', '<C-x><C-f>', '<Nop>', {noremap = true, silent = true})
    vim.keymap.set('i', '<C-x><C-k>', '<Nop>', {noremap = true, silent = true})
    vim.keymap.set('i', '<C-x><C-o>', '<Nop>', {noremap = true, silent = true})
    vim.keymap.set('i', '<C-x><C-u>', '<Nop>', {noremap = true, silent = true})
    vim.keymap.set('i', '<C-x><C-v>', '<Nop>', {noremap = true, silent = true})
    vim.keymap.set('i', '<C-x><C-]>', '<Nop>', {noremap = true, silent = true})
    vim.keymap.set('i', '<Tab>', '<Tab>', {noremap = true, silent = true})
    
    -- Normal and visual mode delete/change commands
    vim.keymap.set({'n', 'x'}, 'd', '"_d', {noremap = true, silent = true})
    vim.keymap.set({'n', 'x'}, 'D', '"_D', {noremap = true, silent = true})
    vim.keymap.set({'n', 'x'}, 'x', '"_x', {noremap = true, silent = true})
    vim.keymap.set({'n', 'x'}, 'X', '"_X', {noremap = true, silent = true})
    vim.keymap.set({'n', 'x'}, 'c', '"_c', {noremap = true, silent = true})
    vim.keymap.set({'n', 'x'}, 'C', '"_C', {noremap = true, silent = true})
  end,
})

-- Override the :delete command to use black hole register
vim.api.nvim_create_user_command('Delete', function(opts)
  vim.cmd(opts.range .. 'delete _')
end, {range = true})

-- Create abbreviation so :d becomes :Delete
vim.cmd('cnoreabbrev <expr> d (getcmdtype() == ":" && getcmdline() =~ "^d$") ? "Delete" : "d"')
