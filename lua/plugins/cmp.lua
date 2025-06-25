return {
  "Saghen/blink.cmp",
  version = "*",
  opts = function(_, opts)
    opts.keymap = opts.keymap or {}
    opts.keymap["<C-_>"] = { "show" }
    opts.keymap["<Tab>"] = { "accept", "fallback" }
    opts.keymap["<Esc>"] = { "hide", "fallback" }

    opts.completion = opts.completion or {}
    opts.completion.list = opts.completion.list or {}
    opts.completion.list.selection = {
      preselect = false,
      auto_insert = false,
    }
  end,
}
