function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end

local telescope = require('telescope')
local actions = require('telescope.actions')
local builtin = require('telescope.builtin')

vim.keymap.set("n", ";f", builtin.find_files, { silent = true,noremap = true })
vim.keymap.set("n", ";r", builtin.live_grep, { silent = true,noremap = true })
vim.keymap.set("n", ";e", builtin.diagnostics, { silent = true,noremap = true })
vim.keymap.set("n", "\\", builtin.buffers, { silent = true,noremap = true })

telescope.setup({
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close,
      },
    },
  }
})

