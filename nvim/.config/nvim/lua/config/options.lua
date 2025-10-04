-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua

-- Completely disable all forms of completion
vim.opt.complete = ""  -- disable built-in completion sources
vim.opt.completeopt = ""  -- disable completion options entirely
vim.opt.omnifunc = ""  -- disable omni completion
vim.opt.completefunc = ""  -- disable user-defined completion
vim.opt.dictionary = ""  -- disable dictionary completion
vim.opt.thesaurus = ""  -- disable thesaurus completion
vim.opt.infercase = false  -- disable case inference in completion
vim.opt.showmode = true  -- show mode (since completion menu won't show)

-- Disable insert mode completion entirely
vim.opt.paste = false  -- ensure paste mode doesn't interfere

vim.opt.relativenumber = true
