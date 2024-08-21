return { -- Autoformat
  "stevearc/conform.nvim",
  opts = {
    notify_on_error = false,
    -- format_on_save = {
      -- timeout_ms = 500,
      -- lsp_fallback = true,
    -- },
    formatters_by_ft = {
      lua = { "stylua" },
      javascript = { { "prettierd", "prettier" }, { "eslint_d", "eslint" } },
      typescript = { { "prettierd", "prettier" }, { "eslint_d", "eslint" } },
      -- Conform can also run multiple formatters sequentially
      python = { "isort", "black" },
      go = { "goimports", "gofumpt" },
      json =  {"jq"},
      sh = {"shellharden"},
      yaml = {"yq"},
      markdown = {"prettierd"}
      --
      -- You can use a sub-list to tell conform to run *until* a formatter
      -- is found.
      -- javascript = { { "prettierd", "prettier" } },
    },
  },
}
