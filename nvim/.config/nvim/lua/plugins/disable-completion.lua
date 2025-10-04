return {
  -- Disable blink.cmp (new LazyVim completion engine)
  { "saghen/blink.cmp", enabled = false },
  
  -- Disable nvim-cmp and all related completion plugins
  { "hrsh7th/nvim-cmp", enabled = false },
  { "hrsh7th/cmp-nvim-lsp", enabled = false },
  { "hrsh7th/cmp-buffer", enabled = false },
  { "hrsh7th/cmp-path", enabled = false },
  { "hrsh7th/cmp-cmdline", enabled = false },
  { "saadparwaiz1/cmp_luasnip", enabled = false },
  { "L3MON4D3/LuaSnip", enabled = false },
  { "rafamadriz/friendly-snippets", enabled = false },

  -- Disable LSP plugins that might trigger completion
  { "neovim/nvim-lspconfig", enabled = false },
  { "williamboman/mason.nvim", enabled = false },
  { "williamboman/mason-lspconfig.nvim", enabled = false },

  -- Disable autopairs and other completion-like features
  { "windwp/nvim-autopairs", enabled = false },
  { "echasnovski/mini.pairs", enabled = false },
  { "echasnovski/mini.completion", enabled = false },
  
  -- Disable other potential completion sources
  { "github/copilot.vim", enabled = false },
  { "zbirenbaum/copilot.lua", enabled = false },
  { "zbirenbaum/copilot-cmp", enabled = false },
  { "Exafunction/codeium.vim", enabled = false },
  { "jcdickinson/codeium.nvim", enabled = false },
  
  -- Disable snippet engines
  { "dcampos/nvim-snippy", enabled = false },
  { "honza/vim-snippets", enabled = false },
  
  -- Disable word completion plugins
  { "hrsh7th/cmp-nvim-lsp-signature-help", enabled = false },
  { "hrsh7th/cmp-nvim-lua", enabled = false },
  { "f3fora/cmp-spell", enabled = false },
  { "hrsh7th/cmp-calc", enabled = false },
  { "hrsh7th/cmp-emoji", enabled = false },
}
