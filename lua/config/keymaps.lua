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
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>sr", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Debugging
-- LSP Error showing
vim.keymap.set("n", "<leader>do", vim.diagnostic.open_float) -- Showing single msg
vim.keymap.set("n", "<leader>dl", vim.diagnostic.setloclist) -- Showing All msgs

-- DAP
vim.keymap.set("n", "<F9>", function()
	require("dap").continue()
end, { desc = "DAP Continue" })

vim.keymap.set("n", "<F10>", function()
	require("dap").step_over()
end, { desc = "DAP Step Over" })

vim.keymap.set("n", "<F11>", function()
	require("dap").step_into()
end, { desc = "DAP Step Into" })

vim.keymap.set("n", "<F12>", function()
	require("dap").step_out()
end, { desc = "DAP Step Out" })

vim.keymap.set("n", "<leader>b", function()
	require("dap").toggle_breakpoint()
end, { desc = "DAP Toggle Breakpoint" })

vim.keymap.set("n", "<leader>B", function()
	require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: "))
end, { desc = "DAP Conditional Breakpoint" })

vim.keymap.set("n", "<leader>dt", function()
	require("dap").terminate()
end, { desc = "DAP Terminate" })

vim.keymap.set("n", "<leader>dr", function()
	require("dap").restart()
end, { desc = "DAP Restart" })

vim.keymap.set("n", "<leader>de", function()
	require("dap").repl.open()
end, { desc = "DAP REPL" })

vim.keymap.set("n", "<leader>dc", function()
	require("dap").run_to_cursor()
end, { desc = "DAP Run to Cursor" })

vim.keymap.set("n", "<leader>dv", function()
	require("dap").evaluate()
end, { desc = "DAP Evaluate" })
