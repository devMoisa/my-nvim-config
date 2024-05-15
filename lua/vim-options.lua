vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "

-- Vim options
vim.opt.number = true          -- Show line numbers
vim.opt.relativenumber = false -- Show relative line numbers
vim.opt.cursorline = true      -- Highlight the current line
vim.opt.wrap = false           -- Disable line wrapping
vim.opt.smartindent = true     -- Smart indentation
vim.opt.autoindent = true      -- Auto indentation
vim.opt.hlsearch = true        -- Highlight search results
vim.opt.incsearch = true       -- Incremental search
vim.opt.ignorecase = true      -- Ignore case in search patterns
vim.opt.smartcase = true       -- Override ignorecase if search pattern contains uppercase letters
vim.opt.backup = false         -- Disable backup file creation
vim.opt.writebackup = false    -- Disable backup before overwriting a file
vim.opt.swapfile = false       -- Disable swap file creation
vim.opt.undofile = true        -- Enable persistent undo
vim.opt.termguicolors = true   -- Enable 24-bit RGB color in the TUI
vim.opt.scrolloff = 8          -- Minimum number of screen lines to keep above and below the cursor
vim.opt.sidescrolloff = 8      -- Minimum number of screen columns to keep to the left and right of the cursor
vim.opt.clipboard = "unnamedplus" -- Use system clipboard
vim.opt.updatetime = 300       -- Faster completion

-- Additional configurations
vim.opt.signcolumn = "yes"     -- Always show the sign column
vim.opt.splitright = true      -- Vertical split to the right
vim.opt.splitbelow = true      -- Horizontal split to the bottom
vim.opt.showmode = false       -- We don't need to see things like -- INSERT -- anymore
vim.opt.completeopt = { "menuone", "noselect" } -- Completion options

-- Highlight on yank
vim.cmd("au TextYankPost * silent! lua vim.highlight.on_yank()")

