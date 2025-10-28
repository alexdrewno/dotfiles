return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope-file-browser.nvim",
    },
    config = function()
      local telescope = require("telescope")
      local builtin = require("telescope.builtin")

      telescope.setup({
        defaults = {
          file_ignore_patterns = { "node_modules" },
        },
      })

      telescope.load_extension("file_browser")

      local nnoremap = require("alex.keymap").nnoremap
      nnoremap("<leader>ff", builtin.find_files)
      nnoremap("<leader>fg", builtin.live_grep)
      nnoremap("<leader>fh", builtin.help_tags)
      nnoremap("<leader>fb", telescope.extensions.file_browser.file_browser)
    end,
  },
}
