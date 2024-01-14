return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    local opts = {}

    local formatters = null_ls.builtins.formatting
    local diagnostics = null_ls.builtins.diagnostics
    local code_actions = null_ls.builtins.code_actions

    null_ls.setup({
      sources = {
        -- Formatter
        formatters.prettier,
        formatters.black,

        -- Diagnostics
        diagnostics.pycodestyle.with({ filetypes = { "python" } }),
        diagnostics.mypy,
        diagnostics.ruff,

        -- Code Actions
        code_actions.refactoring,
        code_actions.shellcheck,

      },
    })

    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, opts)
  end,
}
