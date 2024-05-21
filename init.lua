local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("vim-options")
require("lazy").setup("plugins")
require("colorizer").setup()
-- Configurações do vim-floaterm
vim.g.floaterm_width = 0.9  -- Largura 90% da tela
vim.g.floaterm_height = 0.9 -- Altura 90% da tela
vim.g.floaterm_wintitle = 0 -- Desativar o título da janela

vim.keymap.set("n", "<leader>gg", function()
  vim.cmd("FloatermNew lazygit")
end, { noremap = true, silent = true })
