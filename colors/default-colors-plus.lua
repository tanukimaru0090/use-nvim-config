vim.o.background = "dark"
vim.cmd("hi clear")

if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end
vim.o.t_Co = 255
vim.g.colors_name = "default-colors-plus"



vim.cmd("hi Comment gui=none guifg=#80a0ff term=none cterm=none ctermfg=110")

vim.cmd("hi Constant gui=none guifg=#ff8787 term=none cterm=none ctermfg=210")


vim.cmd("hi Identifier gui=none guifg=#5fffff term=none cterm=none ctermfg=87")

vim.cmd("hi Statement gui=none guifg=#ffff5f term=none cterm=none ctermfg=227")

-- hi Conditional
-- hi Repeat
-- hi Label
-- hi Operator
--hi Keyword
-- hi Exception

vim.cmd("hi PreProc gui=none guifg=#ff87ff term=none cterm=none ctermfg=213")

-- hi Include
-- hi Define
-- hi Macro
-- hi PreCondit

vim.cmd("hi Type  gui=none guifg=#60ff60 term=none cterm=none ctermfg=120")

-- hi StorageClass term=bold cterm=bold ctermfg=89 gui=bold guifg=#87005f
-- hi Structure term=bold cterm=bold ctermfg=89 gui=bold guifg=#87005f
-- hi Typedef term=bold cterm=bold ctermfg=89 gui=bold guifg=#87005f

vim.cmd("hi Special gui=none guifg=#ff8700 term=none cterm=none ctermfg=214")

-- hi SpecialChar
-- hi Tag
-- hi Delimiter
-- hi SpecialComment
-- hi Debug

vim.cmd("hi Underlined	gui=underline term=underline cterm=underline ")
vim.cmd("hi Ignore	guifg=bg ctermfg=17")

vim.cmd("hi Todo gui=none guifg=#ff0000 guibg=#005faf term=none cterm=none  ctermfg=196	ctermbg=25")

vim.cmd("hi Normal gui=none guifg=#dadada guibg=#000000 term=none cterm=none ctermfg=253 ctermbg=0")
vim.cmd("hi link ErrorMsg Error")

-- highlight-groups
vim.cmd("hi Cursor guifg=#000000 guibg=yellow ctermfg=16 ctermbg=yellow")

vim.cmd("hi lCursor guifg=#000000 guibg=#ffffff ctermfg=16 ctermbg=231")


vim.cmd("hi Title gui=none guifg=#ff00d7 guibg=#00005f term=none cterm=none ctermfg=201 ctermbg=17")

vim.cmd("hi Visual gui=none guifg=#ffffff guibg=#87afff term=none cterm=none ctermfg=231 ctermbg=111")

vim.cmd("hi VisualNOS gui=none guifg=#ffffff guibg=#87afff term=none cterm=none ctermfg=231 ctermbg=111")

vim.cmd("hi Search gui=none guibg=#ffff80 term=none cterm=none ctermfg=16 ctermbg=227")

vim.cmd("hi IncSearch gui=none guibg=#d7d7af term=none cterm=none ctermfg=16 ctermbg=187")


vim.cmd("hi clear CursorColumn")

vim.cmd("hi LineNr gui=none guifg=#87ff00 guibg=#00000 term=none cterm=none ctermfg=118 ctermbg=0")

vim.cmd("hi CursorLine  gui=underline term=underline cterm=underline")

vim.cmd("hi CursorLineNr  gui=bold guifg=#ffff5f term=bold cterm=bold ctermfg=227")

vim.cmd("hi StatusLine	  gui=none guifg=#0000ff guibg=#a8a8a8 term=none cterm=none ctermfg=21 ctermbg=248")


vim.cmd("hi StatusLineNC gui=none guifg=#000000 guibg=#a8a8a8 term=none cterm=none ctermfg=16 ctermbg=248")

vim.cmd("hi VertSplit gui=none guifg=#000000 guibg=#a8a8a8 term=none cterm=none ctermfg=16 ctermbg=248")

vim.cmd("hi SignColumn gui=none guibg=#202020 term=none cterm=none ctermbg=243")


vim.cmd("hi Folded  gui=none guifg=#878787 guibg=#121212 term=none cterm=none	ctermfg=102 ctermbg=233")

vim.cmd("hi FoldColumn gui=none guifg=#878787 guibg=#121212 term=none cterm=none	ctermfg=102 ctermbg=233")

vim.cmd("hi Pmenu  gui=none guifg=#ffffff guibg=#202020 term=none cterm=none ctermfg=231 ctermbg=16")
vim.cmd("hi PmenuSel  gui=none guifg=#ffffff guibg=#585858 term=none cterm=none ctermfg=231 ctermbg=240")
vim.cmd("hi PmenuSbar gui=none guibg=#626262 term=none cterm=none ctermbg=241")

vim.cmd("hi PmenuThumb gui=none guifg=#d0d0d0 term=none cterm=none ctermbg=252")

vim.cmd("hi WildMenu gui=none guifg=#ffff00 guibg=#000000 cterm=none term=none ctermfg=226 ctermbg=16")


vim.cmd("hi MatchParen gui=none guibg=#585858 term=none cterm=none ctermbg=240")

vim.cmd("hi Directory gui=none guifg=#00ffff term=none cterm=none ctermfg=51")

vim.cmd("hi Question  gui=none guifg=#00ff00 term=none cterm=none ctermfg=46 ")

vim.cmd("hi EndOfBuffer gui=none guifg=#767676 term=none cterm=none ctermfg=243")



























