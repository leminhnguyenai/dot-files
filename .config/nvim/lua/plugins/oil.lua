return {
	"stevearc/oil.nvim",
	---@module 'oil'
	---@type oil.SetupOpts
	dependencies = { { "echasnovski/mini.icons", opts = {} } },
	config = function()
		local oil = require("oil")

		oil.setup({
			default_file_explorer = false,
			delete_to_trash = true,
			watch_for_changes = true,
			view_options = {
				show_hidden = true,
			},
		})
	end,
}
