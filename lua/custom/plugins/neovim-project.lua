return {
	"coffebar/neovim-project",
	config = function()
		-- enable saving the state of plugins in the session
		vim.opt.sessionoptions:append("globals") -- save global variables that start with an uppercase letter and contain at least one lowercase letter.

		local status_ok, neovimProject = pcall(require, "neovim-project")

		if not status_ok then
			return
		end

		neovimProject.setup({
			-- Project directories
			projects = {
				"~/p*cts/*", -- glob pattern is supported
				"~/code space/*/*",
				"~/code space/playground/compilers/*",
				"~/code space/playground/rust/*",
				"~/projects/*",
				"~/projects/repos/*",
				"~/.config/*",
				"~/work/*",
			},
			-- Path to store history and sessions
			datapath = vim.fn.stdpath("data"), -- ~/.local/share/nvim/
			-- Load the most recent session on startup if not in the project directory
			last_session_on_startup = true,

			-- Overwrite some of Session Manager options
			session_manager_opts = {
				autosave_ignore_dirs = {
					vim.fn.expand("~"), -- don't create a session for $HOME/
					"/tmp",
				},
				autosave_ignore_filetypes = {
					-- All buffers of these file types will be closed before the session is saved
					"ccc-ui",
					"gitcommit",
					"gitrebase",
					"qf",
					"toggleterm",
				},
			},
		})
	end,
	dependencies = {
		"Shatur/neovim-session-manager"
	},
}
