-- Alias for global kemap command
local km = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Map windows commands, i.e., <C-w> commands to <leader>w
km("n", "<leader>w", "<C-w>", opts)

local wk = require("which-key")
local Terminal = require("toggleterm.terminal").Terminal

local toggle_shell = function()
    local shell_win = Terminal:new({direction = "float"})
    return shell_win:toggle()
end

local toggle_lazygit = function()
    local lazygit_win = Terminal:new({cmd = "lazygit", direction = "float"})
    return lazygit_win:toggle()
end

wk.register({
	f = {
		name = "File",
		f = { "<cmd>Telescope find_files<cr>", "Find files" },
		g = { "<cmd>Telescope live_grep<cr>", "Live grep" },
		h = { "<cmd>Telescope help_tags<cr>", "Help tags" },
		s = { ":w<cr>", "Save file" },
	},

    b = {
        name = "Buffer",
		b = { "<cmd>Telescope buffers<cr>", "List buffers" },
		d = { ":bd<cr>", "Delete Buffer" },
		n = { ":bn<cr>", "Next Buffer" },
		p = { ":bp<cr>", "Previous Buffer" },
    },

    t = {"<cmd>Neotree<cr>", "Neotree"},

    s = {
        name = "Shells",
        t = {toggle_shell, "Terminal"},
        l = {toggle_lazygit, "Lazygit"},
    },

    d = {"<cmd>Dashboard<cr>", "Dashboard"},

    g = {
        name = "Git",
        s = {"<cmd>Git status<cr>", "Status"},
        p = {"<cmd>Git pull<cr>", "Pull"},
        P = {"<cmd>Git push<cr>", "Push"},
        c = {"<cmd>Git commit<cr>", "Commit"},
        a = {"<cmd>Git add .<cr>", "Add all"},
        l = {toggle_lazygit, "Lazygit"},
    },

    q = {
        name = "Quit",
        q = {":q <cr>", "Just quit"},
        y = {":wq <cr>", "Save"},
        n = {":q! <cr>", "Don't save"},
    },

}, { prefix = "<leader>" })
