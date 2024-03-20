return {
	"lewis6991/gitsigns.nvim",
	config = function()
		local opts = {}

		require("gitsigns").setup()

		vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", opts)
	end,
}
