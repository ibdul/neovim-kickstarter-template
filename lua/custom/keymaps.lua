local opts      = { noremap = true, silent = true }

local term_opts = { silent = true }

local keymap    = vim.keymap.set

--remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- modes
-- normal = n
-- insert = i
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
keymap("n", "<leader>d", ":Telescope file_browser path=%:p:h select_buffer=true<CR>", opts)

--buffer delete
keymap("n", "<leader>x", ":Bdelete<CR>", opts)

-- Copy whole file content to clipboard with C-c
keymap("n", "<C-c>", ":%y<CR>", opts)
keymap("n", "<leader><C-c>", ":%y+<CR>", opts)

-- yank and paste to sys clipboard
keymap("n", "<leader>y", '"+y<CR>', opts)
keymap("v", "<leader>y", '"+y<CR>', opts)
keymap("x", "<leader>y", '"+y<CR>', opts)
keymap("t", "<leader>y", '"+y<CR>', opts)
keymap("n", "<leader>p", '"+p<CR>', opts)
keymap("v", "<leader>p", '"+p<CR>', opts)
keymap("x", "<leader>p", '"+p<CR>', opts)
keymap("t", "<leader>p", '"+p<CR>', opts)

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

-- Better paste
-- remap "p" in visual mode to delete the highlighted text without overwriting your yanked/copied text, and then paste the content from the unnamed register.
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




--COMMAND--
--imporoved navigation
keymap("c", "<C-k>", "<Up>", { noremap = true })
keymap("c", "<C-j>", "<Down>", { noremap = true })
keymap("c", "<C-h>", "<Left>", { noremap = true })
keymap("c", "<C-l>", "<Right>", { noremap = true })

--yanking and pasting
keymap("c", "<C-p>", "<C-R>", { noremap = true })
keymap("c", "<C-y>", function()
	vim.fn.setreg('', vim.fn.getcmdline())
end, { noremap = true })


--PLUGINS--

--telescope
keymap("n", "<leader>f",
	"<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>",
	opts)
keymap("n", "<c-t>", "<cmd>Telescope live_grep_args<cr>", opts)


keymap("n", "<A-i>", ":exe v:count1 . 'ToggleTerm' <CR> ", opts)
