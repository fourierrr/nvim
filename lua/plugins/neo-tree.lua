return {
  "nvim-neo-tree/neo-tree.nvim",
  cmd = "Neotree",
  keys = {
    {
      "ff",
      function()
        require("neo-tree.command").execute({ toggle = true, dir = LazyVim.root() })
      end,
      desc = "Explorer NeoTree (Root Dir)",
    },
    -- {
    --   "<leader>fE",
    --   function()
    --     require("neo-tree.command").execute({ toggle = true, dir = vim.uv.cwd() })
    --   end,
    --   desc = "Explorer NeoTree (cwd)",
    -- },
    -- { "<leader>e", "<leader>fe", desc = "Explorer NeoTree (Root Dir)", remap = true },
    -- { "<leader>E", "<leader>fE", desc = "Explorer NeoTree (cwd)", remap = true },
    { "<leader>fe", false },
    { "<leader>fE", false },
    { "<leader>ge", false },
    { "<leader>be", false },
  },
  opts = {
    sources = { "filesystem", "buffers", "git_status" },
    open_files_do_not_replace_types = { "terminal", "Trouble", "trouble", "qf", "Outline" },
    filesystem = {
      bind_to_cwd = true,
      follow_current_file = { enabled = true },
      use_libuv_file_watcher = true,
      commands = {
        avante_add_files = function(state)
          local node = state.tree:get_node()
          local filepath = node:get_id()
          local relative_path = require("avante.utils").relative_path(filepath)

          local sidebar = require("avante").get()

          local open = sidebar:is_open()
          -- 确保 avante 侧边栏已打开
          if not open then
            require("avante.api").ask()
            sidebar = require("avante").get()
          end

          sidebar.file_selector:add_selected_file(relative_path)

          -- 删除 neo tree 缓冲区
          if not open then
            sidebar.file_selector:remove_selected_file("neo-tree filesystem [1]")
          end
        end,
      },
    },
    window = {
      mappings = {
        -- key 'ff' for toggle NeotreeOpen
        ["f"] = "",
        ["oa"] = "avante_add_files",
      },
    },
  },
}
