return {              -- Useful plugin to show you pending keybinds.
  "folke/which-key.nvim",
  event = "VimEnter", -- Sets the loading event to 'VimEnter'
  config = function() -- This is the function that runs, AFTER loading
    require("which-key").setup()

    -- Document existing key chains
    require("which-key").add({
      { "<leader>T",   desc = "[T]est" },
      { "<leader>c",   desc = "[C]ode" },
      { "<leader>d",   desc = "[D]ap" },
      { "<leader>g",   desc = "[G]o" },
      { "<leader>ga",  desc = "[A]dd" },
      { "<leader>h",   desc = "Git [H]unk" },
      { "<leader>r",   desc = "[R]ename" },
      { "<leader>s",   desc = "[S]earch" },
      { "<leader>t",   desc = "[T]oggle" },
      { "<leader>w",   desc = "[W]orkspace" },
    })
  end,
}
