-- Opened a directory and make it the working directory
vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
        local arg = vim.fn.argv(0)

        if vim.fn.isdirectory(arg) == 1 then
            vim.cmd.lcd(arg)
        end
    end,
})

