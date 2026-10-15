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

        vim.keymap.set("n", "<leader>fw", telescope.grep_string, {
            desc = "Find Word",
        })

        vim.keymap.set("v", "<leader>fw", function()
            local saved_reg = vim.fn.getreg("v")
            vim.cmd('normal! "vy')
            local selection = vim.fn.getreg("v")
            vim.fn.setreg("v", saved_reg)

            telescope.grep_string({
                search = selection,
            })
        end, {
        desc = "Find Word",
    })

        vim.keymap.set("n", "<leader>fb", telescope.buffers, {
            desc = "Find Buffers",
        })

        vim.keymap.set("n", "<leader>fh", telescope.help_tags, {
            desc = "Help",
        })
    end,
}
