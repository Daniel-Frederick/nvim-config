return {
    "mfussenegger/nvim-dap",

    lazy = false,

    dependencies = {
        "theHamsta/nvim-dap-virtual-text",
        {
            "nvim-telescope/telescope-dap.nvim",
            dependencies = { "nvim-telescope/telescope.nvim" },
        },
    },

    config = function()
        require("config.dap")

        local dap = require("dap")
        require("config.keymaps_dap")(dap)

        -- Show variable values inline while debugging
        require("nvim-dap-virtual-text").setup({
            enabled = true,
            enabled_commands = true,
            highlight_changed_variables = true,
            virt_text_pos = "inline",
        })

        local telescope = require("telescope")
        telescope.load_extension("dap")
        local dap_telescope = telescope.extensions.dap

        vim.keymap.set("n", "<leader>db", dap_telescope.list_breakpoints, {
            desc = "List Breakpoints",
        })

        vim.keymap.set("n", "<leader>df", dap_telescope.frames, {
            desc = "DAP Stack Frames",
        })

        vim.keymap.set("n", "<leader>ds", function()
            dap.repl.open()
        end, {
            desc = "Open DAP REPL",
        })
    end,
}
