vim.opt.relativenumber = true
vim.opt.number = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.shiftwidth = 4

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.scrolloff = 8

vim.opt.wrap = true

vim.opt.mouse = c

-- Autoformatting with registered lsp
-- vim.cmd [[autocmd BufWritePre *.rs lua vim.lsp.buf.format({ async = false })]]

