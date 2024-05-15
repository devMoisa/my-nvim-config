return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua, --//  for luafiles
				null_ls.builtins.formatting.prettier, -- // for javascript / typescript
				null_ls.builtins.formatting.black, --// for python
				--//			null_ls.builtins.formatting.eslint, --// for javascript / typescript
				--//        null_ls.builtins.formatting.gopls, --// for go lang
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
