-- Functions to retreive the initial directory path (for telescope,...)
local function change_dir_from_argv()
	local argv = vim.fn.argv()

	if #argv > 0 then
		local path = argv[1]

		local is_dir = vim.fn.isdirectory(path) == 1

		if is_dir then
			vim.cmd("cd " .. path)
		end
	end
end

vim.api.nvim_create_autocmd({ "VimEnter", "BufEnter" }, {
	callback = change_dir_from_argv,
})

-- Enable format on save
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
		local filetype = vim.bo.filetype

		if filetype == "go" then
			vim.lsp.buf.format()
		else
			require("conform").format({ bufnr = args.buf })
		end
	end,
})
