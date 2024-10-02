return {
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.5",
        -- or                              , branch = '0.1.x',
        dependencies = { "nvim-lua/plenary.nvim" },
    },

    {
        'nvim-telescope/telescope-ui-select.nvim',


        -- This is your opts table
        config = function()
            require("telescope").setup ({
              extensions = {
                ["ui-select"] = {
                  require("telescope.themes").get_dropdown {
                    -- even more opts
                  }
                }
              }
            })
            -- To get ui-select loaded and working with telescope, you need to call
            -- load_extension, somewhere after setup function:
            require("telescope").load_extension("ui-select")
        end




    },
}
