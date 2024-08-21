return {
	"vim-test/vim-test",
	config = function()
		vim.cmd([[
        " let g:test#strategy = 'vimux'
        let g:test#strategy = 'neovim'
      ]])
	end,
	keys = {
		{ "<leader>Tf", "<cmd>TestFile<cr>", silent = true, desc = "Run this file" },
		{ "<leader>Tn", "<cmd>TestNearest<cr>", silent = true, desc = "Run nearest test" },
		{ "<leader>Ta", "<cmd>TestSuite<cr>", silent = true, desc = "Run suite test" },
		{ "<leader>Tl", "<cmd>TestLast<cr>", silent = true, desc = "Run last test" },
	},
}
