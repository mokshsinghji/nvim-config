vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>pw", function () vim.cmd([[!pwsh -C "(pwd).Path | clip"]]) end)
vim.keymap.set("n", "j", "jzz")
vim.keymap.set("n", "k", "kzz")
vim.keymap.set("n", "<leader>y", "\"*y")
vim.keymap.set("n", "<leader>p", "\"*p")
