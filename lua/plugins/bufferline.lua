return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  opts = function()
    local p = require("kinda_nvimd.palette")
    -- like the helix bufferline: active buffer on bg_3, everything else on the editor bg
    local names = {
      "background", "buffer", "close_button", "numbers", "diagnostic", "hint", "hint_diagnostic",
      "info", "info_diagnostic", "warning", "warning_diagnostic", "error", "error_diagnostic",
      "modified", "duplicate", "pick", "separator", "indicator",
    }
    local highlights = { fill = { bg = p.bg }, tab = { fg = p.fg_4, bg = p.bg }, tab_selected = { fg = p.fg_primary, bg = p.bg_3, bold = true } }
    for _, name in ipairs(names) do
      highlights[name .. "_selected"] = { bg = p.bg_3 }
      highlights[name .. "_visible"] = { bg = p.bg }
      if name ~= "indicator" then highlights[name] = { bg = p.bg } end
    end
    highlights.background.fg = p.fg_4
    highlights.buffer_visible.fg = p.fg_4
    highlights.buffer_selected = { fg = p.fg_primary, bg = p.bg_3, bold = true, italic = false }
    highlights.indicator_selected.fg = p.fg_primary
    for _, name in ipairs({ "separator", "separator_visible", "separator_selected" }) do
      highlights[name].fg = p.bg
    end
    return { highlights = highlights }
  end,
}
