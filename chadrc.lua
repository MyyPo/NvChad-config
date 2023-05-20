---@type ChadrcConfig
local M = {}
M.ui = {
  theme = "catppuccin",
  changed_themes = {
    catppuccin = {
      base_30 = {
        light_grey = "#d3d3d3",
      },
    },
  },
  hl_override = {
    Comment = { fg = "light_grey" },
    Visual = { bg = "blue", fg = "black" },
    LineNr = { fg = "light_grey" },
    CursorLineNr = { fg = "red" },
    DiffChange = { fg = "orange" },
    DiffAdd = { fg = "green" },
  },
}

M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"
return M
