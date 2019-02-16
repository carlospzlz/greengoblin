"==============================================================================
" GREEN GOBLIN COLORSCHEME
"==============================================================================

set background=dark
highlight clear

if exists('syntax_on')
	syntax reset
endif

let g:colors_name = 'greengoblin'

" Vim color groups
" highlight Normal ctermfg=255 ctermbg=0
highlight Error ctermfg=255 ctermbg=9 cterm=bold
highlight ErrorMsg ctermfg=255 ctermbg=9 cterm=bold
highlight LineNr ctermfg=248 ctermbg=NONE
highlight ColorColumn ctermfg=NONE ctermbg=240
highlight Search ctermbg=214
" Pmenu and PmenuSel are used for autocompletion.
" You may see these colors a lot.
highlight Pmenu ctermfg=15 ctermbg=240
highlight PmenuSel ctermfg=0 ctermbg=11 cterm=bold
highlight SpecialKey ctermfg=9
highlight NonText ctermfg=9

" Goblin Colors
let s:skin = 10
let s:vest = 135
let s:pumpkin = 214
let s:eyes = 11
let s:darkGlider = 69
let s:lightGlider = 123
let s:fire = 9
let s:lightFire = 210
let s:smoke = 255

"==============================================================================
" VIM SCRIPT
"==============================================================================
:exe 'highlight vimVar ctermfg=' . s:skin . ' ctermbg=NONE cterm=bold'
:exe 'highlight vimCommand ctermfg=' . s:vest . ' ctermbg=NONE'
:exe 'highlight vimLineComment ctermfg=' . s:darkGlider . ' ctermbg=NONE'
:exe 'highlight vimNumber ctermfg=' . s:eyes. ' ctermbg=NONE'
:exe 'highlight vimString ctermfg=' . s:lightGlider . ' ctermbg=NONE'
:exe 'highlight vimOption ctermfg=' . s:pumpkin . ' ctermbg=NONE'
:exe 'highlight vimOper ctermfg=' . s:smoke . ' ctermbg=NONE'
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
:exe 'highlight confComment ctermfg=' . s:darkGlider . ' ctermbg=NONE'

"==============================================================================
" PYTHON
"==============================================================================
:exe 'highlight pythonFunction ctermfg=' . s:skin . ' ctermbg=NONE cterm=bold'
:exe 'highlight pythonComment ctermfg=' . s:darkGlider . ' ctermbg=NONE'
:exe 'highlight pythonInclude ctermfg=' . s:vest . ' ctermbg=NONE cterm=bold'
:exe 'highlight pythonStatement ctermfg=' . s:vest . ' ctermbg=NONE'
:exe 'highlight pythonString ctermfg=' . s:lightGlider . ' ctermbg=NONE'
:exe 'highlight pythonBuiltin ctermfg=' . s:pumpkin . ' ctermbg=NONE'
:exe 'highlight pythonExceptions ctermfg=' . s:lightFire . ' ctermbg=NONE'
:exe 'highlight pythonNumber ctermfg=' . s:eyes . ' ctermbg=NONE'
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
:exe 'highlight gitcommitSummary  ctermfg=' . s:eyes . ' ctermbg=NONE'
:exe 'highlight gitcommitComment  ctermfg=' . s:darkGlider . ' ctermbg=NONE'
:exe 'highlight gitcommitBranch  ctermfg=' . s:lightGlider . ' ctermbg=NONE cterm=bold'
:exe 'highlight gitcommitSelectedType  ctermfg=' . s:vest . ' ctermbg=NONE'
:exe 'highlight gitcommitSelectedFile  ctermfg=' . s:skin . ' ctermbg=NONE'
:exe 'highlight gitcommitUntrackedFile ctermfg=' . s:fire . ' ctermbg=NONE'
" Vest links
highlight link gitcommitOnBranch gitcommitSelectedType
highlight link gitcommitHeader gitcommitSelectedType

"==============================================================================
" XML
"==============================================================================
:exe 'highlight xmlTag ctermfg=' . s:vest . ' ctermbg=NONE cterm=bold'
:exe 'highlight xmlString ctermfg=' . s:lightGlider . ' ctermbg=NONE'
:exe 'highlight xmlAttrib ctermfg=' . s:pumpkin . ' ctermbg=NONE'
" Vest links
highlight link xmlTagName xmlTag
highlight link xmlEndTag xmlTag
highlight link xmlProcessing xmlTag
highlight link xmlProcessingDelim xmlTag

"==============================================================================
" TAGBAR
"==============================================================================
:exe 'highlight TagbarComment ctermfg=' . s:darkGlider . ' ctermbg=NONE'
:exe 'highlight TagbarScope ctermfg=' . s:skin . ' ctermbg=NONE cterm=bold'
:exe 'highlight TagbarSignature ctermfg=' . s:vest . ' ctermbg=NONE'
:exe 'highlight TagbarKind ctermfg=' . s:vest . ' ctermbg=NONE cterm=bold'
:exe 'highlight TagbarType ctermfg=' s:vest . ' ctermbg=NONE'
:exe 'highlight TagbarVisibilityPublic ctermfg=' s:lightGlider . ' ctermbg=NONE'
:exe 'highlight TagbarVisibilityPrivate ctermfg=' s:fire . ' ctermbg=NONE'
" Vest links
"highlight link TagbarScope TagbarSignature
" Eyes links
highlight link TagbarFoldIcon TabgarKind
highlight link TagbarNestedKind TabgarKind

"==============================================================================
" YAML
"==============================================================================
:exe 'highlight yamlComment ctermfg=' . s:darkGlider . ' ctermbg=NONE'
:exe 'highlight yamlKey ctermfg=' . s:vest . ' ctermbg=NONE'
:exe 'highlight yamlNumber ctermfg=' . s:eyes . ' ctermbg=NONE'

"==============================================================================
" C/C++
"==============================================================================
:exe 'highlight cInclude ctermfg=' . s:vest . ' ctermbg=NONE cterm=bold'
:exe 'highlight cIncluded ctermfg=' . s:lightFire . ' ctermbg=NONE'
:exe 'highlight cType ctermfg=' . s:skin . ' ctermbg=NONE'
:exe 'highlight cppStatement ctermfg=' . s:vest . ' ctermbg=NONE'
:exe 'highlight cNumber ctermfg=' . s:eyes . ' ctermbg=NONE'
:exe 'highlight cppOperator ctermfg=' . s:pumpkin . ' ctermbg=NONE'
:exe 'highlight cCppString ctermfg=' s:lightGlider . ' ctermbg=NONE'
:exe 'highlight cComment ctermfg=' . s:darkGlider . ' ctermbg=NONE'
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
highlight link cString cCppString

"==============================================================================
" GITGUTTER
"==============================================================================
:exe 'highlight DiffAdd ctermfg=' . s:skin . ' ctermbg=NONE'
:exe 'highlight DiffChange ctermfg=' . s:eyes . ' ctermbg=NONE'
:exe 'highlight DiffDelete ctermfg=' . s:fire . ' ctermbg=NONE'
