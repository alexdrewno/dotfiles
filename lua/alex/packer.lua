vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
  -- Packer can manage itself
  use("wbthomason/packer.nvim")

  -- Theme
  use("tanvirtin/monokai.nvim")

  -- File navigation
  use("nvim-lua/plenary.nvim")
  use("theprimeagen/harpoon")
  use({
    "nvim-telescope/telescope.nvim", tag = "0.1.0",
     requires = { {"nvim-lua/plenary.nvim"} }
  })
  use("nvim-telescope/telescope-file-browser.nvim")

  -- Treesitter
  use("nvim-treesitter/nvim-treesitter")

  -- LSP 
  use({
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  })

  -- Autocompletion / Auto import
  use({
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline",
    "hrsh7th/nvim-cmp"
  })

  -- Pretty code
  use("jose-elias-alvarez/null-ls.nvim")

end)
