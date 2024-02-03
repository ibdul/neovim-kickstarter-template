return {
	'nvimdev/lspsaga.nvim',
	config = function()
		require('lspsaga').setup({
			lightbulb = {
				enable = false,
				enable_in_insert = false,
				sign = false,
				sign_priority = 40,
				virtual_text = false,
			},
			--[[ ui = { ]]
			--[[ 	code_action = "󰌵" ]]
			--[[ } ]]

		})
	end,
	dependencies = {
		'nvim-treesitter/nvim-treesitter', -- optional
		'nvim-tree/nvim-web-devicons'    -- optional
	}
}
