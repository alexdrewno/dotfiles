local monokai = require("monokai")
monokai.setup {}

vim.api.nvim_set_hl(0, 'LineNrAbove', { fg='white' })
vim.api.nvim_set_hl(0, 'LineNr', { fg='yellow' })
vim.api.nvim_set_hl(0, 'LineNrBelow', { fg='white' })

vim.api.nvim_set_hl(0, 'TabLineSel', { bg='gray'})
