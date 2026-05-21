---@param p TokenPalette
---@return table<string, vim.api.keyset.highlight>
local function mini(p)
  return {
    -- mini.statusline
    MiniStatuslineModeNormal = { fg = p.bg3, bg = p.fg2, italic = true },
    MiniStatuslineModeInsert = { fg = p.bg3, bg = p.green, italic = true },
    MiniStatuslineModeVisual = { fg = p.bg3, bg = p.accent2, italic = true },
    MiniStatuslineModeReplace = { fg = p.bg3, bg = p.red, italic = true },
    MiniStatuslineModeCommand = { fg = p.bg3, bg = p.yellow, italic = true },
    MiniStatuslineModeOther = { fg = p.bg3, bg = p.blue, italic = true },
    MiniStatuslineDevinfo = { fg = p.fg1, bg = p.bg4 },
    MiniStatuslineFilename = { fg = p.fg1, bg = p.bg2 },
    MiniStatuslineFileinfo = { fg = p.fg1, bg = p.bg4 },
    MiniStatuslineInactive = { fg = p.fg3, bg = p.bg1 },

    -- mini.icons
    MiniIconsAzure = { fg = p.cyan },
    MiniIconsBlue = { fg = p.blue },
    MiniIconsCyan = { fg = p.cyan },
    MiniIconsGreen = { fg = p.green },
    MiniIconsGrey = { fg = p.fg2 },
    MiniIconsOrange = { fg = p.accent },
    MiniIconsPurple = { fg = p.purple },
    MiniIconsRed = { fg = p.red },
    MiniIconsYellow = { fg = p.yellow },

    -- mini.clue
    MiniClueBorder = { fg = p.fg3, bg = p.bg0 },
    MiniClueDescGroup = { fg = p.blue },
    MiniClueDescSingle = { fg = p.fg0 },
    MiniClueNextKey = { fg = p.accent },
    MiniClueNextKeyWithPostkeys = { fg = p.accent, italic = true },
    MiniClueSeparator = { fg = p.fg3 },
    MiniClueTitle = { fg = p.accent, bg = p.bg0, italic = true },

    -- mini.surround
    MiniSurround = { fg = p.bg3, bg = p.accent },
  }
end

return mini
