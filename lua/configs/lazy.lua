local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
    require("plugins/catppuccin"),
    require("plugins/lualine"),
    require("plugins/neotree"),
    require("plugins/which-key"),
    require("plugins/treesitter"),
    require("plugins/telescope"),
    require("plugins/lsp"),
    require("plugins/none-ls"),
    require("plugins/autocomplete"),
    require("plugins/toggleterm"),
    require("plugins/git"),
    require("plugins/dashboard"),
}
local opts = {}

require("lazy").setup(plugins, opts)
