return {
  "windwp/nvim-ts-autotag",
  config = function()
    require("nvim-ts-autotag").setup()
  end,
  requires = { "nvim-treesitter/nvim-treesitter" }, -- make sure you have nvim-treesitter installed
}
