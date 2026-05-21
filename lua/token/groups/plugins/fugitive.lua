---@param p TokenPalette
---@return table<string, vim.api.keyset.highlight>
local function fugitive(p)
  return {
    -- vim-fugitive (status buffer)
    fugitiveHeader = { fg = p.accent2, italic = true },
    fugitiveHelpHeader = { link = 'fugitiveHeader' },
    fugitiveHelpTag = { fg = p.fg2 },
    fugitiveHeading = { fg = p.accent, italic = true },
    fugitiveUntrackedHeading = { fg = p.fg2, italic = true },
    fugitiveUnstagedHeading = { fg = p.yellow, italic = true },
    fugitiveStagedHeading = { fg = p.green, italic = true },
    fugitiveCount = { fg = p.fg2 },
    fugitiveModifier = { fg = p.blue },
    fugitiveUntrackedModifier = { fg = p.fg3 },
    fugitiveUnstagedModifier = { fg = p.yellow },
    fugitiveStagedModifier = { fg = p.green },
    fugitiveInstruction = { fg = p.accent2 },
    fugitiveStop = { fg = p.red, italic = true },
    fugitiveHash = { fg = p.fg3 },
    fugitiveSymbolicRef = { fg = p.accent },

    -- vim-fugitive (blame buffer)
    FugitiveblameBoundary = { fg = p.accent2 },
    FugitiveblameHash = { fg = p.fg3 },
    FugitiveblameBoundaryIgnore = { link = 'Ignore' },
    FugitiveblameUncommitted = { link = 'Ignore' },
    FugitiveblameScoreDebug = { link = 'Debug' },
    FugitiveblameTime = { fg = p.fg2 },
    FugitiveblameLineNumber = { fg = p.fg3 },
    FugitiveblameOriginalFile = { fg = p.fg2 },
    FugitiveblameOriginalLineNumber = { fg = p.fg3 },
    FugitiveblameShort = { link = 'FugitiveblameDelimiter' },
    FugitiveblameDelimiter = { fg = p.fg3 },
    FugitiveblameNotCommittedYet = { link = 'Comment' },
  }
end

return fugitive
