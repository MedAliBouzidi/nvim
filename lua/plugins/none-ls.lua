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
				formatters.stylua,
				formatters.prettier,
				formatters.google_java_format,
        formatters.clang_format,
        formatters.isort,

				-- Diagnostics
				diagnostics.eslint_d,
        diagnostics.pycodestyle,

				-- Code Actions
        code_actions.eslint_d,

			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, opts)
	end,
}
