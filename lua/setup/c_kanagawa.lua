require('kanagawa').setup({
    undercurl = true,           -- enable undercurls
    commentStyle = "italic",
    functionStyle = "italic,bold",
    keywordStyle = "italic",
    statementStyle = "bold",
    -- typeStyle = "NONE",
    typeStyle = "italic",
    variablebuiltinStyle = "italic",
    specialReturn = true,       -- special highlight for the return keyword
    specialException = true,    -- special highlight for exception handling keywords 
    transparent = false,        -- do not set background color
    dimInactive = false,        -- dim inactive window `:h hl-NormalNC`
    colors = {},
    overrides = {},
})

