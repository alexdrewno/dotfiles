local nnoremap = require("alex.keymap").nnoremap

local builtin = require("telescope.builtin")
local telescope = require("telescope")

telescope.load_extension "file_browser"

nnoremap("<leader>ff", builtin.find_files)
nnoremap("<leader>fg", builtin.live_grep) 
nnoremap("<leader>fh", builtin.help_tags)

-- Telescope extensions
nnoremap("<leader>fb", telescope.extensions.file_browser.file_browser)
