---@param p TokenPalette
---@return table<string, vim.api.keyset.highlight>
local function mason(p)
  return {
    MasonHeader = { fg = p.bg3, bg = p.accent, italic = true },
    MasonHeaderSecondary = { fg = p.bg3, bg = p.accent2, italic = true },
    MasonHighlight = { fg = p.accent },
    MasonHighlightBlock = { fg = p.bg3, bg = p.accent },
    MasonHighlightBlockBold = { fg = p.bg3, bg = p.accent, italic = true },
    MasonHighlightSecondary = { fg = p.accent2 },
    MasonHighlightBlockSecondary = { fg = p.bg3, bg = p.accent2 },
    MasonHighlightBlockBoldSecondary = { fg = p.bg3, bg = p.accent2, italic = true },
    MasonMuted = { fg = p.fg2 },
    MasonMutedBlock = { fg = p.fg2, bg = p.bg4 },
    MasonMutedBlockBold = { fg = p.fg2, bg = p.bg4, italic = true },
    MasonError = { fg = p.red },
    MasonWarning = { fg = p.yellow },
    MasonLink = { fg = p.blue, underline = true },
  }
end

return mason
