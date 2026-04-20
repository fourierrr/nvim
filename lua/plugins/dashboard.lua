return {
  "nvimdev/dashboard-nvim",
  lazy = false,
  opts = function(_, opts)
    local logo = [[

      █████╗ ██╗     ██╗██████╗  █████╗ ██████╗  █████╗
     ██╔══██╗██║     ██║██╔══██╗██╔══██╗██╔══██╗██╔══██╗
     ███████║██║     ██║██████╔╝███████║██████╔╝███████║
     ██╔══██║██║     ██║██╔══██╗██╔══██║██╔══██╗██╔══██║
     ██║  ██║███████╗██║██████╔╝██║  ██║██████╔╝██║  ██║
     ╚═╝  ╚═╝╚══════╝╚═╝╚═════╝ ╚═╝  ╚═╝╚═════╝ ╚═╝  ╚═╝

    ]]

    opts.config = opts.config or {}
    opts.config.header = vim.split(string.rep("\n", 8) .. logo .. "\n\n", "\n")
    if opts.config.center then
      opts.config.center = vim.tbl_filter(function(item)
        return item.key ~= "s"
      end, opts.config.center)
    end
    return opts
  end,
}
