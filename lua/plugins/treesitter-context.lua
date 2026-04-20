return {
  "nvim-treesitter/nvim-treesitter-context",
  event = "LazyFile",
  opts = {
    max_lines = 3,
    mode = "cursor",
    multiline_threshold = 3,
  },
  keys = {
    {
      "[c",
      function()
        require("treesitter-context").go_to_context(vim.v.count1)
      end,
      desc = "Go to Context",
      silent = true,
    },
  },
}
