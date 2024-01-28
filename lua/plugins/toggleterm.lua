return {
	"akinsho/toggleterm.nvim",
	config = function()
		local Terminal = require("toggleterm.terminal").Terminal
		local lazygit = Terminal:new({ cmd = "lazygit", direction = "float", hidden = true })

        function lazygit_toggle()
            lazygit:toggle()
        end

		vim.api.nvim_set_keymap("n", "<leader>lg", ":lua lazygit_toggle()<cr>", { noremap = true, silent = true })

		local Terminal2 = require("toggleterm.terminal").Terminal
        local term = Terminal2:new({direction = "float", hidden = true })

        function launchterminal()
            term:toggle()
        end
        vim.api.nvim_set_keymap("n", "<leader>lt", ":lua launchterminal()<cr>", { noremap = true, silent = true})
	end,
}
