vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>pw", function () vim.cmd([[!pwsh -C "(pwd).Path | clip"]]) end)
