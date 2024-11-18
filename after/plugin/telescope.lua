local builtin = require('telescope.builtin')

-- general fuzzy finding 
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
