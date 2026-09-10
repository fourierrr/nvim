local map = vim.keymap.set

map("i", "jk", "<esc>", { desc = "Exit Insert", silent = true })
map("n", "<leader>q", "<cmd>q<cr>", { desc = "Quit", silent = true })

map("n", "<leader>f", LazyVim.pick("files"), { desc = "Find Files (Root Dir)" })
map("n", "<leader>t", LazyVim.pick("live_grep"), { desc = "Grep (Root Dir)" })
map("n", "<leader>o", LazyVim.pick("oldfiles"), { desc = "Recent Files" })
map("n", "ge", LazyVim.pick("diagnostics"), { desc = "Diagnostics" })
map("n", "gE", function()
  vim.diagnostic.open_float(0, { scope = "line", border = "rounded" })
end, { desc = "Line Diagnostics" })

map("n", "<leader>j", "<cmd>HopWord<cr>", { desc = "Hop Word" })
map("n", "gh", vim.lsp.buf.hover, { desc = "Hover" })

map({ "n", "v" }, "fm", function()
  LazyVim.format({ force = true })
end, { desc = "Format" })

map("n", "<F4>", function()
  require("dap").terminate()
end, { desc = "DAP Terminate" })
map("n", "<F5>", function()
  require("dap").continue()
end, { desc = "DAP Continue" })
map("n", "<F6>", function()
  require("dap").step_over()
end, { desc = "DAP Step Over" })
map("n", "<F7>", function()
  require("dap").step_into()
end, { desc = "DAP Step Into" })
map("n", "<F8>", function()
  require("dap").step_out()
end, { desc = "DAP Step Out" })
map("n", "<F9>", function()
  require("dap").run_last()
end, { desc = "DAP Run Last" })
map("n", "<leader>b", function()
  require("dap").toggle_breakpoint()
end, { desc = "Toggle Breakpoint" })

map({ "n", "x" }, "<leader>gY", function()
  Snacks.gitbrowse({
    open = function(url)
      vim.fn.setreg("+", url)
    end,
    notify = false,
  })
end, { desc = "Git Browse (copy)" })

Snacks.toggle.option("showtabline", {
  off = 0,
  on = vim.o.showtabline > 0 and vim.o.showtabline or 2,
  name = "Tabline",
}):map("<leader>uA")
Snacks.toggle.dim():map("<leader>uD")
Snacks.toggle.animate():map("<leader>ua")
Snacks.toggle.indent():map("<leader>ug")
Snacks.toggle.scroll():map("<leader>uS")
Snacks.toggle.zoom():map("<leader>uZ")
Snacks.toggle.zen():map("<leader>uz")
Snacks.toggle.profiler():map("<leader>dpp")
Snacks.toggle.profiler_highlights():map("<leader>dph")
