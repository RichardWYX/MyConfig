-- nvimtree,快捷键tt打开关闭
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "h", action = "dir_up" },
        { key = "l", action = "edit" },
        { key = "<CR>", action = "cd" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false,
  },
  git = {
      enable = true
  }
})
