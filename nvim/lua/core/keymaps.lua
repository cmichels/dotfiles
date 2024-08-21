vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>pv", "<cmd>Oil<cr>", { desc = "netrw" })

keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Remove highlight" })
keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = "[F]ormat file" })

-- Disable arrows
keymap.set("n", "<left>", '<cmd>echo "Use h"<CR>')
keymap.set("n", "<right>", '<cmd>echo "Use l"<CR>')
keymap.set("n", "<down>", '<cmd>echo "Use j"<CR>')
keymap.set("n", "<up>", '<cmd>echo "Use k"<CR>')

-- Ctrl+<hjkl> split panes
keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move to left split" })
keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move to lower split" })
keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move to upper split" })
keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move to right split" })

-- buffers
keymap.set("n", "<leader>bc", "<CMD>:bdelete<CR>", { desc = "[B]uffer [C]lose" })
keymap.set("n", "<leader>bp", "<CMD>:bprevious<CR>", { desc = "[B]uffer [P]revious" })
keymap.set("n", "<leader>bn", "<CMD>:bnext<CR>", { desc = "[B]uffer [N]ext" })
keymap.set("n", "<leader>w", "<CMD>:w<CR>", { desc = "[W]rite" })
keymap.set("n", "<leader>q", "<CMD>:q<CR>", { desc = "[Q]uit" })


-- Harpoon
local harpoon = require("harpoon")
harpoon:setup()
keymap.set("n", "<leader>a", function()
	harpoon:list():add()
end, { desc = "Harpoon [a]dd to list" })
keymap.set("n", "<C-e>", function()
	harpoon.ui:toggle_quick_menu(harpoon:list())
end, { desc = "[E]xplore Harpoon" })

keymap.set("n", "<leader>ha", function()
	harpoon:list():select(1)
end, { desc = "[H]arpoon Show 1" })
keymap.set("n", "<leader>hs", function()
	harpoon:list():select(2)
end, { desc = "[H]arpoon Show 2" })
keymap.set("n", "<leader>hd", function()
	harpoon:list():select(3)
end, { desc = "[H]arpoon Show 3" })
keymap.set("n", "<leader>hf", function()
	harpoon:list():select(4)
end, { desc = "[H]arpoon Show 4" })

-- Toggle previous & next buffers stored within Harpoon list
keymap.set("n", "<leader>hp", function()
	harpoon:list():prev()
end, { desc = "[H]arpoon [P]revious" })
keymap.set("n", "<leader>hn", function()
	harpoon:list():next()
end, { desc = "[H]arpoon [N]ext" })

-- codesnap
keymap.set("n", "<leader>cs", ":CodeSnap")

-- gitsigns
keymap.set("n", "<leader>tb", ":Gitsigns toggle_current_line_blame<CR>")
