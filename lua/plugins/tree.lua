local g = vim.g

g.nvim_tree_quit_on_open = 0
g.nvim_tree_indent_markers = 1
g.nvim_tree_git_hl = 1
g.nvim_tree_highlight_opened_files = 1
g.nvim_tree_disable_window_picker = 1
g.nvim_tree_respect_buf_cwd = 1
g.nvim_tree_width_allow_resize  = 1
g.nvim_tree_show_icons = {
  git = 1,
  folders = 1,
  files = 1
}

g.nvim_tree_icons = {
	default = "‣ "
}

local status_ok, nvim_tree = pcall(require, 'nvim-tree')
if not status_ok then
  return
end

nvim_tree.setup {
  open_on_setup = true,
  update_cwd = true,
  update_focused_file = {
    enable = true,
    update_cwd = true
  },
  view = {
    width = 32,
    auto_resize = true,
    hide_root_folder = true,
  },
  filters = {
    dotfiles = true,
    custom = { '.git', 'node_modules', '.cache', '.bin' },
  },
  git = {
    enable = true,
    ignore = true,
  },
}

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<C-n>', ':NvimTreeToggle<CR>', opts)
map('n', '<leader>r', ':NvimTreeRefresh<CR>', opts)
map('n', '<leader>n', ':NvimTreeFindFile<CR>', opts)
