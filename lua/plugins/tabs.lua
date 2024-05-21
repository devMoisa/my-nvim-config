return {
	"akinsho/bufferline.nvim",
	requires = "kyazdani42/nvim-web-devicons", -- para ícones de arquivo
	config = function()
		require("bufferline").setup({})
	end,
}
