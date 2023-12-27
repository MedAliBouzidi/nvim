return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config =function()

		local config = require('nvim-treesitter.configs')
		config.setup({
			ensure_installed = { "c", "lua", "javascript", "html", "java", "typescript", "python", "yaml", "tsx", "css", "json" },
			highlight = { enable = true },
			indent = { enable = true },
		})
	end
}
