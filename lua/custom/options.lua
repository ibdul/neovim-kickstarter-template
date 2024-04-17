-- [[ Setting options ]]
-- See `:help vim.o`
-- NOTE: You can change these options as you wish!

-- Set highlight on search
vim.o.hlsearch = false

-- Make line numbers default
vim.wo.number = true
vim.wo.relativenumber = true

-- Enable mouse mode
-- vim.o.mouse = 'a'

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true




--[[ tab width ]]
--
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

--[[ vim.opt.clipboard = "unnamedplus" -- allow nvim to access system clipboard ]]
vim.opt.cmdheight = 2          -- allow more height in neovim cmd
vim.opt.fileencoding = "utf-8" -- default encoding
vim.opt.mouse = "i"            -- allow use of mouse in all modes
vim.opt.termguicolors = true
vim.opt.pumheight = 10         -- pop up menu height
vim.opt.showtabline = 2        -- always show tabs
vim.opt.smartcase = true       --smart casing
vim.opt.smartindent = true     -- smart indenting
vim.opt.splitbelow = true      -- force all horizontal spits to go below current window
vim.opt.splitright = true      -- force all vertical spits to go right of current window
vim.opt.expandtab = true       -- convert tabs to spaces
vim.opt.shiftwidth = 2         -- 2 spaces indentations
vim.opt.tabstop = 2            -- 1 tab == 2 spaces
vim.opt.cursorline = true      -- underline current line
vim.opt.number = true          -- add absolute line numbers
vim.opt.relativenumber = true  -- add relative line numbers
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8      -- scroll offset
vim.opt.showmode = false       -- hide vim mode display
