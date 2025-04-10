return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}

      vim.list_extend(opts.ensure_installed, {
        "typescript-language-server",
        "json-lsp",
        "eslint_d",
        "prettierd",
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      {
        "b0o/schemastore.nvim",
        lazy = true,
      },
    },
    opts = function(_, opts)
      local ok, schemastore = pcall(require, "schemastore")
      if ok then
        opts.servers = opts.servers or {}
        opts.servers.jsonls = {
          filetypes = { "json", "jsonc" },
          settings = {
            json = {
              validate = { enable = true },
              schemas = schemastore.json.schemas(),
              resultLimit = 10000,
            },
          },
        }
      end
    end,
  },
}
