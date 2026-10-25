-- lualine theme for the kinda_nvimd colorscheme
-- Matches the helix statusline: mode name colored, everything else on the editor bg
local p = require("kinda_nvimd.palette")

local function mode(color)
  return {
    a = { fg = p.bg, bg = color, gui = "bold" },
    b = { fg = color, bg = p.bg_3 },
    c = { fg = p.fg, bg = p.bg },
  }
end

return {
  normal = mode(p.fg_primary),
  insert = mode(p.fg_secondary),
  visual = mode(p.fg_tertiary),
  replace = mode(p.fg_err),
  command = mode(p.fg_warn),
  terminal = mode(p.fg_hint),
  inactive = {
    a = { fg = p.fg_4, bg = p.bg },
    b = { fg = p.fg_4, bg = p.bg },
    c = { fg = p.fg_4, bg = p.bg },
  },
}
