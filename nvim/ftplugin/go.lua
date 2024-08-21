local keymap = vim.keymap

keymap.set("n", "<leader>db", "<cmd>DapToggleBreakpoint<cr>", { desc = "[D]ap [B]reakpoint" })
keymap.set("n", "<leader>dsb", function()
	local widgets = require("dap.ui.widgets")
	local sidebar = widgets.sidebar(widgets.scopes)
end, { desc = "[D]ap [S]ide[b]ar" })

keymap.set("n", "<leader>dgt", function()
	require("dap-go").debug_test()
end, { desc = "[D]ap [G]o [T]est" })

keymap.set("n", "<leader>dgl", function()
	require("dap-go").debug_last_test()
end, { desc = "[D]ap [G]o [L]ast test" })

keymap.set("n", "<leader>gaj", "<CMD>GoTagAdd json<CR>", { desc = "[G]o [A]dd [J]son" })
keymap.set("n", "<leader>gay", "<CMD>GoTagAdd yaml<CR>", { desc = "[G]o [A]dd [Y]aml" })
keymap.set("n", "<leader>gai", "<CMD>GoIfErr<CR>", { desc = "[G]o [A]dd [E]rr" })
