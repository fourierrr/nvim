return {
  "leoluz/nvim-dap-go",
  opts = {
    dap_configurations = {
      {
        type = "go",
        name = "Debug Package (with arguments)",
        request = "launch",
        program = "${fileDirname}",
        args = require("dap-go").get_arguments,
      },
    },
  },
}
