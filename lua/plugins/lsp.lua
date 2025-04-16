return {
  "neovim/nvim-lspconfig",
  dependencies = {
    {
      "williamboman/mason.nvim",
      config = true,
    },
    {
      "williamboman/mason-lspconfig.nvim",
      config = function()
        local config = require("mason-lspconfig")
        config.setup({
          ensure_installed = { "lua_ls", "ts_ls" },
          automatic_installation = true
        })
      end,
    },
  },
  config = function()
    local mason = require("mason")
    local masonlspconfig = require("mason-lspconfig")
    local lspconfig = require("lspconfig")

    local servers = { "lua_ls", "ts_ls" }

    mason.setup()
    masonlspconfig.setup()

    for _, server in ipairs(servers) do
      lspconfig[server].setup({})
    end
  end
}
