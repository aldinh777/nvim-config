return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    vim.list_extend(opts.ensure_installed, { "prisma" })

    local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
    parser_config.prisma = {
      install_info = {
        url = "https://github.com/victorhqc/tree-sitter-prisma",
        files = { "src/parser.c" },
        branch = "main",
      },
      filetype = "prisma",
    }

    vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
      pattern = "*.prisma",
      callback = function()
        vim.bo.filetype = "prisma"
      end,
    })
  end,
}
