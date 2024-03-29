return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    vim.keymap.set("n", "<leader>e", ":Neotree filesystem reveal left toggle<CR>")

    require("neo-tree").setup({
      filesystem = {
        filtered_items = {
          visible = true,
          hide_dotfiles = false
        },
        window = {
          mappings = {
            -- disable split from neo-tree by mapping to none or noop
            ["S"] = "noop",
            ["s"] = "none",
          },
        },
      },
    })
  end,
}
