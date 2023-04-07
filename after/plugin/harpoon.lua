local mark = require("harpoon.mark")
local ui = require("harpoon.ui")


vim.keymap.set('n', '<leader>ah', mark.add_file)
vim.keymap.set('n', '<leader>lh', ui.toggle_quick_menu)
vim.keymap.set('n', '<leader>fh', ui.nav_next)
vim.keymap.set('n', '<leader>bh', ui.nav_prev)
vim.keymap.set('n', '<leader>th', function() vim.cmd("Telescope harpoon marks") end)
