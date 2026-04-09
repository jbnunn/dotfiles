return {
  {
    url = "https://codeberg.org/andyg/leap.nvim",
    name = "leap",
    dependencies = {
      "tpope/vim-repeat"
    },
    config = function()
      vim.keymap.set({ "n", "x", "o" }, "s", "<Plug>(leap-forward)", { silent = true, desc = "Leap forward" })
      vim.keymap.set({ "n", "x", "o" }, "S", "<Plug>(leap-backward)", { silent = true, desc = "Leap backward" })
      vim.keymap.set("n", "gs", "<Plug>(leap-from-window)", { silent = true, desc = "Leap from window" })
      vim.keymap.set({ "x", "o" }, "x", "<Plug>(leap-forward-till)", { silent = true, desc = "Leap forward till" })
      vim.keymap.set({ "x", "o" }, "X", "<Plug>(leap-backward-till)", { silent = true, desc = "Leap backward till" })
      -- Optional: customize the colors
      vim.api.nvim_set_hl(0, 'LeapBackdrop', { link = 'Comment' })
      vim.api.nvim_set_hl(0, 'LeapMatch', {
        fg = 'white',
        bold = true,
        nocombine = true,
      })
    end,
  },
}
