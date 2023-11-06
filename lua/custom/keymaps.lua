local opts      = { noremap = true, silent = true }

local term_opts = { silent = true }

local keymap    = vim.keymap.set

--remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- modes
-- normal = n
-- inser = i
-- visual = v
-- visual block = x
-- terminal = t
-- command = c


--NORMAL MODE--
-- improved window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- file browser
keymap("n", "<leader>pv", ":Telescope file_browser path=%:p:h select_buffer=true<CR>", opts)

--buffer delete
keymap("n", "<leader>x", ":Bdelete<CR>", opts)

--[[ keymap("n", "<leader>e", ":Lex 30<cr>", opts) ]]


--resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)


--Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)




--INSERT--
-- reset js to escape
-- keymap("i", "jk", "<ESC>", opts)



--VISUAL--
--stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)
keymap("v", "p", '"_dp', opts)

-- move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)




--VISUAL BLOCK--
--move text up and down
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)




--TERMINAL--
--improved terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)


--PLUGINS--

--telescope
keymap("n", "<leader>f",
	"<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>",
	opts)
keymap("n", "<c-t>", "<cmd>Telescope live_grep<cr>", opts)


keymap("n", "<A-i>", ":exe v:count1 . 'ToggleTerm' <CR> ", opts)
