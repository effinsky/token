---@param p TokenPalette
---@return table<string, vim.api.keyset.highlight>
local function neogit(p)
  return {
    -- Graph colors
    NeogitGraphAuthor = { fg = p.accent },
    NeogitGraphRed = { fg = p.red },
    NeogitGraphWhite = { fg = p.fg0 },
    NeogitGraphYellow = { fg = p.yellow },
    NeogitGraphGreen = { fg = p.green },
    NeogitGraphCyan = { fg = p.cyan },
    NeogitGraphBlue = { fg = p.blue },
    NeogitGraphPurple = { fg = p.purple },
    NeogitGraphGray = { fg = p.fg3 },
    NeogitGraphOrange = { fg = p.accent },
    NeogitGraphBoldRed = { fg = p.red, italic = true },
    NeogitGraphBoldWhite = { fg = p.fg0, italic = true },
    NeogitGraphBoldYellow = { fg = p.yellow, italic = true },
    NeogitGraphBoldGreen = { fg = p.green, italic = true },
    NeogitGraphBoldCyan = { fg = p.cyan, italic = true },
    NeogitGraphBoldBlue = { fg = p.blue, italic = true },
    NeogitGraphBoldPurple = { fg = p.purple, italic = true },
    NeogitGraphBoldGray = { fg = p.fg3, italic = true },
    NeogitGraphBoldOrange = { fg = p.accent, italic = true },

    -- Diff file headers
    NeogitDiffHeader = { fg = p.blue, bg = p.bg4, italic = true },
    NeogitDiffHeaderHighlight = { fg = p.accent, bg = p.bg5, italic = true },

    -- Diff context
    NeogitDiffContext = { fg = p.fg1, bg = p.bg3 },
    NeogitDiffContextHighlight = { fg = p.fg0, bg = p.bg4 },
    NeogitDiffContextCursor = { fg = p.fg1, bg = p.bg3 },

    -- Diff add/delete
    NeogitDiffAdditions = { fg = p.green },
    NeogitDiffAdd = { fg = p.green, bg = p.diff_add },
    NeogitDiffAddHighlight = { fg = p.green, bg = p.diff_add, italic = true },
    NeogitDiffAddCursor = { fg = p.green, bg = p.bg3 },
    NeogitDiffDeletions = { fg = p.red },
    NeogitDiffDelete = { fg = p.red, bg = p.diff_del },
    NeogitDiffDeleteHighlight = { fg = p.red, bg = p.diff_del, italic = true },
    NeogitDiffDeleteCursor = { fg = p.red, bg = p.bg3 },
    NeogitDiffAddInline = { bg = p.diff_add_inline },
    NeogitDiffDeleteInline = { bg = p.diff_del_inline },

    -- Hunk headers
    NeogitHunkHeader = { fg = p.fg0, bg = p.bg4, italic = true },
    NeogitHunkHeaderHighlight = { fg = p.accent, bg = p.bg5, italic = true },
    NeogitHunkHeaderCursor = { fg = p.accent, bg = p.bg5, italic = true },
    NeogitHunkMergeHeader = { fg = p.fg0, bg = p.bg4, italic = true },
    NeogitHunkMergeHeaderHighlight = { fg = p.cyan, bg = p.bg5, italic = true },
    NeogitHunkMergeHeaderCursor = { fg = p.cyan, bg = p.bg5, italic = true },

    -- Branch/remote/tag
    NeogitBranch = { fg = p.accent },
    NeogitBranchHead = { fg = p.accent, italic = true, underline = true },
    NeogitRemote = { fg = p.blue },
    NeogitTagName = { fg = p.orange, italic = true },
    NeogitTagDistance = { fg = p.cyan },

    -- Status sections
    NeogitSectionHeader = { fg = p.accent, italic = true },
    NeogitSectionHeaderCount = { fg = p.fg2 },
    NeogitStatusHEAD = { fg = p.fg1, italic = true },
    NeogitObjectId = { fg = p.fg3 },
    NeogitStash = { fg = p.fg1 },
    NeogitRebaseDone = { fg = p.fg3 },
    NeogitUnmergedInto = { fg = p.purple, italic = true },
    NeogitUnpushedTo = { fg = p.accent },
    NeogitUnpulledFrom = { fg = p.blue },

    -- Change type indicators
    NeogitChangeModified = { fg = p.yellow },
    NeogitChangeAdded = { fg = p.green },
    NeogitChangeDeleted = { fg = p.red },
    NeogitChangeRenamed = { fg = p.purple },
    NeogitChangeNewFile = { fg = p.green },
    NeogitChangeUpdated = { fg = p.blue },
    NeogitChangeCopied = { fg = p.accent2 },
    NeogitChangeUnmerged = { fg = p.accent },

    -- Commit view
    NeogitCommitViewHeader = { fg = p.fg0, bg = p.bg5, italic = true },
    NeogitCommitViewDescription = { fg = p.fg1 },
    NeogitFilePath = { fg = p.blue, italic = true },

    -- Popup keys
    NeogitPopupSectionTitle = { fg = p.accent, italic = true },
    NeogitPopupBranchName = { fg = p.accent, italic = true },
    NeogitPopupBold = { italic = true },
    NeogitPopupSwitchKey = { fg = p.purple },
    NeogitPopupSwitchEnabled = { fg = p.green },
    NeogitPopupSwitchDisabled = { fg = p.fg3 },
    NeogitPopupOptionKey = { fg = p.purple },
    NeogitPopupOptionEnabled = { fg = p.green },
    NeogitPopupOptionDisabled = { fg = p.fg3 },
    NeogitPopupConfigKey = { fg = p.purple },
    NeogitPopupConfigEnabled = { fg = p.green },
    NeogitPopupConfigDisabled = { fg = p.fg3 },
    NeogitPopupActionKey = { fg = p.purple },
    NeogitPopupActionDisabled = { fg = p.fg3 },

    -- Command output
    NeogitCommandText = { fg = p.fg1 },
    NeogitCommandTime = { fg = p.fg3 },
    NeogitCommandCodeNormal = { fg = p.green },
    NeogitCommandCodeError = { fg = p.red },

    -- Subtle/dimmed text
    NeogitSubtleText = { fg = p.fg3 },

    -- Signature verification
    NeogitSignatureGood = { fg = p.green },
    NeogitSignatureBad = { fg = p.red },
    NeogitSignatureMissing = { fg = p.fg3 },
    NeogitSignatureNone = { fg = p.fg3 },
    NeogitSignatureGoodUnknown = { fg = p.yellow },
    NeogitSignatureGoodExpired = { fg = p.yellow },
    NeogitSignatureGoodExpiredKey = { fg = p.yellow },
    NeogitSignatureGoodRevokedKey = { fg = p.red },

    -- Float headers
    NeogitFloatHeader = { fg = p.fg1, bg = p.bg0, italic = true },
    NeogitFloatHeaderHighlight = { fg = p.cyan, bg = p.bg2, italic = true },

    -- Active item (currently viewed commit in log)
    NeogitActiveItem = { bg = p.bg5, italic = true },
  }
end

return neogit
