-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Markdown Preview keymaps
vim.keymap.set("n", "<leader>mp", ":MarkdownPreview<CR>", { desc = "Markdown Preview" })
vim.keymap.set("n", "<leader>ms", ":MarkdownPreviewStop<CR>", { desc = "Markdown Preview Stop" })
vim.keymap.set("n", "<leader>mt", ":MarkdownPreviewToggle<CR>", { desc = "Markdown Preview Toggle" })
