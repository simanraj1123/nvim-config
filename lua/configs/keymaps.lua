-- Alias for global kemap command
local km = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Map windows commands, i.e., <C-w> commands to <leader>w
km("n", "<leader>w", "<C-w>", opts)

local wk = require("which-key")
local Terminal = require("toggleterm.terminal").Terminal

local toggle_shell = function()
    local shell_win = Terminal:new({ direction = "float" })
    return shell_win:toggle()
end

local toggle_lazygit = function()
    local lazygit_win = Terminal:new({ cmd = "lazygit", direction = "float" })
    return lazygit_win:toggle()
end

-- wk.register({
--     f = {
--         name = "File",
--         f = { "<cmd>Telescope find_files<cr>", "Find files" },
--         g = { "<cmd>Telescope live_grep<cr>", "Live grep" },
--         h = { "<cmd>Telescope help_tags<cr>", "Help tags" },
--         t = { "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>", "Help tags" },
--         s = { ":w<cr>", "Save file" },
--     },
-- 
--     b = {
--         name = "Buffer",
--         b = { "<cmd>Telescope buffers<cr>", "List buffers" },
--         d = { ":bd<cr>", "Delete Buffer" },
--         D = { ":bd!<cr>", "Delete Buffer without save" },
--         n = { ":bn<cr>", "Next Buffer" },
--         p = { ":bp<cr>", "Previous Buffer" },
--     },
-- 
--     t = { "<cmd>Neotree<cr>", "Neotree" },
-- 
--     s = {
--         name = "Shells",
--         t = { toggle_shell, "Terminal" },
--         l = { toggle_lazygit, "Lazygit" },
--     },
-- 
--     d = { "<cmd>Dashboard<cr>", "Dashboard" },
-- 
--     g = {
--         name = "Git",
--         s = { "<cmd>Git status<cr>", "Status" },
--         p = { "<cmd>Git pull<cr>", "Pull" },
--         P = { "<cmd>Git push<cr>", "Push" },
--         c = { "<cmd>Git commit<cr>", "Commit" },
--         a = { "<cmd>Git add .<cr>", "Add all" },
--         l = { toggle_lazygit, "Lazygit" },
--     },
-- 
--     q = {
--         name = "Quit",
--         q = { ":q <cr>", "Just quit" },
--         y = { ":wq <cr>", "Save" },
--         n = { ":q! <cr>", "Don't save" },
--     },
-- }, { prefix = "<leader>" })



  -- Suggested Spec:
wk.add  {
  { "<leader>b", group = "Buffer" },
  { "<leader>bD", ":bd!<cr>", desc = "Delete Buffer without save" },
  { "<leader>bb", "<cmd>Telescope buffers<cr>", desc = "List buffers" },
  { "<leader>bd", ":bd<cr>", desc = "Delete Buffer" },
  { "<leader>bn", ":bn<cr>", desc = "Next Buffer" },
  { "<leader>bp", ":bp<cr>", desc = "Previous Buffer" },
  { "<leader>f", group = "File" },
  { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find files" },
  { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live grep" },
  { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help tags" },
  { "<leader>fs", ":w<cr>", desc = "Save file" },
  { "<leader>ft", "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>", desc = "Help tags" },
  { "<leader>g", group = "Git" },
  { "<leader>gP", "<cmd>Git push<cr>", desc = "Push" },
  { "<leader>ga", "<cmd>Git add .<cr>", desc = "Add all" },
  { "<leader>gc", "<cmd>Git commit<cr>", desc = "Commit" },
  { "<leader>gl", toggle_lazygit, desc = "Lazygit" },
  { "<leader>gp", "<cmd>Git pull<cr>", desc = "Pull" },
  { "<leader>gs", "<cmd>Git status<cr>", desc = "Status" },
  { "<leader>q", group = "Quit" },
  { "<leader>qn", ":q! <cr>", desc = "Don't save" },
  { "<leader>qq", ":q <cr>", desc = "Just quit" },
  { "<leader>qy", ":wq <cr>", desc = "Save" },
  { "<leader>s", group = "Shells" },
  { "<leader>sl", toggle_lazygit, desc = "Lazygit" },
  { "<leader>st", toggle_shell, desc = "Terminal" },
  { "<leader>t", "<cmd>Neotree<cr>", desc = "Neotree" },
  }
