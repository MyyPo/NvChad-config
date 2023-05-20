local M = {}

M.general = {
  n = {
    ["J"] = {
      "mzJ`z",
    },
    ["<C-d>"] = {
      "<C-d>zz",
    },
    ["<C-u>"] = {
      "<C-u>zz",
    },
    ["n"] = {
      "nzzzv",
    },
    ["N"] = {
      "Nzzzv",
    },
    ["<leader>s"] = {
      [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
    },
  },
  v = {
    ["J"] = {
      ":m '>+1<CR>gv=gv",
    },
    ["K"] = {
      ":m '<-2<CR>gv=gv",
    },
  },
  x = {
    ["<leader>p"] = {
      '"_dP',
    },
  },
}

M.nvterm = {
  n = {
    ["<leader>tt"] = {
      "<cmd> Telescope terms <CR>",
      "Open hidden term",
    },
  },
}

M.disabled = {
  n = {
    ["<leader>pt"] = "",
    ["<leader>th"] = "",
    ["Q"] = "",
  },
}

M.dap = {
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Toggle breakpoint",
    },
    ["<leader>dus"] = {
      function()
        local widgets = require "dap.ui.widgets"
        local sidebar = widgets.sidebar(widgets.scopes)
        sidebar.open()
      end,
    },
  },
}

M.dap_go = {
  plugin = true,
  n = {
    ["<leader>dgt"] = {
      function()
        require("dap-go").debug_test()
      end,
      "Debug go test",
    },
    ["<leader>dgl"] = {
      function()
        require("dap-go").debug_last()
      end,
      "Debug last go test",
    },
  },
}

M.gopher = {
  plugin = true,
  n = {
    ["<leader>ggsj"] = {
      "<cmd> GoTagAdd json <CR>",
      "Add json struct tags",
    },
    ["<leader>ggsy"] = {
      "<cmd> GoTagAdd yaml <CR>",
      "Add yaml struct tags",
    },
  },
}

M.crates = {
  n = {
    ["<leader>rcu"] = {
      function()
        require("crates").upgrade_all_crates()
      end,
      "update crates",
    },
  },
}

return M
