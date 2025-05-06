return {
  "petertriho/nvim-scrollbar",
  dependencies = { "lewis6991/gitsigns.nvim" },
  config = function()
    require("scrollbar").setup({
      excluded_filetypes = {
        "snacks",
        "neo-tree",
        "NvimTree",
        "Outline",
        "terminal",
        "prompt",
      },
      excluded_buftypes = {
        "terminal",
        "nofile",
        "prompt",
      },
    })
    require("scrollbar.handlers.gitsigns").setup()
  end,
}
