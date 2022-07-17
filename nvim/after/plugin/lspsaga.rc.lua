local saga = require 'lspsaga'

vim.keymap.set("n", "[e", require("lspsaga.diagnostic").goto_prev, { silent = true, noremap =true })
vim.keymap.set("n", "]e", require("lspsaga.diagnostic").goto_next, { silent = true, noremap =true })
vim.keymap.set("n", "<F2>", "<cmd>Lspsaga rename<CR>", { silent = true,noremap = true })
vim.keymap.set("n", "gs", require("lspsaga.signaturehelp").signature_help, { silent = true,noremap = true})
vim.keymap.set("n", "gh", "<cmd>Lspsaga lsp_finder<CR>", { silent = true,noremap = true})

saga.init_lsp_saga({
  border_style = "rounded",
  diagnostic_header = { "😡", "😥", "😤", "😐" },
  show_diagnostic_source = false,
  finder_icons = {
    def = '  ',
    ref = '諭 ',
    link = '  ',
  },
})

