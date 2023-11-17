return {
	"kevinhwang91/nvim-ufo",
	dependencies = {
		"kevinhwang91/promise-async"
	},

	config = function()
		vim.o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
		vim.o.foldcolumn = "5" -- '0' is not b
		vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
		vim.o.foldlevelstart = 99
		vim.o.foldenable = true

		-- Using ufo provder need remap `zR` and `zM`. If Neovim is 0.6.1, remap yourself
		vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
		vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)

		vim.keymap.set("n", "zK", function()
			local winID = require("ufo").peekFoldedLinesUnderCursor()
			if not winID then
				vim.lsp.buf.hover()
			end
		end, { desc = "Peek fold" })


		require("ufo").setup({
			provider_selector = function()
				return { "lsp", "indent" }
			end
		})
	end
}
