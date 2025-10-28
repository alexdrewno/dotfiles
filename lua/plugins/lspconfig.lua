return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
      local nnoremap = require("alex.keymap").nnoremap

      -- Diagnostic keymaps
      nnoremap("<space>e", vim.diagnostic.open_float)
      nnoremap("[d", vim.diagnostic.goto_prev)
      nnoremap("]d", vim.diagnostic.goto_next)
      nnoremap("<space>q", vim.diagnostic.setloclist)

      -- Mason setup
      require("mason").setup()
      require("mason-lspconfig").setup()

      -- on_attach function
      local on_attach = function(client, bufnr)
        vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")
        local bufopts = { noremap = true, silent = true, buffer = bufnr }
        vim.keymap.set("n", "gD", vim.lsp.buf.declaration, bufopts)
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
        vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, bufopts)
        vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, bufopts)
        vim.keymap.set("n", "<space>wa", vim.lsp.buf.add_workspace_folder, bufopts)
        vim.keymap.set("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, bufopts)
        vim.keymap.set("n", "<space>wl", function()
          print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
        end, bufopts)
        vim.keymap.set("n", "<space>D", vim.lsp.buf.type_definition, bufopts)
        vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, bufopts)
        vim.keymap.set("n", "<space>ca", vim.lsp.buf.code_action, bufopts)
        vim.keymap.set("n", "gr", vim.lsp.buf.references, bufopts)
        vim.keymap.set("n", "<space>f", function()
          vim.lsp.buf.format { async = true }
        end, bufopts)
      end

      local lsp_flags = { debounce_text_changes = 150 }
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      -- Server configurations using new API
      vim.lsp.config.tsserver = {
        on_attach = on_attach,
        flags = lsp_flags,
        settings = { documentFormatting = true },
      }
      vim.lsp.enable("tsserver")

      vim.lsp.config.gopls = {
        on_attach = on_attach,
        flags = lsp_flags,
      }
      vim.lsp.enable("gopls")

      vim.lsp.config.html = {
        on_attach = on_attach,
        flags = lsp_flags,
      }
      vim.lsp.enable("html")

      vim.lsp.config.julials = {
        on_attach = on_attach,
        flags = lsp_flags,
      }
      vim.lsp.enable("julials")

      vim.lsp.config.pyright = {
        on_attach = on_attach,
        flags = lsp_flags,
      }
      vim.lsp.enable("pyright")

      vim.lsp.config.cssmodules_ls = {
        on_attach = on_attach,
        flags = lsp_flags,
        init_options = {
          camelCase = "dashes",
        },
      }
      vim.lsp.enable("cssmodules_ls")

      vim.lsp.config.cssls = {
        on_attach = on_attach,
        flags = lsp_flags,
        capabilities = capabilities,
      }
      vim.lsp.enable("cssls")
    end,
  },
}

