vim.o.background = "dark"
vim.cmd("hi clear")

if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end
vim.o.t_Co = 255
vim.g.colors_name = "default-colors-plus"

-- group-name
vim.api.nvim_create_autocmd("ColorScheme",{

pattern = "*",
callback = function() 


  vim.api.nvim_set_hl(0, "Comment", { ctermfg = 110})
vim.api.nvim_set_hl(0, "Constant", {  ctermfg = 210})
vim.api.nvim_set_hl(0, "Identifier", { ctermfg = 87})
vim.api.nvim_set_hl(0, "Statement", { ctermfg = 227})
vim.api.nvim_set_hl(0, "PreProc", { ctermfg = 213})
vim.api.nvim_set_hl(0, "Type", {  ctermfg = 120})
vim.api.nvim_set_hl(0, "Special", {  ctermfg = 214})
vim.api.nvim_set_hl(0, "Underlined", {term = "underline", cterm = "underline"})
vim.api.nvim_set_hl(0, "Ignore", { ctermfg = 17})
vim.api.nvim_set_hl(0, "Todo", {  ctermfg = 196, ctermbg = 25})

vim.api.nvim_set_hl(0, "Normal", { ctermfg = 253, ctermbg = 0})
vim.cmd("hi link ErrorMsg Error")

-- highlight-groups
vim.api.nvim_set_hl(0, "Cursor", { ctermfg = 16, ctermbg = "yellow"})
vim.api.nvim_set_hl(0, "lCursor", { ctermfg = 16, ctermbg = 231})
vim.api.nvim_set_hl(0, "Title", { ctermfg = 201, ctermbg = 17})
vim.api.nvim_set_hl(0, "Visual", { ctermfg = 231, ctermbg = 111})
vim.api.nvim_set_hl(0, "VisualNOS", { ctermfg = 231, ctermbg = 111})
vim.api.nvim_set_hl(0, "Search", {ctermfg = 16, ctermbg = 227})
vim.api.nvim_set_hl(0, "IncSearch", {ctermfg = 16, ctermbg = 187})
vim.api.nvim_set_hl(0, "CursorColumn", {})
vim.api.nvim_set_hl(0, "LineNr", { ctermfg = 118, ctermbg = 0})
vim.api.nvim_set_hl(0, "CursorLine", {term = "underline", cterm = "underline"})
vim.api.nvim_set_hl(0, "CursorLineNr", {term = "bold", cterm = "bold", ctermfg = 227})
vim.api.nvim_set_hl(0, "StatusLine", { ctermfg = 21, ctermbg = 248})
vim.api.nvim_set_hl(0, "StatusLineNC", { ctermfg = 16, ctermbg = 248})
vim.api.nvim_set_hl(0, "VertSplit", { ctermfg = 16, ctermbg = 248})
vim.api.nvim_set_hl(0, "SignColumn", {ctermbg = 243})
vim.api.nvim_set_hl(0, "Folded", {ctermfg = 102, ctermbg = 233})
vim.api.nvim_set_hl(0, "FoldColumn", { ctermfg = 102, ctermbg = 233})
vim.api.nvim_set_hl(0, "Pmenu", {  ctermfg = 231, ctermbg = 16})
vim.api.nvim_set_hl(0, "PmenuSel", {ctermfg = 231, ctermbg = 240})
vim.api.nvim_set_hl(0, "PmenuSbar", {ctermbg = 241})
vim.api.nvim_set_hl(0, "PmenuThumb", { ctermfg = 252})
vim.api.nvim_set_hl(0, "WildMenu", { ctermfg = 226, ctermbg = 16})
vim.api.nvim_set_hl(0, "MatchParen", {ctermbg = 240})
vim.api.nvim_set_hl(0, "Directory", { ctermfg = 51})
vim.api.nvim_set_hl(0, "Question", { ctermfg = 46})











vim.api.nvim_set_hl(0, "EndOfBuffer", { ctermfg = 243})
vim.api.nvim_set_hl(0, "SpecialKey", { ctermfg = 51})
vim.api.nvim_set_hl(0, "NonText", { ctermfg = 19})
vim.api.nvim_set_hl(0, "WarningMsg", {ctermfg = 196, ctermbg = 17})
vim.api.nvim_set_hl(0, "ModeMsg", { ctermfg = 51})
vim.api.nvim_set_hl(0, "MoreMsg", {ctermfg = 51})
vim.api.nvim_set_hl(0, "DiffAdd", {ctermbg = 22})
vim.api.nvim_set_hl(0, "DiffChange", {ctermbg = 22})
vim.api.nvim_set_hl(0, "DiffDelete", {ctermbg = 89})
vim.api.nvim_set_hl(0, "DiffText", {ctermbg = 28})
vim.api.nvim_set_hl(0, "Error", {ctermfg = 196, ctermbg = 17})
end,
})
