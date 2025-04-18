return {
  "stevearc/conform.nvim",
  opts = function(_, opts)
    opts.formatters_by_ft = vim.tbl_extend("force", opts.formatters_by_ft or {}, {
      json = { "prettierd" },
      jsonc = { "prettierd" },
      markdown = { "prettierd" },
      yaml = { "prettierd" },
    })
  end,
}
