return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "clangd",
          "jdtls",
          "pyright",
          "eslint",
          "emmet_ls",
          "html",
          "cssls",
          "tailwindcss",
          "tsserver",
          "jsonls",
          "sqlls",
          "dockerls",
          "docker_compose_language_service",
          "lua_ls",
          "bashls",
          "yamlls",
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      local opts = {}

      lspconfig.clangd.setup({})
      lspconfig.jdtls.setup({})
      lspconfig.pyright.setup({})
      lspconfig.eslint.setup({})
      lspconfig.emmet_ls.setup({})
      lspconfig.html.setup({})
      lspconfig.cssls.setup({})
      lspconfig.tailwindcss.setup({})
      lspconfig.tsserver.setup({})
      lspconfig.jsonls.setup({})
      lspconfig.sqlls.setup({})
      lspconfig.dockerls.setup({})
      lspconfig.docker_compose_language_service.setup({})
      lspconfig.lua_ls.setup({})
      lspconfig.bashls.setup({})
      lspconfig.yamlls.setup({})

      vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
      vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
      vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
    end,
  },
}
