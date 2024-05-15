return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({
        ensure_installed = { "lua", "javascript", "typescript", "go", "html" },
        highlight = { enable = true },
        indent = { enable = true },
        autotag = { enable = true },
        rainbow = {
          enable = true,
          extended_mode = true,
          max_file_lines = nil,
        },
      })
    end,
  },
  {
    "p00f/nvim-ts-rainbow",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
  },
}
