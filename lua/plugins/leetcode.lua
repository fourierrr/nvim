local leet_arg = "leetcode.nvim"

return {
  {
    "kawre/leetcode.nvim",
    lazy = vim.fn.argv(0) ~= leet_arg,
    cmd = "Leet",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "folke/snacks.nvim",
      "3rd/image.nvim",
    },
    opts = {
      arg = leet_arg,
      lang = "golang",
      image_support = true,
      cn = {
        enabled = true, -- Set false to use leetcode.com instead.
        translator = true,
        translate_problems = true,
      },
      picker = { provider = "snacks-picker" },
      plugins = { non_standalone = true },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = { ensure_installed = { "html" } },
  },
}
