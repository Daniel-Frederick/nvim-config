return function(dap)
    vim.keymap.set("n", "<F9>", dap.continue, {
        desc = "DAP Continue",
    })

    vim.keymap.set("n", "<F10>", dap.step_over, {
        desc = "DAP Step Over",
    })

    vim.keymap.set("n", "<F11>", dap.step_into, {
        desc = "DAP Step Into",
    })

    vim.keymap.set("n", "<F12>", dap.step_out, {
        desc = "DAP Step Out",
    })

    vim.keymap.set("n", "<leader>b", dap.toggle_breakpoint, {
        desc = "DAP Toggle Breakpoint",
    })

    vim.keymap.set("n", "<leader>B", function()
        dap.set_breakpoint(vim.fn.input("Breakpoint condition: "))
    end, {
        desc = "DAP Conditional Breakpoint",
    })

    vim.keymap.set("n", "<leader>dt", dap.terminate, {
        desc = "DAP Terminate",
    })

    vim.keymap.set("n", "<leader>dr", dap.restart, {
        desc = "DAP Restart",
    })

    vim.keymap.set("n", "<leader>de", function()
        dap.repl.open()
    end, {
        desc = "DAP REPL",
    })

    vim.keymap.set("n", "<leader>dc", function()
        dap.run_to_cursor()
    end, {
        desc = "DAP Run to Cursor",
    })

    vim.keymap.set("n", "<leader>dv", function()
        dap.evaluate()
    end, {
        desc = "DAP Evaluate",
    })
end
