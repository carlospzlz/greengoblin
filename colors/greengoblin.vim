"==============================================================================
" GREEN GOBLIN COLORSCHEME 2.0 (TRUECOLOR)
"==============================================================================

if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'greengoblin'

set background=dark
highlight clear

"--------------------------
" Vim color groups
"--------------------------

" Normal text
highlight Normal guifg=#93A0A6 guibg=#002b36

" Errors
"highlight Error guifg=#ffffff guibg=#ff0000 gui=bold
"highlight ErrorMsg guifg=#ffffff guibg=#ff0000 gui=bold
"
"" Line numbers
"highlight LineNr guifg=#808080 guibg=NONE
"
"" ColorColumn
"highlight ColorColumn guifg=NONE guibg=#3c3c3c
"
"" Search highlight
"highlight Search guibg=#ffaa00
"
"" Popup menu (autocomplete)
"highlight Pmenu guifg=#ffffff guibg=#3c3c3c
"highlight PmenuSel guifg=#000000 guibg=#00ff00 gui=bold
"
"" Special characters
"highlight SpecialKey guifg=#ff0000
"highlight NonText guifg=#ff0000

"--------------------------
" Goblin colors
"--------------------------

let s:skin        = "#AAEE00"  " green
let s:vest        = "#A04FF7"  " purple
let s:pumpkin     = "#FFAA00"  " orange
let s:eyes        = "#FFFF00"  " yellow
let s:darkGlider  = "#7F7FFF"  " dark blue
let s:lightGlider = "#B3B3FF"  " light blue
let s:fire        = "#FF0000"  " red
let s:lightFire   = "#FFD27D"  " light orange
let s:smoke       = "#EEEEEE"  " gui 255 -> white

"==============================================================================
" VIM SCRIPT
"==============================================================================
:exe 'highlight vimVar guifg=' . s:skin . ' guibg=NONE gui=bold'
:exe 'highlight vimCommand guifg=' . s:vest . ' guibg=NONE'
:exe 'highlight vimLineComment guifg=' . s:darkGlider . ' guibg=NONE'
:exe 'highlight vimNumber guifg=' . s:eyes. ' guibg=NONE'
:exe 'highlight vimString guifg=' . s:lightGlider . ' guibg=NONE'
:exe 'highlight vimOption guifg=' . s:pumpkin . ' guibg=NONE'
:exe 'highlight vimOper guifg=' . s:smoke . ' guibg=NONE'
" Vest links
highlight link vimIsCommand vimCommand
highlight link vimLet vimCommand
highlight link vimMap vimCommand
" Pumpkin links
highlight link vimGroup VimOption
highlight link vimHiGroup VimOption
" Number links
highlight link vimSet vimNumber
highlight link vimSetEqual vimNumber
highlight link vimOption vimNumber
highlight link vimHiNmbr vimNumber

"==============================================================================
" CONFIG FILES
"==============================================================================
:exe 'highlight confComment guifg=' . s:darkGlider . ' guibg=NONE'

"==============================================================================
" PYTHON
"==============================================================================
:exe 'highlight pythonFunction guifg=' . s:skin . ' guibg=NONE gui=bold'
:exe 'highlight pythonComment guifg=' . s:darkGlider . ' guibg=NONE'
:exe 'highlight pythonInclude guifg=' . s:vest . ' guibg=NONE gui=bold'
:exe 'highlight pythonStatement guifg=' . s:vest . ' guibg=NONE'
:exe 'highlight pythonString guifg=' . s:lightGlider . ' guibg=NONE'
:exe 'highlight pythonBuiltin guifg=' . s:pumpkin . ' guibg=NONE'
:exe 'highlight pythonExceptions guifg=' . s:lightFire . ' guibg=NONE'
:exe 'highlight pythonNumber guifg=' . s:eyes . ' guibg=NONE'
" Vest links
highlight link pythonException pythonStatement
highlight link pythonConditional pythonStatement
highlight link pythonRepeat pythonStatement
highlight link pythonOperator pythonStatement
highlight link pythonDecorator pythonInclude
highlight link pythonTripleQuotes pythonString
highlight link pythonQuotes pythonString

"==============================================================================
" GIT
"==============================================================================
:exe 'highlight gitcommitSummary  guifg=' . s:eyes . ' guibg=NONE'
:exe 'highlight gitcommitComment  guifg=' . s:darkGlider . ' guibg=NONE'
:exe 'highlight gitcommitBranch  guifg=' . s:lightGlider . ' guibg=NONE gui=bold'
:exe 'highlight gitcommitSelectedType  guifg=' . s:vest . ' guibg=NONE'
:exe 'highlight gitcommitSelectedFile  guifg=' . s:skin . ' guibg=NONE'
:exe 'highlight gitcommitUntrackedFile guifg=' . s:fire . ' guibg=NONE'
" Vest links
highlight link gitcommitOnBranch gitcommitSelectedType
highlight link gitcommitHeader gitcommitSelectedType

"==============================================================================
" XML
"==============================================================================
:exe 'highlight xmlTag guifg=' . s:vest . ' guibg=NONE gui=bold'
:exe 'highlight xmlString guifg=' . s:lightGlider . ' guibg=NONE'
:exe 'highlight xmlAttrib guifg=' . s:pumpkin . ' guibg=NONE'
" Vest links
highlight link xmlTagName xmlTag
highlight link xmlEndTag xmlTag
highlight link xmlProcessing xmlTag
highlight link xmlProcessingDelim xmlTag

"==============================================================================
" TAGBAR
"==============================================================================
:exe 'highlight TagbarComment guifg=' . s:darkGlider . ' guibg=NONE'
:exe 'highlight TagbarScope guifg=' . s:skin . ' guibg=NONE gui=bold'
:exe 'highlight TagbarSignature guifg=' . s:vest . ' guibg=NONE'
:exe 'highlight TagbarKind guifg=' . s:vest . ' guibg=NONE gui=bold'
:exe 'highlight TagbarType guifg=' s:vest . ' guibg=NONE'
:exe 'highlight TagbarVisibilityPublic guifg=' s:lightGlider . ' guibg=NONE'
:exe 'highlight TagbarVisibilityPrivate guifg=' s:fire . ' guibg=NONE'
" Vest links
"highlight link TagbarScope TagbarSignature
" Eyes links
highlight link TagbarFoldIcon TabgarKind
highlight link TagbarNestedKind TabgarKind

"==============================================================================
" YAML
"==============================================================================
:exe 'highlight yamlComment guifg=' . s:darkGlider . ' guibg=NONE'
:exe 'highlight yamlKey guifg=' . s:vest . ' guibg=NONE'
:exe 'highlight yamlNumber guifg=' . s:eyes . ' guibg=NONE'

"==============================================================================
" C/C++
"==============================================================================
:exe 'highlight cInclude guifg=' . s:vest . ' guibg=NONE gui=bold'
:exe 'highlight cIncluded guifg=' . s:lightFire . ' guibg=NONE'
:exe 'highlight cType guifg=' . s:skin . ' guibg=NONE'
:exe 'highlight cppStatement guifg=' . s:vest . ' guibg=NONE gui=bold'
:exe 'highlight cNumber guifg=' . s:eyes . ' guibg=NONE'
:exe 'highlight cppOperator guifg=' . s:pumpkin . ' guibg=NONE'
:exe 'highlight cppString guifg=' s:lightGlider . ' guibg=NONE'
:exe 'highlight cComment guifg=' . s:darkGlider . ' guibg=NONE'
" links
highlight link cppStructure cInclude
highlight link cUserLabel cInclude
highlight link cStatement cppStatement
highlight link cStorageClass cppStatement
highlight link cStructure cppStatement
highlight link cRepeat cppStatement
highlight link cConditional cppStatement
highlight link cLabel cppStatement
highlight link cppType cType
highlight link cppNumber cNumber
highlight link cFloat cNumber
highlight link cppBoolean cppOperator
highlight link cString cppString
highlight link cppModifier cppStatement

"==============================================================================
" GITGUTTER
"==============================================================================
:exe 'highlight DiffAdd guifg=' . s:skin . ' guibg=NONE'
:exe 'highlight DiffChange guifg=' . s:eyes . ' guibg=NONE'
:exe 'highlight DiffDelete guifg=' . s:fire . ' guibg=NONE'
