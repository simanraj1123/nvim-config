-- PYTHON 
-- Keymap shortcut and options
local opts = { noremap = true, silent = true }
local km = vim.api.nvim_buf_set_keymap

-- Creating a augroup
local group = vim.api.nvim_create_augroup("Python_AutoCmds", { clear = true })

-- Creating the AutoCmds in the Python_AutoCmds augroup
vim.api.nvim_create_autocmd("FileType", {
	group = group,
	pattern = "python",
	callback = function()
		local current_buf = vim.api.nvim_get_current_buf()
		km(current_buf, "n", "<leader>cx", ":w | !python3 % <CR>", opts)
		km(current_buf, "n", "<leader>c/", "0i# <esc>", opts)
		km(current_buf, "n", "<leader>c.", "0xx", opts)
		km(current_buf, "v", "<leader>c/", "<C-v>0I# <esc> '>", opts)
		km(current_buf, "v", "<leader>c.", [[<esc>:'<,'>s/^#\s\?// | :let @/=''<CR> \'>]], opts)
		km(current_buf, "n", "<leader>m", "Iprint(<esc>A)<esc>", opts)
	end,
})



-- Creating a augroup
local group = vim.api.nvim_create_augroup("Rust_AutoCmds", { clear = true })

-- Creating the AutoCmds in the Python_AutoCmds augroup
vim.api.nvim_create_autocmd("FileType", {
	group = group,
	pattern = "rust",
	callback = function()
		local current_buf = vim.api.nvim_get_current_buf()
		km(current_buf, "n", "<leader>cx", ":w | !rustc % -o %:r && ./%:r <CR>", opts)
		km(current_buf, "n", "<leader>c/", "0i// <esc>", opts)
		km(current_buf, "n", "<leader>c.", "0xxx", opts)
		km(current_buf, "v", "<leader>c/", "<C-v>0I// <esc> '>", opts)
		km(current_buf, "v", "<leader>c.", [[<esc>:'<,'>s/^\/\/\s\?// | :let @/=''<CR> \'>]], opts)
		km(current_buf, "n", "<leader>m", "Iprint(<esc>A)<esc>", opts)
	end,
})
