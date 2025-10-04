return {
  {
    "ggandor/leap.nvim",
    name = "leap",
    dependencies = {
      "tpope/vim-repeat"
    },
    config = function()
      require("leap").add_default_mappings()
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
