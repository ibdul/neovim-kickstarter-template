return {
	"roobert/tailwindcss-colorizer-cmp.nvim",
	config = function()
		local status_ok, colorizer = pcall(require, "tailwindcss-colorizer-cmp")

		if not status_ok then
			return
		end

		colorizer.setup({
			color_square_width = 2,
		})

		require("cmp").config.formatting = {
			format = colorizer.formatter
		}
	end
}
