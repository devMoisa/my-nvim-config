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
				width = 40,
				mappings = {
					["l"] = "open", -- Usar 'L' para abrir a pasta
					["h"] = "close_node", -- Usar 'H' para fechar a pasta
					["j"] = "next_sibling", -- Usar 'j' para mover para baixo
					["k"] = "prev_sibling", -- Usar 'k' para mover para cima
					-- Adicionando mapeamentos para abrir splits
					["v"] = function(state)
						local node = state.tree:get_node()
						require("neo-tree.sources.filesystem.commands").open_vsplit(state, node)
					end,
					["V"] = function(state)
						local node = state.tree:get_node()
						require("neo-tree.sources.filesystem.commands").open_split(state, node)
					end,
				},
			},
		})

		-- Mapeamento da tecla <leader>e para alternar o Neo-tree
		vim.keymap.set("n", "<leader>e", function()
			require("neo-tree.command").execute({ toggle = true, dir = vim.loop.cwd() })
		end, {})

		-- Mapeamentos adicionais para navegação entre janelas usando Alt+Seta
		vim.keymap.set("n", "<A-Left>", "<C-w>h", { noremap = true, silent = true })
		vim.keymap.set("n", "<A-Right>", "<C-w>l", { noremap = true, silent = true })
	end,
}
