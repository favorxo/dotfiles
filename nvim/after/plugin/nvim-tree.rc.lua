require("nvim-tree").setup()

vim.keymap.set("n", "<C-b>", "<cmd>:NvimTreeToggle<cr>", { silent = true, noremap =true })
vim.api.nvim_create_autocmd("BufEnter", {
  nested = true,
  callback = function()
    if #vim.api.nvim_list_wins() == 1 and vim.api.nvim_buf_get_name(0):match("NvimTree_") ~= nil then
      vim.cmd "quit"
    end
  end
})

-- OR setup with some options
require("nvim-tree").setup({
  disable_netrw = true,
  hijack_netrw = true,
  open_on_setup = true,
  update_cwd = true,
  actions = {
    open_file = {
      quit_on_open = true,
   },
  },
  diagnostics = {
    enable = true,
  },
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
    side = "right",
  },
  renderer = {
    group_empty = true,
    add_trailing = true,
    indent_markers = {
      enable = true
    },
    icons = {
      show = {
        git = false
      }
    }
  },
  filters = {
    dotfiles = false,
  },
})

