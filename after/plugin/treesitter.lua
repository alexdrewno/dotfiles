local configs = require("nvim-treesitter.configs")

-- This config is from the github page https://github.com/nvim-treesitter/nvim-treesitter
configs.setup {
  -- A list of parser names, or "all"
  ensure_installed = "all",

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  highlight = { enable = true },
  index = { enable = true },
}

