return {
	"mfussenegger/nvim-dap",

	lazy = false,

	dependencies = {
		"theHamsta/nvim-dap-virtual-text",
	},

	config = function()
		require("config.dap")
	end,
}

