" -------------------------------------------------------------------
"  Name:        abyss.vim
"  Description: dark colorscheme for NeoVim
" -------------------------------------------------------------------

set termguicolors
set background=light
syntax enable " Switch on syntax highlighting
"augroup toggle_cursorline_color
"  autocmd!
"  " Set CursorLine highlighting.
"  autocmd InsertEnter * set cursorline
"  " Reset CursorLine highlighting to the defaults.
"  autocmd InsertLeave * set nocursorline
"augroup END

" Hilighting double-byte space
scriptencoding utf-8
augroup doublebyte_space
  autocmd!
  autocmd VimEnter,WinEnter * match DoubleByteSpace /　/
augroup END

" -------------------------------------------------------------------

function! s:hi(name, fg, bg, attr) abort
  let l:attr = type(a:attr) != type(0) ? ('gui=' . a:attr) : ''
  let l:fg   = type(a:fg) != type(0) ? ('guifg=' . a:fg) : ''
  let l:bg   = type(a:bg) != type(0) ? ('guibg=' . a:bg) : ''

  execute 'highlight' a:name l:attr l:fg l:bg
endfunction

let s:fg  = '#DDDDDD'
let s:bg  = '#000000'

let s:red = '#C40000' " 160

let s:lightgreen = '#00FFFF' " 51
let s:green      = '#00FF00' " 46

let s:lightblue = '#5FAFFF' " 75
let s:blue      = '#0000C8' " 21
let s:darkblue  = '#00014E' " 17

let s:cyan     = '#00AFFF' " 39
let s:darkcyan = '#005FFF' " 27

let s:lightpurple = '#5F87FF' " 69
let s:purple      = '#875FFF' " 99

let s:gray       = '#808080' " 245
let s:lightgray  = '#4C4C4C' " 240
let s:darkgray   = '#303030' " 236

call s:hi('Comment',                 s:gray,        0,          0)
call s:hi('Boolean',                 s:darkcyan,    0,          0)
call s:hi('LineNr',                  s:darkcyan,    0,          0)
call s:hi('Constant',                s:cyan,        0,          0)
call s:hi('Statement',               s:lightblue,   0,          'bold')
call s:hi('PreProc',                 s:lightpurple, 0,          0)
call s:hi('Include',                 s:lightpurple, 0,          0)
call s:hi('Type',                    s:lightblue,   0,          0)
call s:hi('Cursor',                  0,             s:darkblue, 0)
call s:hi('CursorLine',              0,             s:darkblue, 0)
call s:hi('CursorLineNr',            'NONE',        s:bg,       'bold')
call s:hi('CursorColumn',            0,             s:bg,       0)
call s:hi('DiffAdd',                 s:green,       'NONE',     0)
call s:hi('DiffChange',              s:fg,          'NONE',     0)
call s:hi('DiffDelete',              s:bg,          s:bg,       0)
call s:hi('DiffText',                s:red,         'NONE',     0)
call s:hi('DiffNewFile',             s:lightblue,   'NONE',     0)
call s:hi('DiffFile',                s:lightblue,   'NONE',     0)
call s:hi('diffAdded',               s:green,       'NONE',     0)
call s:hi('diffChanged',             s:fg,          'NONE',     0)
call s:hi('diffRemoved',             s:red,         'NONE',     0)
call s:hi('FoldColumn',              s:darkcyan,    0,          0)
call s:hi('Folded',                  s:darkcyan,    s:darkgray, 0)
call s:hi('Directory',               s:darkcyan,    0,          0)
call s:hi('ErrorMsg',                s:red,         'NONE',     0)
call s:hi('Function',                s:darkcyan,    0,          0)
call s:hi('Identifier',              s:lightgreen,  0,          0)
call s:hi('IncSearch',               s:darkcyan,    0,          0)
call s:hi('ModeMsg',                 s:darkcyan,    0,          0)
call s:hi('MoreMsg',                 s:darkcyan,    0,          0)
call s:hi('NonText',                 s:gray,        'NONE',     0)
call s:hi('Normal',                  s:fg,          0,          0)
call s:hi('Operator',                s:gray,        'NONE',     0)
call s:hi('Pmenu',                   s:fg,          'NONE',     0)
call s:hi('PmenuSel',                s:fg,          s:darkblue, 0)
call s:hi('PmenuSbar',               s:fg,          s:blue,     0)
call s:hi('Question',                s:darkcyan,    0,          0)
call s:hi('Search',                  s:fg,          s:darkcyan, 0)
call s:hi('SignColumn',              s:fg,          'NONE',     0)
call s:hi('Special',                 s:fg,          'NONE',     0)
call s:hi('SpecialKey',              s:gray,        'NONE',     0)
call s:hi('SpellBad',                s:red,         'NONE',     0)
call s:hi('StatusLine',              s:bg,          s:gray,     0)
call s:hi('StatusLineNC',            s:bg,          s:gray,     0)
call s:hi('String',                  s:cyan,        0,          0)
call s:hi('TabLine',                 s:fg,          s:gray,     0)
call s:hi('TabLineFill',             s:gray,        'NONE',     'underline')
call s:hi('TabLineSel',              s:fg,          s:darkblue, 0)
call s:hi('Title',                   s:darkcyan,    0,          0)
call s:hi('Todo',                    s:red,         'NONE',     0)
call s:hi('VertSplit',               s:fg,          'NONE',     0)
call s:hi('Visual',                  s:fg,          s:darkcyan, 0)
call s:hi('WarningMsg',              s:bg,          s:gray,     0)
call s:hi('WildMenu',                s:fg,          s:bg,       'bold')
call s:hi('EndOfBuffer',             s:bg,          'NONE',     0)
call s:hi('DoubleByteSpace',         s:darkcyan,    0,          'reverse')
call s:hi('rubyBlock',               s:red,         'NONE',     0)
call s:hi('zshVariableDef',          s:cyan,        'NONE',     0)
call s:hi('zshFunction',             s:cyan,        'NONE',     0)
call s:hi('MatchParen',              s:fg,          s:blue,     0)
call s:hi('WinSeparator',            s:darkcyan,    'NONE',     0)
call s:hi('FloatBorder',             s:darkcyan,    'NONE',     0)
call s:hi('PmenuThumb',              s:fg,          s:darkcyan, 0)
call s:hi('ColorColumn',             s:fg,          s:darkgray, 0)
call s:hi('Conceal',                 s:darkcyan,    s:darkblue, 0)

" Cmp menu
call s:hi('CmpItemAbbrDeprecated',   s:darkgray,    'NONE',     'strikethrough')
call s:hi('CmpItemAbbrMatch',        s:cyan,        'NONE',     0)
call s:hi('CmpItemAbbrMatchFuzzy',   s:cyan,        'NONE',     0)
call s:hi('CmpItemKindVariable',     s:lightgreen,  'NONE',     0)
call s:hi('CmpItemKindInterface',    s:cyan,        'NONE',     0)
call s:hi('CmpItemKindText',         s:lightgreen,  'NONE',     0)
call s:hi('CmpItemKindFunction',     s:lightpurple, 'NONE',     0)
call s:hi('CmpItemKindMethod',       s:lightpurple, 'NONE',     0)
call s:hi('CmpItemKindKeyword',      s:green,       'NONE',     0)
call s:hi('CmpItemKindProperty',     s:green,       'NONE',     0)
call s:hi('CmpItemKindUnit',         s:green,       'NONE',     0)
call s:hi('CmpItemMenu',             s:fg,          'NONE',     'italic')
call s:hi('CmpItemKindField',        s:lightgreen,  'NONE',     0)
call s:hi('CmpItemKindEvent',        s:purple,      'NONE',     0)
call s:hi('CmpItemKindEnum',         s:lightblue,   'NONE',     0)
call s:hi('CmpItemKindConstant',     s:lightgreen,  'NONE',     0)
call s:hi('CmpItemKindConstructor',  s:lightpurple, 'NONE',     0)
call s:hi('CmpItemKindReference',    s:lightgreen,  'NONE',     0)
call s:hi('CmpItemKindStruct',       s:cyan,        'NONE',     0)
call s:hi('CmpItemKindClass',        s:cyan,        'NONE',     0)
call s:hi('CmpItemKindModule',       s:lightpurple, 'NONE',     0)
call s:hi('CmpItemKindOperator',     s:lightpurple, 'NONE',     0)
call s:hi('CmpItemKindFile',         s:fg,          'NONE',     0)
call s:hi('CmpItemKindSnippet',      s:red,         'NONE',     0)
call s:hi('CmpItemKindFolder',       s:blue,        'NONE',     0)
call s:hi('CmpItemKindValue',        s:lightgreen,  'NONE',     0)
call s:hi('CmpItemKindEnumMember',   s:purple,      'NONE',     0)
call s:hi('CmpItemKindColor',        s:red,         'NONE',     0)
call s:hi('CmpItemKindTypeParameter',s:lightgreen,  'NONE',     0)

" Treesitter
hi link @constructor Function
call s:hi('@property',               s:lightblue,   'NONE',     0)
call s:hi('@field',                  s:lightblue,   'NONE',     0)
call s:hi('@type.builtin',           s:lightblue,   'NONE',     0)
call s:hi('@attribute.builtin',      s:lightblue,   'NONE',     0)
call s:hi('@function.builtin',       s:lightblue,   'NONE',     0)
call s:hi('@type.qualifier',         s:cyan,        'NONE',     0)
call s:hi('@namespace',              s:cyan,        'NONE',     0)
call s:hi('@variable.builtin',       s:purple,      'NONE',     0)
call s:hi('@variable.parameter',     s:lightpurple, 'NONE',     0)
call s:hi('@variable.member',        s:lightpurple, 'NONE',     0)

" EasyMotion
call s:hi('EasyMotionIncSearch',     s:lightblue,   'NONE',     'bold')
call s:hi('EasyMotionMoveHL',        s:fg,          s:darkcyan, 'bold')
call s:hi('EasyMotionIncCursor',     s:fg,          s:darkcyan,  0)
call s:hi('EasyMotionTarget',        s:purple,      'NONE',     'bold')
call s:hi('EasyMotionTarget2First',  s:purple,      'NONE',     'bold')
call s:hi('EasyMotionTarget2Second', s:darkcyan,    'NONE',     'bold')

" Csv
call s:hi('CSVColumnEven',           s:cyan,        'NONE',     0)
call s:hi('CSVColumnOdd',            s:lightpurple, 'NONE',     0)
call s:hi('CSVColumnHeaderOdd',      s:lightgreen,  s:darkblue, 'bold')
hi link CSVColumnHeaderEven CSVColumnHeaderOdd

" Plugin
call s:hi('TelescopeBorder',         s:darkcyan,    'NONE',     0)
call s:hi('ShotFGraph',              s:darkcyan,    'NONE',     'bold')
call s:hi('ShotFBlank',              'NONE',        s:blue,     'NONE')
call s:hi('deniteMatched',           s:darkcyan,    'NONE',     'NONE')
call s:hi('agitDiffAdd',             s:green,       'NONE',     0)
call s:hi('agitDiffRemove',          s:red,         'NONE',     0)
call s:hi('agitStatAdded',           s:green,       'NONE',     0)
call s:hi('agitStatRemoved',         s:red,         'NONE',     0)
call s:hi('agitStatMessage',         s:lightblue,   'NONE',     'bold')
call s:hi('agitStatFile',            s:fg,          'NONE',     0)
call s:hi('agitDiffHeader',          s:lightblue,   'NONE',     'bold')
call s:hi('agitDiffIndex',           s:lightblue,   'NONE',     'bold')
call s:hi('agitDiffFileName',        s:fg,          'NONE',     0)
call s:hi('agitTree',                s:lightblue,   'NONE',     'bold')
call s:hi('agitDate',                s:gray,        'NONE',     0)
call s:hi('agitAuthor',              s:purple,      'NONE',     0)
call s:hi('Flashy',                  s:bg,          s:darkcyan, 0)
