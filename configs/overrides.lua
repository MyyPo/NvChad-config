local M = {}

M.nvimtree = {
  git = {
    enable = true,
    timeout = 800,
  },
  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
  filters = {
    dotfiles = true,
  },
}

return M
