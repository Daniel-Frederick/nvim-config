-- https://github.com/ThePrimeagen/harpoon/tree/harpoon2
return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",

	dependencies = {
		"nvim-lu<C-S-a/plenary.nvim",
	},

	config = function()
		local harpoon = require("harpoon")

		-- REQUIRED
		harpoon:setup()
		-- REQUIRED

		vim.keymap.set("n", "<leader>ha", function() harpoon:list():add() end)
		vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

		-- vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
		-- vim.keymap.set("n", "<C-t>", function() harpoon:list():select(2) end)
		-- vim.keymap.set("n", "<C-n>", function() harpoon:list():select(3) end)
		-- vim.keymap.set("n", "<C-s>", function() harpoon:list():select(4) end)
		-- vim.keymap.set("n", "<C-1>", function() harpoon:list():select(1) end)
		-- vim.keymap.set("n", "<C-2>", function() harpoon:list():select(2) end)
		-- vim.keymap.set("n", "<C-3>", function() harpoon:list():select(3) end)
		-- vim.keymap.set("n", "<C-4>", function() harpoon:list():select(4) end)

        -- Select Harpoon files 1-9
        for i = 1, 9 do
            vim.keymap.set("n", "<leader>" .. i, function()
                harpoon:list():select(i)
            end, { desc = "Harpoon Select " .. i })
        end

		-- Toggle previous & next buffers stored within Harpoon list
		vim.keymap.set("n", "<leader>hp", function() harpoon:list():prev() end)
		vim.keymap.set("n", "<leader>hn", function() harpoon:list():next() end)
        
        -- Clear all Harpoon files
		vim.keymap.set("n", "<leader>hc", function() harpoon:list():clear() end)
	end,
}
