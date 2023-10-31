-- plugins/telescope.lua:
return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.4",
	-- or                              , branch = '0.1.x',
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local builtin = require("telescope.builtin")
		local telescope = require("telescope")
		vim.keymap.set("n", "<leader>st", builtin.live_grep, {})
		vim.keymap.set("n", "<leader>sb", builtin.buffers, {})
		vim.keymap.set("n", "<leader>sh", builtin.help_tags, {})
		vim.keymap.set("n", "<leader>f", builtin.find_files, {})

		telescope.setup({
			defaults = {
				history = {
					path = "~/.config/nvim/telescope_history",
					limit = 100,
				},
			},
		})
	end,
}
