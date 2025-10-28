-- ~/.config/nvim/lua/plugins.lua
return {
  -- Lazy itself
  { "folke/lazy.nvim" },

  -- Theme
  { "tanvirtin/monokai.nvim" },

  -- File navigation
  { "nvim-lua/plenary.nvim" },
  { "theprimeagen/harpoon" },
  { "nvim-telescope/telescope-file-browser.nvim" },

  -- Treesitter
  { "nvim-treesitter/nvim-treesitter" },

  -- LSP
  { "williamboman/mason.nvim" },
  { "williamboman/mason-lspconfig.nvim" },
  { "neovim/nvim-lspconfig" },

  -- Autocompletion
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/cmp-buffer" },
  { "hrsh7th/cmp-path" },
  { "hrsh7th/cmp-cmdline" },
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/vim-vsnip" },
  { "hrsh7th/vim-vsnip-integ" },
  { "windwp/nvim-ts-autotag" },

  -- Pretty code
  { "jose-elias-alvarez/null-ls.nvim" },

  -- GenAI
  { "github/copilot.vim" },
  { "CopilotC-Nvim/CopilotChat.nvim" },
}

