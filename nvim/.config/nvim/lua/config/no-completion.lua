-- Additional completion disabling configuration
-- This file ensures no completion popups appear

-- Disable all completion events
vim.api.nvim_create_autocmd({"InsertEnter", "InsertLeave", "TextChangedI", "TextChangedP"}, {
  callback = function()
    -- Clear any completion state
    if vim.fn.pumvisible() == 1 then
      vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<C-e>', true, false, true), 'n', false)
    end
  end,
})

-- Override any completion functions that might still be active
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    -- Ensure no completion functions are set
    vim.bo.omnifunc = ""
    vim.bo.completefunc = ""
    
    -- Disable any remaining completion options
    vim.opt_local.complete = ""
    vim.opt_local.completeopt = ""
  end,
})

-- Create a command to manually disable completion if it somehow gets re-enabled
vim.api.nvim_create_user_command('DisableCompletion', function()
  vim.opt.complete = ""
  vim.opt.completeopt = ""
  vim.bo.omnifunc = ""
  vim.bo.completefunc = ""
  print("Completion disabled")
end, {})
