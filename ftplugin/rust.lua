vim.opt_local.relativenumber = true
-- set ;; as ::
vim.keymap.set("i", ";;", "::", { buffer = true, noremap = true })
-- set -- as ->
vim.keymap.set("i", "--", "->", { buffer = true, noremap = true })
