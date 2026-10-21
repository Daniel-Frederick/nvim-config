return {
    "folke/flash.nvim",

    event = "VeryLazy",

    opts = {
        modes = {
            char = {
                enabled = true,
                multi_line = true,
                jump_labels = true,
            },

            search = {
                enabled = true,
            },
        },

        search = {
            mode = "exact",
        },
    },

    keys = {
        {
            "s",
            mode = { "n", "x", "o" },
            function()
                require("flash").jump({
                    search = {
                        mode = "exact",
                    },
                })
            end,
            desc = "Flash Jump",
        },

        {
            "S",
            mode = { "n", "x", "o" },
            function()
                require("flash").treesitter()
            end,
            desc = "Flash Treesitter",
        },
    },
}
