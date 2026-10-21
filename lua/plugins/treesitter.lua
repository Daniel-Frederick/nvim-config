return {
    "nvim-treesitter/nvim-treesitter",

    lazy = false,
    build = ":TSUpdate",

    config = function()
        require("nvim-treesitter").setup()

        require("nvim-treesitter").install({
            "c",
            "cpp",
            "javascript",
            "typescript",
            "python",
            "thrift",
        })

        vim.api.nvim_create_autocmd("FileType", {
            pattern = {
                "c",
                "cpp",
                "javascript",
                "typescript",
                "typescriptreact",
                "javascriptreact",
                "python",
                "thrift",
            },
            callback = function()
                vim.treesitter.start()
            end,
        })
    end,
}
