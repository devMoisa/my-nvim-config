return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		-- Configuração do Neo-tree
		require("neo-tree").setup({
			window = {
				mappings = {
					["l"] = "open", -- Usar 'L' para abrir a pasta
					["h"] = "close_node", -- Usar 'H' para fechar a pasta
					["j"] = "next_sibling", -- Usar 'j' para mover para baixo
					["k"] = "prev_sibling", -- Usar 'k' para mover para cima
				},
			},
		})

		-- Mapeamento da tecla <leader>e para alternar o Neo-tree
		vim.keymap.set("n", "<leader>e", function()
			require("neo-tree.command").execute({ toggle = true, dir = vim.loop.cwd() })
		end, {})

		-- Mapeamento das teclas Ctrl+h e Ctrl+l para navegação entre janelas
		vim.keymap.set("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
		vim.keymap.set("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })
	end,
}
