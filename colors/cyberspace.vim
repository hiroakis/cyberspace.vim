" CyberSpace Theme:
"
" https://github.com/hiroakis/cyberspace.vim
"
" Copyright 2022, All rights reserved
"
" Code licensed under the MIT license
"
" @author Hiroaki Sano <hiroaki.sano.9stories@gmail.com>

set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

set t_Co=256
let g:colors_name = "cyberspace"

" Pallette [gui, cterm]
let s:cs = {}

let s:cs.bgnone         = ['bg', 'none']
let s:cs.fgnone         = ['fg', 'none']

" white black
let s:cs.white0         = ['#dbfcff', 159]
let s:cs.black0         = ['#001111', 233]
let s:cs.darkgray0      = ['#262626', 235]

" red
let s:cs.violet0        = ['#caaeeb', 177]
let s:cs.pink0          = ['#ee82ee', 213]
let s:cs.vermilion0     = ['#ff5b7f', 204]
let s:cs.red0           = ['#af0000', 124]

" green
let s:cs.emeraldgreen0  = ['#05f0c1', 48]
let s:cs.lightgreen0    = ['#00ffaa', 49]
" let s:cs.lightgreen0    = ['#90ee90', 49]
let s:cs.green0         = ['#005f00', 22]
let s:cs.limegreen0     = ['#32cd32', 77]
let s:cs.palegreen0     = ['#b0eeb3', 120]

" purple
let s:cs.deeppurple0    = ['#6e4cad', 62]

" blue
let s:cs.blue0          = ['#55b9ff', 74]
let s:cs.deepbluegreen0 = ['#55b9c4', 73]
let s:cs.cyan0          = ['#00ffff', 14]

" yellow
let s:cs.yellow0        = ['#dac70f', 185]

function! s:hi(group, bg, fg, term)
  " Arguments: group, guifg, guibg, gui

  let l:guibg = a:bg[0]
  let l:guifg = a:fg[0]
  let l:ctermbg = a:bg[1]
  let l:ctermfg = a:fg[1]
  "
  let l:histring = ['hi', a:group,
    \ 'cterm=' . a:term,
    \ 'ctermbg=' . a:bg[1],  'ctermfg=' . a:fg[1],
    \ 'guibg=' . a:bg[0],  'guifg=' . a:fg[0],
    \ 'gui=' . a:term,
    \ ]

  " echo join(l:histring, ' ')
  execute join(l:histring, ' ')
endfunction

""" Normal
highlight Normal gui=none guibg=#001111 guifg=#dbfcff

""" Comment
call s:hi('CyberSpaceComment', s:cs.bgnone, s:cs.deeppurple0, 'none')

""" Constant
call s:hi('CyberSpaceConstant', s:cs.bgnone, s:cs.blue0, 'none')

""" Identifier
call s:hi('CyberSpaceIdentifier', s:cs.bgnone, s:cs.deepbluegreen0, 'none')
call s:hi('CyberSpaceFunction', s:cs.bgnone, s:cs.palegreen0, 'none')

""" Statement
call s:hi('CyberSpaceStatement', s:cs.bgnone, s:cs.lightgreen0, 'none')
" call s:hi('CyberSpaceKeyword', s:cs.bgnone, s:cs.palegreen0, 'none')
call s:hi('CyberSpaceKeyword', s:cs.bgnone, s:cs.cyan0, 'none')
call s:hi('CyberSpaceOperator', s:cs.bgnone, s:cs.violet0, 'none')

""" PreProc
call s:hi('CyberSpacePreProc', s:cs.bgnone, s:cs.limegreen0, 'none')
" call s:hi('CyberSpaceType', s:cs.bgnone, s:cs.cyan0, 'none')
call s:hi('CyberSpaceType', s:cs.bgnone, s:cs.palegreen0, 'none')

call s:hi('CyberSpaceSpecial', s:cs.bgnone, s:cs.violet0, 'none')

call s:hi('CyberSpaceUnderlined', s:cs.bgnone, s:cs.pink0, 'none')

call s:hi('CyberSpaceVirtual', s:cs.palegreen0, s:cs.pink0, 'none')

call s:hi('CyberSpaceSpellBad', s:cs.pink0, s:cs.fgnone, 'none')

""" Todo
call s:hi('CyberSpaceTodo', s:cs.pink0, s:cs.black0, 'bold')

""" Status Line
call s:hi('CyberSpaceStatusLine', s:cs.deeppurple0, s:cs.white0, 'none')
call s:hi('CyberSpaceStatusLineNC', s:cs.darkgray0, s:cs.white0, 'none')
call s:hi('CyberSpaceWildMenu', s:cs.black0, s:cs.white0, 'none')

""" Tab
call s:hi('CyberSpaceTabLine', s:cs.blue0, s:cs.black0, 'none')
call s:hi('CyberSpaceTabLineFill', s:cs.blue0, s:cs.black0, 'none')
call s:hi('CyberSpaceTabLineSel', s:cs.black0, s:cs.white0, 'none')

""" Search
call s:hi('CyberSpaceSearch', s:cs.blue0, s:cs.black0, 'none')
call s:hi('CyberSpaceIncSearch', s:cs.blue0, s:cs.black0, 'none')


""" Fold
call s:hi('CyberSpaceFolded', s:cs.darkgray0, s:cs.palegreen0, 'none')

""" Error
call s:hi('CyberSpaceError',   s:cs.pink0, s:cs.black0, 'none')
call s:hi('CyberSpaceWarning', s:cs.pink0, s:cs.black0, 'none')

""" LSP
call s:hi('CyberSpaceLspErrorText', s:cs.red0, s:cs.white0, 'none')
call s:hi('CyberSpaceLspWarningText', s:cs.yellow0, s:cs.black0, 'none')
call s:hi('CyberSpaceLspInfoText', s:cs.yellow0, s:cs.black0, 'none')

""" Other
call s:hi('CyberSpaceFullSpace', s:cs.palegreen0, s:cs.white0, 'none')
call s:hi('CyberSpaceVertSplit', s:cs.deepbluegreen0, s:cs.black0, 'none')
call s:hi('CyberSpaceNonText', s:cs.bgnone, s:cs.black0, 'none')
call s:hi('CyberSpaceIgnore', s:cs.bgnone, s:cs.fgnone, 'none')
call s:hi('CyberSpaceModeMsg', s:cs.bgnone, s:cs.fgnone, 'none')
call s:hi('CyberSpaceSpecialKey', s:cs.bgnone, s:cs.darkgray0, 'none')

""" Pmenu
call s:hi('CyberSpacePmenu', s:cs.lightgreen0, s:cs.black0, 'none')
call s:hi('CyberSpacePmenuSel', s:cs.black0, s:cs.cyan0, 'none')

""" Cursor
call s:hi('CyberSpaceCursor', s:cs.lightgreen0, s:cs.black0, 'none')
call s:hi('CyberSpaceCursorLineNr', s:cs.bgnone, s:cs.yellow0, 'none')
call s:hi('CyberSpaceLineNr', s:cs.bgnone, s:cs.deeppurple0, 'none')
call s:hi('CyberSpaceCursorLine', s:cs.darkgray0, s:cs.fgnone, 'none')
call s:hi('CyberSpaceCursorColumn', s:cs.darkgray0, s:cs.fgnone, 'none')

""" Diff
call s:hi('CyberSpaceDiffAdd', s:cs.bgnone, s:cs.lightgreen0, 'none')
call s:hi('CyberSpaceDiffChange', s:cs.bgnone, s:cs.yellow0, 'none')
call s:hi('CyberSpaceDiffDelete', s:cs.bgnone, s:cs.vermilion0, 'none')
call s:hi('CyberSpaceDiffText', s:cs.bgnone, s:cs.fgnone, 'none')
call s:hi('CyberSpaceDiffFile', s:cs.bgnone, s:cs.lightgreen0, 'none')
call s:hi('CyberSpaceDiffNewFile', s:cs.bgnone, s:cs.pink0, 'none')
call s:hi('CyberSpaceDiffLine', s:cs.bgnone, s:cs.deeppurple0, 'none')

" ==============================================================

""" Comment
hi! link Comment CyberSpaceComment

""" Constant
hi! link Constant  CyberSpaceConstant
hi! link String    Constant
hi! link Character Constant
hi! link Number    Constant
hi! link Boolean   Constant
hi! link Float     Constant

""" Identifier
hi! link Identifier  CyberSpaceIdentifier " vim variables
hi! link Function    CyberSpaceFunction

""" Statement class, func, def, for, xxxx any statement, try, raise
hi! link Statement   CyberSpaceStatement
hi! link Conditional Statement
hi! link Repeat      Statement
hi! link Label       Statement
hi! link Keyword   CyberSpaceKeyword
hi! link Exception Keyword
hi! link Operator  CyberSpaceOperator

""" Preproc Python from,import
hi! link PreProc CyberSpacePreProc
hi! link Include PreProc
hi! link Define  PreProc
hi! link Macro   PreProc

""" Type
" string toka...
hi! link Type        CyberSpaceType
hi! link Struct      Type
hi! link StrongClass Type
hi! link Typedef     Type

""" Special
hi! link Special        CyberSpaceSpecial
hi! link SpecialChar    Special
hi! link Tag            Special
hi! link Delimiter      Special
hi! link SpecialComment Special
hi! link Debug          Special

""" Underlined
hi! link Underlined CyberSpaceUnderlined

""" Virtual
hi! link Virtual   CyberSpaceVirtual
hi! link VisualNOS Visual

""" SpellBad
hi! link SpellBad   CyberSpaceSpellBad
hi! link SpellCap   SpellBad
hi! link SpellLocal SpellBad
hi! link SpellRare  SpellBad

""" Status
hi! link StatusLine   CyberSpaceStatusLine
hi! link StatusLineNC CyberSpaceStatusLineNC
hi! link WildMenu     CyberSpaceWildMenu

""" Tab
hi! link TabLine     CyberSpaceTabLine
hi! link TabLineFill CyberSpaceTabLineFill
hi! link TabLineSel  CyberSpaceTabLineSel

""" Search
hi! link Search     CyberSpaceSearch
hi! link IncSearch  CyberSpaceIncSearch
highlight QuickFixLine cterm=bold ctermfg=none ctermbg=none gui=none guifg=NONE guibg=NONE

""" Folded
hi! link Folded       CyberSpaceFolded
hi! link FoldedColumn Folded
hi! link SignColumn   Folded

""" Todo
hi! link Todo CyberSpaceTodo
call matchadd('Todo', '\(TODO\|NOTE\|INFO\|XXX\|TEMP\)')

""" Error
hi! link Error      CyberSpaceError
hi! link ErrorMsg   Error
hi! link Warning    CyberSpaceWarning
hi! link WarningMsg Warning

""" Other
hi! link FullSpace      CyberSpaceFullSpace
hi! link VertSplit      CyberSpaceVertSplit
hi! link NonText        CyberSpaceNonText
hi! link Ignore         CyberSpaceIgnore
hi! link ModeMsg        CyberSpaceModeMsg
hi! link SpecialKey     CyberSpaceSpecialKey
hi! link vimCmplxRepeat Normal

""" Cursor
hi! clear CursorLine
hi! link Cursor       CyberSpaceCursor
hi! link CursorLineNr CyberSpaceCursorLineNr
hi! link LineNr       CyberSpaceLineNr

""" Pmenu
hi! link Pmenu    CyberSpacePmenu
hi! link PmenuSel CyberSpacePmenuSel

""" Diff
hi! link DiffAdd     CyberSpaceDiffAdd
hi! link DiffChange  CyberSpaceDiffChange
hi! link DiffDelete  CyberSpaceDiffDelete
hi! link DiffRemoved DiffDelete
hi! link DiffText    CyberSpaceDiffText
hi! link DiffFile    CyberSpaceDiffFile
hi! link DiffNewFile CyberSpaceDiffNewFile
hi! link DiffLine    CyberSpaceDiffLine
hi! link DiffAdded   DiffAdd

""" Lsp
hi! link LspErrorText CyberSpaceLspErrorText
hi! link LspWarningText CyberSpaceLspWarningText


""" ====================================================================

call s:hi('CyberSpaceFgCyan', s:cs.bgnone, s:cs.cyan0, 'none')
call s:hi('CyberSpaceFgLightGreen', s:cs.bgnone, s:cs.lightgreen0, 'none')
call s:hi('CyberSpaceFgLimeGreen', s:cs.bgnone, s:cs.limegreen0, 'none')
call s:hi('CyberSpaceFgEmeraldGreen', s:cs.bgnone, s:cs.emeraldgreen0, 'none')
call s:hi('CyberSpaceFgDeepBlueGreen', s:cs.bgnone, s:cs.deepbluegreen0, 'none')
call s:hi('CyberSpaceFgPaleGreen', s:cs.bgnone, s:cs.palegreen0, 'none')
call s:hi('CyberSpaceFgVermilion', s:cs.bgnone, s:cs.vermilion0, 'none')
call s:hi('CyberSpaceFgPink', s:cs.bgnone, s:cs.pink0, 'none')


""" Go {{{

" package import
hi! link goDirective   CyberSpacePreProc
" struct interface
hi! link goDeclType    CyberSpacePreProc
" var const type func
hi! link goDeclaration CyberSpaceKeyword
" defer go goto return break continue
hi! link goStatement   CyberSpaceStatement
" chan map bool string error
hi! link goType        CyberSpaceType
" bytes.Buffer io.Reader
hi! link goExtraType   CyberSpaceType
" append cap close copy len make...
hi! link goBuiltins    CyberSpaceKeyword
" iota true false nil
hi! link goConstants   CyberSpaceFgPink

augroup go-highlight
  autocmd!
  autocmd FileType go :hi link goOperator CyberSpaceOperator
  autocmd FileType go :call matchadd('goOperator', '\(!\|=\|:=\)')
augroup END

""" Go }}
