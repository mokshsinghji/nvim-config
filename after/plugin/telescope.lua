local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', function() builtin.find_files({ hidden = true, file_ignore_patterns={"node_modules", ".git"}}) end, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>fs', function ()
	builtin.grep_string({search = vim.fn.input("Grep > ")})
end)


