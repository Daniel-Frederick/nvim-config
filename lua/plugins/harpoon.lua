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
