vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

vim.keymap.set("n", "<C-s>", "<cmd>w<CR>", {
	desc = "Save File",
})

-- When paging, keep cursor in center
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Keep Search terms in center
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Copying to clipboard
-- vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
-- vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Deleting to clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])

-- Switching between projects w/ tmux
-- vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
-- vim.keymap.set("n", "<M-h>", "<cmd>silent !tmux-sessionizer -s 0 --vsplit<CR>")
-- vim.keymap.set("n", "<M-H>", "<cmd>silent !tmux neww tmux-sessionizer -s 0<CR>")

-- Quickfix navigation
vim.keymap.set("n", "<C-j>", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<C-k>", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>sr", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>ql", "<cmd>lclose<CR>", {
    desc = "Close Location List",
})

-- c/c++
vim.keymap.set("n", "<leader>th", function()
    vim.lsp.buf_request(0, "textDocument/switchSourceHeader", {
        uri = vim.uri_from_bufnr(0),
    }, function(err, result)
        if err then
            vim.notify(err.message, vim.log.levels.WARN)
            return
        end

        if result then
            vim.cmd.edit(vim.uri_to_fname(result))
        else
            vim.notify("No corresponding source/header file found", vim.log.levels.INFO)
        end
    end)
end, { desc = "Switch Source/Header" })

-- Debugging
vim.keymap.set("n", "<leader>do", vim.diagnostic.open_float) -- Showing single error msg
vim.keymap.set("n", "<leader>dl", vim.diagnostic.setloclist) -- Showing All error msgs

