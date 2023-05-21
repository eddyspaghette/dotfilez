local telescope = require('telescope')
telescope.setup{
	defaults = {
	},
	mappings = {
		["<C-d>"] = require('telescope.actions').delete_buffer,
	},
	pickers = {
		find_files = {
			theme = "dropdown"
		},
		live_grep=  {
			theme = "dropdown",
		},
		buffers = {
			theme = "dropdown",
		},
		help_tags = {
			theme = "dropdown",
		},
	},

	extensions = {
	}
}

telescope.load_extension'fzf'
telescope.load_extension'zoxide'
