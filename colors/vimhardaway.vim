" vim: fdm=marker
"
" Name:         Vim Hardaway
" Author:       Evan Turner <ev@evturn.com>
" Maintainer:   Evan Turner <ev@evturn.com>
" Repository:   https://github.com/evturn/vim-hardaway
" License:      MIT
" Last Updated: Apr 2018
" Note:         Zip it up and zip it out.

let g:colors_name   = "vimhardaway"
let g:airline_theme = "vimhardaway"

set background=dark
highlight clear
if has("syntax_on")
  syntax reset
endif

" Color palette {{{

" Color: black             #000000      0        Black
" Color: grey              #808080      8        LightGrey
" Color: aqua              #00ffff      14       LightCyan
" Color: yellow            #ffff00      11       DarkYellow
" Color: white             #ffffff      15       White
" Color: dodgerblue1       #0087ff      33       Blue
" Color: springgreen2      #00d787      42       LightGreen
" Color: turquoise2        #00d7ff      45       Cyan
" Color: springgreen1      #00ff87      48       LightGreen
" Color: mediumspringgreen #00ffaf      49       Green
" Color: royalblue1        #5f5fff      63       DarkBlue
" Color: steelblue1        #5fd7ff      81       LightBlue
" Color: mediumpurple1     #af87ff      141      DarkCyan
" Color: darkseagreen2     #afffaf      157      DarkGreen
" Color: yellow2           #d7ff00      190      Yellow
" Color: red1              #ff0000      196      Red
" Color: deeppink1         #ff0087      198      LightRed
" Color: orangered1        #ff5f00      202      DarkRed
" Color: grey3             #080808      232      Black
" Color: grey7             #121212      233      Black
" Color: grey11            #1c1c1c      234      DarkGrey
" Color: grey15            #262626      235      DarkGrey
" Color: grey20            #303030      236      DarkGrey
" Color: grey23            #444444      237      DarkGrey
" Color: grey35            #585858      240      Grey
" Color: grey50            #808080      244      LightGrey

" }}}

" Base {{{

highlight Boolean      ctermfg=63              guifg=royalblue1
highlight Character    ctermfg=15              guifg=white
highlight ColorColumn  ctermfg=240 ctermbg=232 guifg=grey35            guibg=grey3
highlight Comment      ctermfg=8               guifg=grey
" Conceal
highlight Conditional  ctermfg=198             guifg=deeppink1
highlight Constant     ctermfg=15              guifg=white
highlight Cursor       ctermfg=49              guifg=mediumspringgreen guibg=steelblue1
highlight CursorIM     ctermfg=49              guifg=mediumspringgreen guibg=steelblue1
highlight CursorColumn ctermbg=233             guibg=grey7             gui=none cterm=none 
highlight CursorLine   ctermbg=233             guibg=grey7             gui=none cterm=none
highlight Debug        ctermfg=4               guifg=navy
highlight Define       ctermfg=198             guifg=deeppink1
highlight Delimiter    ctermfg=14              guifg=aqua
highlight DiffAdd      ctermfg=49  ctermbg=235 guifg=mediumspringgreen guibg=grey15
highlight DiffChange   ctermfg=49  ctermbg=235 guifg=mediumspringgreen guibg=grey15
highlight DiffDelete   ctermfg=198 ctermbg=235 guifg=deeppink1         guibg=grey15 gui=italic cterm=italic 
highlight DiffText     ctermfg=49  ctermbg=235 guifg=mediumspringgreen guibg=grey15 
highlight Directory    ctermfg=81              guifg=steelblue1
highlight Error        ctermfg=202 ctermbg=233 guifg=orangered1        guibg=grey7
highlight ErrorMsg     ctermfg=49  ctermbg=233 guifg=mediumspringgreen guibg=grey7
highlight Exception    ctermfg=196             guifg=red1
highlight Float        ctermfg=141             guifg=mediumpurple1
highlight FoldColumn   ctermfg=240 ctermbg=233 guifg=grey35            guibg=grey7
highlight Folded       ctermfg=240 ctermbg=235 guifg=grey35            guibg=grey15
highlight Function     ctermfg=198             guifg=deeppink1
highlight Identifier   ctermfg=45              guifg=turquoise2
highlight Ignore       ctermfg=244 ctermbg=233 guifg=grey50            guibg=grey7
highlight IncSearch    ctermfg=0   ctermbg=190 guifg=black             guibg=yellow2 gui=italic cterm=italic
highlight Include      ctermfg=49              guifg=mediumspringgreen
highlight Label        ctermfg=198             guifg=deeppink1
highlight LineNr       ctermfg=240             guifg=grey20
highlight Macro        ctermfg=48              guifg=springgreen1
highlight MatchParen               ctermbg=237                         guibg=grey23
highlight ModeMsg      ctermfg=49  ctermbg=233 guifg=mediumspringgreen guibg=grey7
highlight MoreMsg      ctermfg=49  ctermbg=233 guifg=mediumspringgreen guibg=grey7
highlight NonText      ctermfg=235             guifg=grey15
highlight Normal                                                       guibg=grey7
highlight Number       ctermfg=141             guifg=mediumpurple1
highlight Operator     ctermfg=198             guifg=deeppink1
" PMenu
" PMenuSel
" PMenuSbar
" PMenuThumb
highlight PreCondit    ctermfg=33              guifg=dodgerblue1
highlight PreProc      ctermfg=49              guifg=mediumspringgreen 
highlight Question     ctermfg=49              guifg=mediumspringgreen guibg=grey7
highlight Repeat       ctermfg=198             guifg=deeppink1
highlight Search       ctermfg=0   ctermbg=190 guifg=black             guibg=yellow2
" SignColumn
highlight Special      ctermfg=81              guifg=steelblue1
highlight SpecialChar  ctermfg=33              guifg=dodgerblue1
highlight SpecialComment ctermfg=81            guifg=steelblue1
highlight SpecialKey   ctermfg=235             guifg=grey15
" SpellBad
" SpellLocal
" SpellCap
" SpellRare
highlight StatusLine   ctermfg=235             guifg=grey17
highlight StatusLineNC ctermfg=235             guifg=grey10
highlight Statement    ctermfg=198             guifg=deeppink1
highlight StorageClass ctermfg=198             guifg=deeppink1
highlight String       ctermfg=49              guifg=mediumspringgreen
highlight Structure    ctermfg=81              guifg=steelblue1 gui=none
" TabLine
" TabLineFill
" TabLineSel
highlight Tag          ctermfg=198             guifg=deeppink1
" Title
highlight Todo         ctermfg=81  ctermbg=233 guifg=steelblue1        guibg=grey7
highlight VertSplit    ctermfg=240             guifg=grey7             guibg=grey7 cterm=none
" Visual
" VisualNOS
" WarningMsg
" WildMenu
highlight keyword      ctermfg=81              guifg=steelblue1        gui=bold cterm=bold
highlight type         ctermfg=81              guifg=steelblue1
highlight Type         ctermfg=81              guifg=steelblue1
highlight Typedef      ctermfg=81              guifg=steelblue1
highlight typedef      ctermfg=81              guifg=steelblue1
" Underlined

" }}}

" CSS / PostCSS {{{

highlight cssAttr                   ctermfg=14  guifg=aqua
highlight cssClassName              ctermfg=198 guifg=deeppink1
highlight cssClassNameDot           ctermfg=198 guifg=deeppink1
highlight cssColor                  ctermfg=14  guifg=aqua
highlight cssCommonAttr             ctermfg=81  guifg=steelblue1
highlight cssFlexibleBoxAttr        ctermfg=14  guifg=aqua
highlight cssFlexibleBoxProp        ctermfg=81  guifg=steelblue1
highlight cssFontDescriptor         ctermfg=198 guifg=deeppink1
highlight cssFontDescriptorFunction ctermfg=141 guifg=mediumpurple1
highlight cssFunction               ctermfg=198 guifg=deeppink1
highlight cssFunctionComma          ctermfg=14  guifg=aqua
highlight cssFunctionName           ctermfg=198 guifg=deeppink1
highlight cssIdentifier             ctermfg=49  guifg=mediumspringgreen
highlight cssIncludeKeyword         ctermfg=198 guifg=deeppink1
highlight cssKeyFrameSelector       ctermfg=141 guifg=mediumpurple1
highlight cssMediaProp              ctermfg=81  guifg=steelblue1
highlight cssNoise                  ctermfg=14  guifg=aqua
highlight cssPagePseudo             ctermfg=11  guifg=yellow
highlight cssProp                   ctermfg=81  guifg=steelblue1
highlight cssPseudoClass            ctermfg=11  guifg=yellow
highlight cssPseudoClassFn          ctermfg=11  guifg=yellow
highlight cssPseudoClassId          ctermfg=11  guifg=yellow
highlight cssPseudoClassLang        ctermfg=11  guifg=yellow
highlight cssSelectorOp             ctermfg=11  guifg=yellow
highlight cssSelectorOp2            ctermfg=11  guifg=yellow
highlight cssTagName                ctermfg=198 guifg=deeppink1
highlight cssUnitDecorators         ctermfg=14  guifg=aqua
highlight cssValueAngle             ctermfg=14  guifg=aqua
highlight cssValueFrequency         ctermfg=14  guifg=aqua
highlight cssValueInteger           ctermfg=141 guifg=mediumpurple1
highlight cssValueLength            ctermfg=141 guifg=mediumpurple1
highlight cssValueNumber            ctermfg=141 guifg=mediumpurple1 
highlight cssValueTime              ctermfg=14  guifg=aqua
highlight cssVariable               ctermfg=11  guifg=yellow
highlight cssVariableValue          ctermfg=11  guifg=yellow
highlight cssVendor                 ctermfg=198 guifg=deeppink1

" }}}

" Haskell {{{

highlight ConId                     ctermfg=81  guifg=steelblue1
highlight haskellBlock              ctermfg=15  guifg=white
highlight haskellBottom             ctermfg=48  guifg=springgreen1 cterm=underline
highlight haskellBrackets           ctermfg=15  guifg=white
highlight haskellDecl               ctermfg=198 guifg=deeppink1
highlight haskellDeclKeyword        ctermfg=198 guifg=deeppink1
highlight haskellDefault            ctermfg=15  guifg=white
highlight haskellIdentifier         ctermfg=11  guifg=yellow
highlight haskellImport             ctermfg=81  guifg=steelblue1
highlight haskellImportKeywords     ctermfg=198 guifg=deeppink1
highlight haskellKeyword            ctermfg=198 guifg=deeppink1
highlight haskellLet                ctermfg=198 guifg=deeppink1
highlight haskellParens             ctermfg=15  guifg=white
highlight haskellPatternKeyword     ctermfg=48  guifg=springgreen1
highlight haskellPragma             ctermfg=11  guifg=yellow       cterm=italic gui=italic
highlight haskellPreProc            ctermfg=48  guifg=springgreen1 gui=undercurl
highlight haskellStatic             ctermfg=48  guifg=springgreen1 gui=undercurl
highlight haskellType               ctermfg=81  guifg=steelblue1
highlight haskellTypeRoles          ctermfg=48  guifg=springgreen1
highlight haskellWhere              ctermfg=198 guifg=deeppink1
highlight hsCharacter               ctermfg=15  guifg=white        cterm=italic gui=italic
highlight hsComment                 ctermfg=8   guifg=grey
highlight hsConSym                  ctermfg=198 guifg=deeppink1
highlight hsConditional             ctermfg=198 guifg=deeppink1
highlight hsDebug                   ctermfg=48  guifg=springgreen1 cterm=underline
highlight hsDelimiter               ctermfg=15  guifg=white
highlight hsEnumConst               ctermfg=11  guifg=yellow
highlight hsExitCode                ctermfg=81  guifg=steelblue1
highlight hsFloat                   ctermfg=141 guifg=mediumpurple1
highlight hsForeign                 ctermfg=48  guifg=springgreen1
highlight hsImport                  ctermfg=198 guifg=deeppink1
highlight hsImportMod               ctermfg=198 guifg=deeppink1
highlight hsInfix                   ctermfg=198 guifg=deeppink1
highlight hsLineComment             ctermfg=8   guifg=grey
highlight hsLineComment             ctermfg=8   guifg=grey
highlight hsMaybe                   ctermfg=81  guifg=steelblue1
highlight hsModule                  ctermfg=198 guifg=deeppink1
highlight hsNumber                  ctermfg=141 guifg=mediumpurple1
highlight hsOperator                ctermfg=198 guifg=deeppink1
highlight hsOrdering                ctermfg=81  guifg=steelblue1
highlight hsPragma                  ctermfg=11  guifg=yellow       cterm=italic gui=italic
highlight hsSpecialChar             ctermfg=11  guifg=yellow
highlight hsSpecialCharError        ctermfg=202 guifg=orangered1 
highlight hsStatement               ctermfg=81  guifg=steelblue1
highlight hsString                  ctermfg=49  guifg=mediumspringgreen
highlight hsStructure               ctermfg=198 guifg=deeppink1
highlight hsType                    ctermfg=81  guifg=steelblue1
highlight hsTypedef                 ctermfg=198 guifg=deeppink1
highlight hsVarSym                  ctermfg=198 guifg=deeppink1

" }}}

" JavaScript {{{

highlight jsArrowFuncArgs           ctermfg=202 guifg=orangered1
highlight jsArrowFunction           ctermfg=81  guifg=steelblue1
highlight jsAsyncKeyword            ctermfg=81  guifg=steelblue1    cterm=italic gui=italic
highlight jsBlockLabel              ctermfg=81  guifg=steelblue1
highlight jsBlockLabelKey           ctermfg=81  guifg=steelblue1
highlight jsBooleanFalse            ctermfg=63  guifg=royalblue1
highlight jsBooleanTrue             ctermfg=63  guifg=royalblue1
highlight jsBuiltins                ctermfg=81  guifg=steelblue1
highlight jsCharacter               ctermfg=81  guifg=steelblue1
highlight jsClassDefinition         ctermfg=11  guifg=yellow        cterm=italic gui=italic
highlight jsClassFuncName           ctermfg=190 guifg=yellow2       cterm=italic gui=italic
highlight jsClassKeyword            ctermfg=81  guifg=steelblue1
highlight jsClassMethodType         ctermfg=198 guifg=deeppink1
highlight jsClassProperty           ctermfg=190 guifg=yellow2
highlight jsDecorator               ctermfg=198 guifg=deeppink1
highlight jsDecoratorFunction       ctermfg=81  guifg=steelblue1
highlight jsDestructuringAssignment ctermfg=14  guifg=aqua
highlight jsDestructuringBraces     ctermfg=14  guifg=aqua
highlight jsDestructuringNoise      ctermfg=14  guifg=aqua
highlight jsExport                  ctermfg=198 guifg=deeppink1
highlight jsExportDefault           ctermfg=198 guifg=deeppink1
highlight jsExtendsKeyword          ctermfg=81  guifg=steelblue1    cterm=none gui=none
highlight jsFloat                   ctermfg=141 guifg=mediumpurple1
highlight jsForAwait                ctermfg=198 guifg=deeppink1
highlight jsFrom                    ctermfg=198 guifg=deeppink1
highlight jsFuncArgOperator         ctermfg=202 guifg=orangered1
highlight jsFuncArgs                ctermfg=202 guifg=orangered1
highlight jsFuncName                ctermfg=190 guifg=yellow2       cterm=italic gui=italic
highlight jsFuncParens              ctermfg=81  guifg=steelblue1
highlight jsFunction                ctermfg=81  guifg=steelblue1
highlight jsGenerator               ctermfg=81  guifg=steelblue1
highlight jsGlobalNodeObjects       ctermfg=81  guifg=steelblue1
highlight jsGlobalObjects           ctermfg=81  guifg=steelblue1
highlight jsImport                  ctermfg=198 guifg=deeppink1
highlight jsLabel                   ctermfg=198 guifg=deeppink1
highlight jsModuleAs                ctermfg=198 guifg=deeppink1
highlight jsModuleAsterisk          ctermfg=198 guifg=deeppink1
highlight jsNoise                   ctermfg=14  guifg=aqua
highlight jsNull                    ctermfg=81  guifg=steelblue1
highlight jsNumber                  ctermfg=141 guifg=mediumpurple1
highlight jsObjectFuncName          ctermfg=81  guifg=steelblue1    cterm=italic gui=italic
highlight jsObjectKey               ctermfg=14  guifg=aqua
highlight jsObjectKeyComputed       ctermfg=157 guifg=darkseagreen2
highlight jsObjectKeyString         ctermfg=157 guifg=darkseagreen2
highlight jsObjectMethodType        ctermfg=190 guifg=yellow2
highlight jsObjectStringKey         ctermfg=157 guifg=darkseagreen2
highlight jsPrototype               ctermfg=81  guifg=steelblue1    cterm=italic gui=italic
highlight jsSpecial                 ctermfg=33  guifg=dodgerblue1
highlight jsStorageClass            ctermfg=81  guifg=steelblue1
highlight jsString                  ctermfg=49  guifg=mediumspringgreen
highlight jsSuper                   ctermfg=81  guifg=steelblue1    cterm=italic gui=italic
highlight jsSwitchBraces            ctermfg=81  guifg=steelblue1
highlight jsSwitchCase              ctermfg=198 guifg=deeppink1
highlight jsSwitchColon             ctermfg=198 guifg=deeppink1
highlight jsTaggedTemplate          ctermfg=198 guifg=deeppink1
highlight jsTemplateBraces          ctermfg=198 guifg=deeppink1
highlight jsTemplateExpression      ctermfg=198 guifg=deeppink1
highlight jsTernaryIfOperator       ctermfg=198 guifg=deeppink1
highlight jsThis                    ctermfg=81  guifg=steelblue1
highlight jsUndefined               ctermfg=81  guifg=steelblue1

" }}} 

" NERDTree {{{

highlight NERDTreeCWD               ctermfg=49  guifg=mediumspringgreen cterm=italic gui=italic
highlight NERDTREEDir               ctermfg=49  guifg=mediumspringgreen cterm=italic gui=italic
highlight NERDTreeFile              ctermfg=81  guifg=steelblue1 
highlight NERDTreeClosable          ctermfg=11  guifg=yellow
highlight NERDTreeOpenable          ctermfg=81  guifg=steelblue1
highlight NERDTreeDirSlash          ctermfg=81  guifg=steelblue1
highlight NERDTreeHelp              ctermfg=49  guifg=mediumspringgreen
highlight NERDTreeHelpKey           ctermfg=81  guifg=steelblue1
highlight NERDTreeHelpTitle         ctermfg=190 guifg=yellow2 gui=underline,italic

" }}}

" netrw {{{

highlight netrwSpecial  ctermfg=45              guifg=turquoise2
highlight netrwClassify ctermfg=45              guifg=turquoise2
highlight netrwExe      ctermfg=240             guifg=grey35
highlight netrwTreeBar  ctermfg=240 ctermbg=233 guifg=grey35 guibg=grey7
highlight netrwPlain    ctermfg=81              guifg=steelblue1

" }}}

" XML / JSX {{{

highlight xmlTag     ctermfg=198                guifg=deeppink1
highlight xmlTagName ctermfg=198                guifg=deeppink1
highlight xmlEndTag  ctermfg=198                guifg=deeppink1
highlight xmlAttrib  ctermfg=81                 guifg=steelblue1
highlight xmlEqual   ctermfg=198                guifg=deeppink1

" }}}

" SH / Bash {{{

highlight shStatement      ctermfg=81 guifg=steelblue1
highlight bashStatement    ctermfg=81 guifg=steelblue1
highlight shArithmetic     ctermfg=141 guifg=mediumpurple1

highlight shEscape         ctermfg=15 guifg=white
highlight shCtrlSeq        ctermfg=15 guifg=white
highlight shSpecial        ctermfg=15 guifg=white
highlight shCaseCommandSub ctermfg=15 guifg=white
highlight shCommandSub     ctermfg=15 guifg=white
highlight shDerefSimple    ctermfg=15 guifg=white
highlight shDeref          ctermfg=15 guifg=white

highlight shExSingleQuote  ctermfg=49 guifg=mediumspringgreen
highlight shExDoubleQuote  ctermfg=49 guifg=mediumspringgreen

highlight shStatement      ctermfg=198 guifg=deeppink1
highlight shExpr           ctermfg=198 guifg=deeppink1
highlight shHereDoc        ctermfg=198 guifg=deeppink1
highlight shEcho           ctermfg=198 guifg=deeppink1
highlight shEchoQuote      ctermfg=198 guifg=deeppink1

" }}}

