return {
    "nvim-telescope/telescope.nvim",
    version = "*",

    dependencies = {
        "nvim-lua/plenary.nvim",
        {
            "nvim-telescope/telescope-fzf-native.nvim",
            build = "make",
        },
    },

    config = function()
        local telescope = require("telescope.builtin")

        vim.keymap.set("n", "<leader>ff", telescope.find_files, {
            desc = "Find Files",
        })

        vim.keymap.set("n", "<leader><leader>", telescope.find_files, {
            desc = "Find Files",
        })

        vim.keymap.set("n", "<leader>fg", telescope.git_files, {
            desc = "Git Files",
        })

        vim.keymap.set("n", "<leader>fs", telescope.live_grep, {
            desc = "Live Grep",
        })

        vim.keymap.set("n", "<leader>fb", telescope.buffers, {
            desc = "Find Buffers",
        })

        vim.keymap.set("n", "<leader>fh", telescope.help_tags, {
            desc = "Help",
        })
    end,
}
