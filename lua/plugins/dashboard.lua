return {
	{
		"nvimdev/dashboard-nvim",
		event = "VimEnter",
		config = function()
			require("dashboard").setup({
				-- config
				theme = "doom",
				config = {
					header = {
						"",
						"",
						"",
						"",
						"",
						"",

                        "VVVVVVVV           VVVVVVVV iiii                          ",
                        "V::::::V           V::::::Vi::::i                         ",
                        "V::::::V           V::::::V iiii                          ",
                        "V::::::V           V::::::V                               ",
                        " V:::::V           V:::::Viiiiiii    mmmmmmm    mmmmmmm   ",
                        "  V:::::V         V:::::V i:::::i  mm:::::::m  m:::::::mm ",
                        "   V:::::V       V:::::V   i::::i m::::::::::mm::::::::::m",
                        "    V:::::V     V:::::V    i::::i m::::::::::::::::::::::m",
                        "     V:::::V   V:::::V     i::::i m:::::mmm::::::mmm:::::m",
                        "      V:::::V V:::::V      i::::i m::::m   m::::m   m::::m",
                        "       V:::::V:::::V       i::::i m::::m   m::::m   m::::m",
                        "        V:::::::::V        i::::i m::::m   m::::m   m::::m",
                        "         V:::::::V        i::::::im::::m   m::::m   m::::m",
                        "          V:::::V         i::::::im::::m   m::::m   m::::m",
                        "           V:::V          i::::::im::::m   m::::m   m::::m",
                        "            VVV           iiiiiiiimmmmmm   mmmmmm   mmmmmm",
					"",
						"",
						"",
						"",
						"",
					},

                    center = {
                        {
                            desc = "New file",
                            icon = "- ",
                            key = "n",
                            action = ":enew",
                        },
                        {
                            desc = "Config folder",
                            icon = "- ",
                            key = "c",
                            action = ":e ~/.config/nvim/lua/configs",
                        },
                        {
                            desc = "Plugins folder",
                            icon = "- ",
                            key = "p",
                            action = ":e ~/.config/nvim/lua/plugins",
                        },
                        {
                            desc = "Mason",
                            icon = "- ",
                            key = "m",
                            action = ":Mason",
                        },
                        {
                            desc = "Lazy",
                            icon = "- ",
                            key = "l",
                            action = ":Lazy",
                        },
                        {
                            desc = "Quit",
                            icon = "- ",
                            key = "q",
                            action = ":q",
                        },
                    },
				},
			})
		end,
		dependencies = { { "nvim-tree/nvim-web-devicons" } },
	},
}
